.class final Landroid/webkit/WebViewInputDispatcher;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewInputDispatcher$1;,
        Landroid/webkit/WebViewInputDispatcher$TouchStream;,
        Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;,
        Landroid/webkit/WebViewInputDispatcher$DispatchEvent;,
        Landroid/webkit/WebViewInputDispatcher$WebKitHandler;,
        Landroid/webkit/WebViewInputDispatcher$UiHandler;,
        Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;,
        Landroid/webkit/WebViewInputDispatcher$UiCallbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field private static final ENABLE_EVENT_BATCHING:Z = true

.field public static ENABLE_TOUCH_PERFORMANCE_PATCH:Z = false

.field public static final EVENT_TYPE_CLICK:I = 0x4

.field public static final EVENT_TYPE_DOUBLE_TAP:I = 0x5

.field public static final EVENT_TYPE_HIT_TEST:I = 0x6

.field public static final EVENT_TYPE_HOVER:I = 0x1

.field public static final EVENT_TYPE_LONG_PRESS:I = 0x3

.field public static final EVENT_TYPE_SCROLL:I = 0x2

.field public static final EVENT_TYPE_TOUCH:I = 0x0

.field public static final FLAG_PRIVATE:I = 0x1

.field public static final FLAG_WEBKIT_IN_PROGRESS:I = 0x2

.field public static final FLAG_WEBKIT_TIMEOUT:I = 0x4

.field public static final FLAG_WEBKIT_TRANSFORMED_EVENT:I = 0x8

.field private static final HITTEST_TIMEOUT:I = 0x20

#the value of this static final field might be set in the static constructor
.field private static final LONG_PRESS_TIMEOUT:I = 0x0

.field private static final MAX_DISPATCH_EVENT_POOL_SIZE:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final PRESSED_STATE_DURATION:I = 0x0

.field static final PREVENT_DEFAULT_MAYBE_YES:I = 0x0

.field static final PREVENT_DEFAULT_NO:I = 0x2

.field static final PREVENT_DEFAULT_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WebViewInputDispatcher"

#the value of this static final field might be set in the static constructor
.field private static final TAP_TIMEOUT:I = 0x0

.field private static final WEBKIT_TIMEOUT_MILLIS:J = 0xc8L


# instance fields
.field private mButtonActionMouse:Z

.field private mClickOnSelectHandleCenter:Z

.field private mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

.field private mDispatchEventPoolSize:I

.field private mDoubleTapSlopSquared:F

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mIsDoubleTapCandidate:Z

.field private mIsTapCandidate:Z

.field private mLastDispatchEvent:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

.field private final mLock:Ljava/lang/Object;

.field private mPostClickScheduled:Z

.field private mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

.field private mPostHideTapHighlightScheduled:Z

.field mPostHitTestScheduled:Z

.field private mPostLastWebKitScale:F

.field private mPostLastWebKitXOffset:I

.field private mPostLastWebKitYOffset:I

.field private mPostLongPressScheduled:Z

.field private mPostSendTouchEventsToWebKit:Z

.field private mPostShowTapHighlightScheduled:Z

.field private final mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field mPreventDefault:I

.field private mPreventDefaultYes:Z

.field private mTouchInput:Z

.field private mTouchSlopSquared:F

.field private mUIShouldSkipEvent:Z

.field private final mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

.field private final mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

.field private mUiDispatchScheduled:Z

.field private final mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

.field private final mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field private final mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

.field private final mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

.field private mWebKitDispatchScheduled:Z

.field private final mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

.field private mWebKitTimeoutScheduled:Z

.field private mWebKitTimeoutTime:J

.field private final mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

.field private mWebkitShouldSkipEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    const-class v0, Landroid/webkit/WebViewInputDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    .line 80
    sput-boolean v1, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    .line 148
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    .line 149
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    add-int/2addr v0, v2

    sput v0, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    .line 151
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    .line 152
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    .line 248
    sput-boolean v1, Landroid/webkit/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V
    .locals 4
    .parameter "uiCallbacks"
    .parameter "webKitCallbacks"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 108
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    .line 118
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v3}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    .line 119
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 127
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v3}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    .line 128
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkit/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    .line 136
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    .line 252
    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefault:I

    .line 626
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    .line 893
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchInput:Z

    .line 894
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    .line 255
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    .line 256
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-interface {p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getUiLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    .line 258
    iput-object p2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    .line 259
    new-instance v1, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-interface {p2}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->getWebKitLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;-><init>(Landroid/webkit/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    .line 261
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 264
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 266
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 267
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 270
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 271
    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postLongPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewInputDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->postClick()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->postShowTapHighlight(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewInputDispatcher;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->handleHitTestMsg(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/WebViewInputDispatcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method private batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .parameter "in"
    .parameter "tail"

    .prologue
    .line 1223
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iget v1, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1229
    iget-object v0, p2, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 580
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 581
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v2, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v2}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->canZoomOutOrZoomIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 591
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 592
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 593
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 594
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    goto :goto_0
.end method

.method private checkForSlopLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 659
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v2, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 663
    .local v0, deltaX:I
    iget v2, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 664
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchSlopSquared:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 665
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 666
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 667
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_0
.end method

.method private copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3
    .parameter "d"

    .prologue
    .line 1251
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1252
    .local v0, copy:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1253
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1255
    :cond_0
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1256
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1257
    iget-wide v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1258
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1259
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1260
    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1261
    iget-object v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1262
    return-object v0
.end method

.method private dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 3
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 1072
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1073
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchUiEvent: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 1077
    return-void
.end method

.method private dispatchUiEvents(Z)V
    .locals 9
    .parameter "calledFromHandler"

    .prologue
    const/4 v8, 0x1

    .line 1009
    sget-boolean v4, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1010
    const-string v4, "WebViewInputDispatcher"

    const-string v5, "dispatchUiEvents Enter "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1017
    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v4}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1018
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_3

    .line 1019
    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-eqz v4, :cond_1

    .line 1020
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 1021
    if-nez p1, :cond_1

    .line 1022
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 1025
    :cond_1
    sget-boolean v4, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1026
    const-string v4, "WebViewInputDispatcher"

    const-string v6, "dispatchUiEvents Finish "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_2
    monitor-exit v5

    return-void

    .line 1031
    :cond_3
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1032
    .local v1, event:Landroid/view/MotionEvent;
    if-eqz v1, :cond_4

    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    .line 1033
    const/high16 v4, 0x3f80

    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    div-float/2addr v4, v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->scale(F)V

    .line 1034
    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1035
    iget v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1038
    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 1039
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchInput:Z

    .line 1042
    :cond_5
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1043
    .local v2, eventType:I
    if-nez v2, :cond_6

    .line 1044
    iget-object v4, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1045
    sget-boolean v4, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    iget-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_6

    .line 1046
    const-string v4, "WebViewInputDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchUiEvents: dropped event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_6
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1052
    .local v3, flags:I
    iget-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-ne v1, v4, :cond_7

    .line 1053
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1055
    :cond_7
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1057
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 1058
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 1060
    :cond_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    if-eqz v1, :cond_0

    .line 1064
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 1065
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 1060
    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v1           #event:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    .end local v3           #flags:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z
    .locals 4
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 910
    sget-boolean v1, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 911
    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWebKitEvent: event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->dispatchWebKitEvent(Landroid/webkit/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    .line 916
    .local v0, preventDefault:Z
    sget-boolean v1, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 917
    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWebKitEvent: preventDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_1
    return v0
.end method

.method private dispatchWebKitEvents(Z)V
    .locals 10
    .parameter "calledFromHandler"

    .prologue
    .line 741
    sget-boolean v6, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 742
    const-string v6, "WebViewInputDispatcher"

    const-string v7, "dispatchWebKitEvents Enter "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 755
    :try_start_0
    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v6, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 756
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_3

    .line 757
    iget-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-eqz v6, :cond_1

    .line 758
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 759
    if-nez p1, :cond_1

    .line 760
    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->removeMessages(I)V

    .line 764
    :cond_1
    sget-boolean v6, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 765
    const-string v6, "WebViewInputDispatcher"

    const-string v8, "dispatchWebKitEvents Finish "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2
    monitor-exit v7

    return-void

    .line 770
    :cond_3
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 771
    .local v1, event:Landroid/view/MotionEvent;
    if-eqz v1, :cond_4

    .line 772
    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    int-to-float v6, v6

    iget v8, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    int-to-float v8, v8

    invoke-virtual {v1, v6, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 773
    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->scale(F)V

    .line 774
    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 777
    :cond_4
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 778
    .local v2, eventType:I
    if-nez v2, :cond_5

    .line 779
    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v6, v1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 780
    sget-boolean v6, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    iget-object v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_5

    .line 781
    const-string v6, "WebViewInputDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchWebKitEvents: dropped event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_5
    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 786
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 787
    .local v3, flags:I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 791
    if-nez v1, :cond_c

    .line 792
    const/4 v4, 0x0

    .line 818
    .local v4, preventDefault:Z
    :cond_6
    :goto_1
    iget-object v7, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 819
    :try_start_1
    iget v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 820
    and-int/lit8 v6, v3, -0x3

    iput v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 821
    iget-object v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eq v1, v6, :cond_10

    const/4 v5, 0x1

    .line 823
    .local v5, recycleEvent:Z
    :goto_2
    if-eqz v0, :cond_7

    iget-object v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_7

    iget-object v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_7

    .line 824
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchInput:Z

    .line 827
    :cond_7
    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_11

    .line 829
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 860
    :cond_8
    :goto_3
    sget-boolean v6, Landroid/webkit/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v6, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_9

    iget-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefaultYes:Z

    if-nez v6, :cond_9

    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v6, :cond_9

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefault:I

    if-nez v6, :cond_9

    .line 864
    if-eqz v4, :cond_15

    .line 866
    const/4 v6, 0x1

    iput v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefault:I

    .line 879
    :goto_4
    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    .line 882
    :cond_9
    if-eqz v1, :cond_a

    if-eqz v5, :cond_a

    .line 883
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 886
    :cond_a
    const/4 v6, 0x4

    if-ne v2, v6, :cond_b

    .line 887
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 889
    :cond_b
    monitor-exit v7

    goto/16 :goto_0

    .end local v5           #recycleEvent:Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 787
    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .end local v1           #event:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    .end local v3           #flags:I
    .end local v4           #preventDefault:Z
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 795
    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .restart local v1       #event:Landroid/view/MotionEvent;
    .restart local v2       #eventType:I
    .restart local v3       #flags:I
    :cond_c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_e

    .line 796
    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefaultYes:Z

    .line 798
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_e

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    .line 800
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mButtonActionMouse:Z

    .line 805
    :cond_e
    iget-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefaultYes:Z

    if-eqz v6, :cond_f

    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_f

    .line 806
    const/4 v4, 0x1

    .line 807
    .restart local v4       #preventDefault:Z
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefaultYes:Z

    .line 808
    sget-boolean v6, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 809
    const-string v6, "WebViewInputDispatcher"

    const-string v7, "dispatchWebKitEvent:[EVENT_TYPE_CLICK] skip sending event to engine as preventDefault = true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 813
    .end local v4           #preventDefault:Z
    :cond_f
    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z

    move-result v4

    .restart local v4       #preventDefault:Z
    goto/16 :goto_1

    .line 821
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 832
    .restart local v5       #recycleEvent:Z
    :cond_11
    :try_start_3
    sget-boolean v6, Landroid/webkit/WebViewInputDispatcher;->$assertionsDisabled:Z

    if-nez v6, :cond_12

    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v6, v6, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eq v6, v0, :cond_12

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 833
    :cond_12
    iget-object v6, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v6}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 835
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 837
    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_13

    .line 839
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto/16 :goto_3

    .line 840
    :cond_13
    if-eqz v4, :cond_14

    .line 842
    iget v6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v6, :cond_8

    .line 843
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiCancelTouchEventIfNeededLocked()V

    .line 844
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 846
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_8

    .line 847
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefaultYes:Z

    .line 848
    sget-boolean v6, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 849
    const-string v6, "WebViewInputDispatcher"

    const-string v8, "dispatchWebKitEvents: set mPreventDefaultYes to true!"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 856
    :cond_14
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto/16 :goto_3

    .line 870
    :cond_15
    const/4 v6, 0x2

    iput v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefault:I

    .line 871
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 872
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    .line 877
    const-string v6, "WebViewInputDispatcher"

    const-string v8, "DoNotSend"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private drainStaleWebKitEventsLocked()V
    .locals 3

    .prologue
    .line 928
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 931
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v2}, Landroid/webkit/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 933
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 934
    move-object v0, v1

    .line 935
    goto :goto_0

    .line 936
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iput-object v0, v2, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 937
    return-void
.end method

.method private enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 609
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 610
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 612
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 613
    return-void
.end method

.method private enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 1080
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1081
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    const/4 v0, 0x0

    .line 1084
    .local v0, skipUIEvent:Z
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1085
    const/4 v0, 0x1

    .line 1087
    :cond_2
    if-nez v0, :cond_0

    .line 1088
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueHitTestLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 616
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->clearPreviousHitTest()V

    .line 617
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 618
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 623
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 624
    return-void
.end method

.method private enqueueUiCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1183
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1184
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 1186
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1188
    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueUiEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 1191
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1192
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1193
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueUiEventLocked: batched event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1199
    :goto_0
    return-void

    .line 1197
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 1202
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueUiEventUnbatchedLocked: enqueued event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1206
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleUiDispatchLocked()V

    .line 1207
    return-void
.end method

.method private enqueueWebKitCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1123
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1124
    :cond_0
    const/4 v1, 0x0

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 1126
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1127
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 1129
    .end local v7           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebViewInputDispatcher;->batchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1134
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueWebKitEventLocked: batched event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1140
    :goto_0
    return-void

    .line 1138
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueWebKitEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 1143
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1144
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueWebKitEventUnbatchedLocked: enqueued event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 1147
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleWebKitDispatchLocked()V

    .line 1148
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 1149
    return-void
.end method

.method private handleHitTestMsg(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    .line 643
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v0, :cond_0

    .line 645
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 647
    monitor-exit v1

    .line 656
    :goto_0
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 651
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 652
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 654
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private handleWebKitTimeout()V
    .locals 5

    .prologue
    .line 947
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 948
    :try_start_0
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-nez v2, :cond_0

    .line 949
    monitor-exit v3

    .line 984
    :goto_0
    return-void

    .line 951
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 953
    sget-boolean v2, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 954
    const-string v2, "WebViewInputDispatcher"

    const-string v4, "handleWebKitTimeout: timeout occurred!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->dequeueList()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 962
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 963
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 964
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 965
    iget-object v0, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 973
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 974
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 975
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 976
    move-object v0, v1

    .line 977
    goto :goto_1

    .line 967
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_3
    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->copyDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 968
    iget v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    goto :goto_1

    .line 983
    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 982
    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    :try_start_1
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 983
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private hideTapCandidateLocked()V
    .locals 2

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 445
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 446
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 447
    return-void
.end method

.method private isClickCandidateLocked(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 599
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 605
    :cond_1
    :goto_0
    return v2

    .line 604
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 605
    .local v0, downDuration:J
    sget v4, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private isMoveEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 923
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 7
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"
    .parameter "webKitXOffset"
    .parameter "webKitYOffset"
    .parameter "webKitScale"

    .prologue
    .line 1236
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1237
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    iput-object p1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1238
    iput p2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1239
    iput p3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1241
    iput p4, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1242
    iput p5, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1243
    iput p6, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1244
    sget-boolean v1, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1245
    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_0
    return-object v0
.end method

.method private obtainUninitializedDispatchEventLocked()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1266
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1267
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1268
    iget v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1269
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1270
    iput-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1274
    :goto_0
    return-object v0

    .line 1272
    :cond_0
    new-instance v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .end local v0           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {v0, v2}, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;-><init>(Landroid/webkit/WebViewInputDispatcher$1;)V

    .restart local v0       #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    goto :goto_0
.end method

.method private postClick()V
    .locals 10

    .prologue
    .line 517
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 518
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v0, :cond_0

    .line 519
    monitor-exit v9

    .line 540
    :goto_0
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 523
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 524
    .local v8, event:Landroid/view/MotionEvent;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 525
    :cond_1
    monitor-exit v9

    goto :goto_0

    .line 539
    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 528
    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mButtonActionMouse:Z

    if-eqz v0, :cond_3

    .line 529
    monitor-exit v9

    goto :goto_0

    .line 533
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->showTapCandidateLocked()V

    .line 534
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->hideKeyboradIfUneditable()V

    .line 535
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 536
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 538
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 539
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private postLongPress()V
    .locals 10

    .prologue
    .line 414
    iget-object v9, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 415
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-nez v0, :cond_0

    .line 416
    monitor-exit v9

    .line 441
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 420
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 421
    .local v8, event:Landroid/view/MotionEvent;
    if-nez v8, :cond_1

    .line 422
    monitor-exit v9

    goto :goto_0

    .line 440
    .end local v8           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 425
    .restart local v8       #event:Landroid/view/MotionEvent;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 432
    :pswitch_0
    monitor-exit v9

    goto :goto_0

    .line 435
    :pswitch_1
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 436
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 437
    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 439
    .local v7, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 440
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postShowTapHighlight(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 484
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    if-eqz p1, :cond_1

    .line 486
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-nez v0, :cond_0

    .line 487
    monitor-exit v1

    .line 498
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 496
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 497
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 491
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-nez v0, :cond_2

    .line 492
    monitor-exit v1

    goto :goto_0

    .line 494
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 1278
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1280
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1283
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1284
    iget v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1285
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1286
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1288
    :cond_1
    return-void
.end method

.method private scheduleClickLocked()V
    .locals 4

    .prologue
    .line 501
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    if-eqz v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 506
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    sget v2, Landroid/webkit/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private scheduleHideTapHighlightLocked()V
    .locals 4

    .prologue
    .line 470
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 472
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    sget v2, Landroid/webkit/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 474
    return-void
.end method

.method private scheduleHitTestLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 5
    .parameter "d"

    .prologue
    const/4 v2, 0x7

    const/4 v4, 0x1

    .line 629
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    if-ne v0, v4, :cond_0

    .line 631
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v2, p1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 636
    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    .line 637
    return-void
.end method

.method private scheduleLongPressLocked()V
    .locals 4

    .prologue
    .line 400
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 402
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    sget v2, Landroid/webkit/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 404
    return-void
.end method

.method private scheduleShowTapHighlightLocked()V
    .locals 4

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 458
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    sget v2, Landroid/webkit/WebViewInputDispatcher;->TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    return-void
.end method

.method private scheduleUiDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1210
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez v0, :cond_1

    .line 1211
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1212
    const-string v0, "WebViewInputDispatcher"

    const-string/jumbo v1, "scheduleUiDispatchLocked: send MSG_DISPATCH_UI_EVENTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessage(I)Z

    .line 1215
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 1217
    :cond_1
    return-void
.end method

.method private scheduleWebKitDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1152
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez v0, :cond_1

    .line 1153
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1154
    const-string v0, "WebViewInputDispatcher"

    const-string/jumbo v1, "scheduleWebKitDispatchLocked: send MSG_DISPATCH_WEBKIT_EVENTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_0
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v0, :cond_2

    .line 1157
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    const/4 v1, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1160
    :goto_0
    iput-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 1162
    :cond_1
    return-void

    .line 1159
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkit/WebViewInputDispatcher$WebKitHandler;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewInputDispatcher$WebKitHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sendClickNow()V
    .locals 4

    .prologue
    .line 559
    iget-object v2, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 560
    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-nez v1, :cond_1

    .line 561
    :cond_0
    monitor-exit v2

    .line 576
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 565
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iget-object v0, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 566
    .local v0, event:Landroid/view/MotionEvent;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    .line 567
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 575
    .end local v0           #event:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 569
    .restart local v0       #event:Landroid/view/MotionEvent;
    :cond_3
    :try_start_1
    sget-boolean v1, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 570
    const-string v1, "WebViewInputDispatcher"

    const-string/jumbo v3, "sendClickNow(): enque EVENT_TYPE_CLICK now!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->showTapCandidateLocked()V

    .line 573
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->hideKeyboradIfUneditable()V

    .line 574
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v1}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 575
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private shouldSkipWebKit(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 4
    .parameter "d"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1094
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 1117
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 1098
    :pswitch_2
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    goto :goto_0

    .line 1110
    :pswitch_3
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1112
    goto :goto_0

    .line 1114
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1094
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showTapCandidateLocked()V
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 451
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 452
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 453
    return-void
.end method

.method private skipWebKitEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 987
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 988
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 989
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 994
    :goto_0
    return-void

    .line 991
    :cond_0
    iget v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 992
    invoke-direct {p0, p1}, Landroid/webkit/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private storeLastClickEvent()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 544
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v7

    .line 546
    .local v7, event:Landroid/view/MotionEvent;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 547
    :cond_0
    iput-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 556
    .end local v7           #event:Landroid/view/MotionEvent;
    :goto_0
    return-void

    .line 550
    .restart local v7       #event:Landroid/view/MotionEvent;
    :cond_1
    invoke-static {v7}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 551
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    goto :goto_0

    .line 554
    .end local v1           #eventToEnqueue:Landroid/view/MotionEvent;
    .end local v7           #event:Landroid/view/MotionEvent;
    :cond_2
    iput-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    goto :goto_0
.end method

.method private unscheduleClickLocked()V
    .locals 2

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 512
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 514
    :cond_0
    return-void
.end method

.method private unscheduleHideTapHighlightLocked()V
    .locals 2

    .prologue
    .line 477
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 479
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 481
    :cond_0
    return-void
.end method

.method private unscheduleLongPressLocked()V
    .locals 2

    .prologue
    .line 407
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 409
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 411
    :cond_0
    return-void
.end method

.method private unscheduleShowTapHighlightLocked()V
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 465
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 467
    :cond_0
    return-void
.end method

.method private updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "d"
    .parameter "event"

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 672
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    .line 673
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    .line 674
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostLastWebKitScale:F

    .line 675
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 676
    .local v0, action:I
    :goto_0
    iget v2, p1, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-eqz v2, :cond_2

    .line 726
    :cond_0
    :goto_1
    return-void

    .end local v0           #action:I
    :cond_1
    move v0, v1

    .line 675
    goto :goto_0

    .line 680
    .restart local v0       #action:I
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v2, :cond_3

    .line 681
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 684
    :cond_3
    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 686
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 687
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 688
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 689
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 690
    iput-boolean v3, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 691
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 692
    :cond_5
    if-nez v0, :cond_8

    .line 693
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V

    .line 695
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-nez v1, :cond_6

    .line 697
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->sendClickNow()V

    .line 700
    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleLongPressLocked()V

    .line 701
    iput-boolean v4, p0, Landroid/webkit/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 702
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownX:F

    .line 703
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/webkit/WebViewInputDispatcher;->mInitialDownY:F

    .line 704
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueHitTestLocked(Landroid/view/MotionEvent;)V

    .line 705
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_7

    .line 706
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 708
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleShowTapHighlightLocked()V

    goto :goto_1

    .line 710
    :cond_8
    if-ne v0, v4, :cond_b

    .line 711
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, v3}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    .line 712
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 713
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->isClickCandidateLocked(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 714
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_9

    .line 715
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 716
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 718
    :cond_9
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->scheduleClickLocked()V

    goto :goto_1

    .line 721
    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 723
    :cond_b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 724
    invoke-direct {p0, p2}, Landroid/webkit/WebViewInputDispatcher;->checkForSlopLocked(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private updateWebKitTimeoutLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1165
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v1, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1166
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    iget-wide v3, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_2

    .line 1170
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->removeMessages(I)V

    .line 1171
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 1173
    :cond_2
    if-eqz v0, :cond_0

    .line 1174
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mUiHandler:Landroid/webkit/WebViewInputDispatcher$UiHandler;

    iget-wide v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v1, v5, v2, v3}, Landroid/webkit/WebViewInputDispatcher$UiHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1175
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 1176
    iget-wide v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    goto :goto_0
.end method


# virtual methods
.method public dispatchUiEvents()V
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    .line 1006
    return-void
.end method

.method public dispatchWebKitEvents()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    .line 738
    return-void
.end method

.method public isTouchInputHere()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchInput:Z

    return v0
.end method

.method public postPointerEvent(Landroid/view/MotionEvent;IIF)Z
    .locals 11
    .parameter "event"
    .parameter "webKitXOffset"
    .parameter "webKitYOffset"
    .parameter "webKitScale"

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "event cannot be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    sget-boolean v3, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 328
    const-string v3, "WebViewInputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postPointerEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 333
    .local v7, action:I
    packed-switch v7, :pswitch_data_0

    .line 396
    :goto_0
    :pswitch_0
    return v0

    .line 340
    :pswitch_1
    const/4 v2, 0x0

    .line 354
    .local v2, eventType:I
    :goto_1
    iget-object v10, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 356
    move-object v1, p1

    .line 357
    .local v1, eventToEnqueue:Landroid/view/MotionEvent;
    if-nez v2, :cond_5

    .line 359
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->storeLastClickEvent()V

    .line 361
    iget-object v3, p0, Landroid/webkit/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkit/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v3, p1}, Landroid/webkit/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 362
    if-nez v1, :cond_3

    .line 363
    sget-boolean v3, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 364
    const-string v3, "WebViewInputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postPointerEvent: dropped event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 367
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 368
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 369
    monitor-exit v10

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 343
    .end local v1           #eventToEnqueue:Landroid/view/MotionEvent;
    .end local v2           #eventType:I
    :pswitch_2
    const/4 v2, 0x2

    .line 344
    .restart local v2       #eventType:I
    goto :goto_1

    .line 348
    .end local v2           #eventType:I
    :pswitch_3
    const/4 v2, 0x1

    .line 349
    .restart local v2       #eventType:I
    goto :goto_1

    .line 372
    .restart local v1       #eventToEnqueue:Landroid/view/MotionEvent;
    :cond_3
    if-nez v7, :cond_5

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v0, :cond_5

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPreventDefault:I

    .line 374
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    .line 376
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkit/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, v1}, Landroid/webkit/WebViewInputDispatcher$UiCallbacks;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 378
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    .line 387
    :cond_5
    :goto_2
    if-ne v1, p1, :cond_6

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 391
    :cond_6
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    move-result-object v8

    .line 393
    .local v8, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v8, p1}, Landroid/webkit/WebViewInputDispatcher;->updateStateTrackersLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V

    .line 394
    invoke-direct {p0, v8}, Landroid/webkit/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V

    .line 395
    monitor-exit v10

    move v0, v9

    .line 396
    goto :goto_0

    .line 379
    .end local v8           #d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_7
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v0, :cond_5

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setClickOnSelectHandleCenter(Z)V
    .locals 0
    .parameter "ClickOnSelectHandleCenter"

    .prologue
    .line 905
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    .line 906
    return-void
.end method

.method public setTouchInputCameHere(Z)V
    .locals 0
    .parameter "touchInputHere"

    .prologue
    .line 897
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mTouchInput:Z

    .line 898
    return-void
.end method

.method public setUIShouldSkipEvent(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 303
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDispatcher->UIShouldSkipEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    .line 308
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebKitWantsTouchEvents(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 280
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webkitWantsTouchEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eq v0, p1, :cond_2

    .line 285
    if-nez p1, :cond_1

    .line 286
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 288
    :cond_1
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    .line 290
    :cond_2
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebkitShouldSkipEvent(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 294
    sget-boolean v0, Landroid/webkit/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDispatcher->WebkitShouldSkipEven: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    .line 299
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skipWebkitForRemainingTouchStream()V
    .locals 0

    .prologue
    .line 942
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher;->handleWebKitTimeout()V

    .line 943
    return-void
.end method
