.class Landroid/webkit/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ZoomManager$PostScale;,
        Landroid/webkit/ZoomManager$ScaleDetectorListener;,
        Landroid/webkit/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final DEFAULT_MAX_ZOOM_SCALE_FACTOR:F = 4.0f

.field protected static final DEFAULT_MIN_ZOOM_SCALE_FACTOR:F = 0.25f

.field static final LOGTAG:Ljava/lang/String; = "webviewZoom"

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static MINIMUM_SCALE_WITHOUT_JITTER:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT:F = 0.0f

.field private static final PANNING_BLOCKING_TIME:J = 0x32L

.field private static final TILT_ZOOM_SCALE_FACTOR:I = 0x8c

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x96

.field private static final mBlockZoomPadding:I = 0x5

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private bIsReceiveActionPU:Z

.field private bIsReceiveMoveEVForZoom:Z

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mBlockZoomStartScale:F

.field private mBlockZoomStartScrollX:I

.field private mBlockZoomStartScrollY:I

.field private mBlockZoomTargetScale:F

.field private mBlockZoomTargetScrollX:I

.field private mBlockZoomTargetScrollY:I

.field private mBlockZooming:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mDefaultMaxZoomScale:F

.field private mDefaultMinZoomScale:F

.field private mDefaultScale:F

.field private mDisplayDensity:F

.field private mDoubleTapMaxScale:F

.field private mDoubleTapZoomFactor:F

.field private mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

.field private mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

.field private mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

.field private mFocusX:F

.field private mFocusY:F

.field private mHardwareAccelerated:Z

.field private mInHWAcceleratedZoom:Z

.field private mInZoomOverview:Z

.field private mInitialScale:F

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInitialZoomOverview:Z

.field private mInvActualScale:F

.field private mInvDefaultScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mInvZoomOverviewWidth:F

.field private mMaxZoomScale:F

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mMouseWheelListener:Landroid/webkit/MouseWheelListener;

.field private mPinchToZoomAnimating:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mStartTimePannigCheck:J

.field private mSupportMultiTouch:Z

.field private mTextWrapScale:F

.field private mTiltListener:Landroid/webkit/TiltListener;

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private motionListener:Landroid/hardware/motion/MRListener;

.field private registerTiltListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    .line 175
    const/high16 v0, 0x3f00

    sput v0, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    .line 187
    const v0, 0x3be56042

    sput v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    .line 193
    const/4 v0, 0x0

    sput v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    .line 251
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/CallbackProxy;)V
    .locals 3
    .parameter "webView"
    .parameter "callbackProxy"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 97
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 107
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 169
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 224
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    .line 226
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 227
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 230
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    .line 237
    const/high16 v0, 0x3fc0

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapMaxScale:F

    .line 245
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->bIsReceiveActionPU:Z

    .line 246
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    .line 252
    new-instance v0, Landroid/webkit/ZoomManager$1;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$1;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    .line 287
    iput-object p1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    .line 288
    iput-object p2, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 295
    const/16 v0, 0x3d4

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 297
    new-instance v0, Landroid/webkit/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;-><init>(Landroid/webkit/ZoomManager;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    .line 298
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ZoomManager;)Landroid/webkit/TiltListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mTiltListener:Landroid/webkit/TiltListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$1002(Landroid/webkit/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusY:F

    return p1
.end method

.method static synthetic access$1100(Landroid/webkit/ZoomManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget-wide v0, p0, Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J

    return-wide v0
.end method

.method static synthetic access$1102(Landroid/webkit/ZoomManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Landroid/webkit/ZoomManager;->mStartTimePannigCheck:J

    return-wide p1
.end method

.method static synthetic access$1400(Landroid/webkit/ZoomManager;)Landroid/webkit/MouseWheelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mMouseWheelListener:Landroid/webkit/MouseWheelListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/webkit/ZoomManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    return p1
.end method

.method static synthetic access$1600()F
    .locals 1

    .prologue
    .line 58
    sget v0, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    return v0
.end method

.method static synthetic access$1702(Landroid/webkit/ZoomManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return p1
.end method

.method static synthetic access$1800(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$1902(Landroid/webkit/ZoomManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return p1
.end method

.method static synthetic access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2100(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method static synthetic access$2200(Landroid/webkit/ZoomManager;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$400(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method static synthetic access$500(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method static synthetic access$602(Landroid/webkit/ZoomManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    return p1
.end method

.method static synthetic access$700(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkit/ZoomManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$902(Landroid/webkit/ZoomManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Landroid/webkit/ZoomManager;->mFocusX:F

    return p1
.end method

.method private animateBlockZoom(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f80

    .line 633
    iget-wide v8, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 634
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 636
    :cond_0
    const/16 v1, 0x96

    .line 637
    .local v1, period:I
    const/4 v8, 0x1

    if-ge v1, v8, :cond_1

    .line 638
    const/4 v1, 0x1

    .line 643
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 644
    .local v0, elapsed:I
    int-to-float v8, v0

    int-to-float v9, v1

    div-float v2, v8, v9

    .line 645
    .local v2, ratio:F
    cmpl-float v8, v2, v12

    if-lez v8, :cond_2

    .line 646
    const/high16 v2, 0x3f80

    .line 649
    :cond_2
    iget v8, p0, Landroid/webkit/ZoomManager;->mBlockZoomStartScale:F

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScale:F

    mul-float/2addr v9, v2

    add-float v7, v8, v9

    .line 650
    .local v7, zoomScale:F
    iget v8, p0, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollX:I

    int-to-float v8, v8

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollX:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v3, v8

    .line 651
    .local v3, scrollX:I
    iget v8, p0, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollY:I

    int-to-float v8, v8

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollY:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 653
    .local v4, scrollY:I
    if-ge v0, v1, :cond_6

    .line 654
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 660
    :goto_0
    iget-boolean v8, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v8, :cond_7

    .line 661
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    sub-int v5, v8, v3

    .line 662
    .local v5, tx:I
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    sub-int v6, v8, v4

    .line 663
    .local v6, ty:I
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8, v3, v4}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 664
    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    .line 665
    :cond_3
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 666
    :cond_4
    invoke-virtual {p0, v7, v13}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 667
    iget-boolean v8, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    if-nez v8, :cond_5

    .line 668
    iput-boolean v13, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 672
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8, v13}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 678
    .end local v5           #tx:I
    .end local v6           #ty:I
    :cond_5
    :goto_1
    return-void

    .line 656
    :cond_6
    iput-boolean v13, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    .line 657
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->onFixedLengthZoomAnimationEnd()V

    goto :goto_0

    .line 675
    :cond_7
    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v9

    sub-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 676
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1
.end method

.method public static final exceedsMinScaleIncrement(FF)Z
    .locals 2
    .parameter "scaleA"
    .parameter "scaleB"

    .prologue
    .line 454
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentZoomControl()Landroid/webkit/ZoomControlBase;
    .locals 2

    .prologue
    .line 1634
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1635
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1636
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getDisplayZoomControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1638
    new-instance v0, Landroid/webkit/ZoomControlEmbedded;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomControlEmbedded;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1640
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mEmbeddedZoomControl:Landroid/webkit/ZoomControlEmbedded;

    .line 1648
    :goto_0
    return-object v0

    .line 1642
    :cond_1
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-nez v0, :cond_2

    .line 1643
    new-instance v0, Landroid/webkit/ZoomControlExternal;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkit/ZoomControlExternal;-><init>(Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    .line 1645
    :cond_2
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    goto :goto_0

    .line 1648
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setDefaultZoomScale(F)V
    .locals 5
    .parameter "defaultScale"

    .prologue
    const-wide/16 v3, 0x0

    .line 345
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 346
    .local v0, originalDefault:F
    iput p1, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 347
    const/high16 v1, 0x3f80

    div-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    .line 348
    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    .line 349
    const/high16 v1, 0x3e80

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    .line 350
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 352
    div-float v1, p1, v0

    iget v2, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 356
    :goto_0
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 358
    div-float v1, p1, v0

    iget v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 362
    :goto_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v2, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    invoke-static {v1, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 365
    :cond_0
    return-void

    .line 354
    :cond_1
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0

    .line 360
    :cond_2
    iget v1, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    goto :goto_1
.end method

.method private setZoomOverviewWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 969
    if-nez p1, :cond_0

    .line 970
    const/16 v0, 0x3d4

    iput v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 974
    :goto_0
    const/high16 v0, 0x3f80

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    .line 975
    return-void

    .line 972
    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0
.end method

.method private setZoomScale(FZZ)V
    .locals 15
    .parameter "scale"
    .parameter "reflowText"
    .parameter "force"

    .prologue
    .line 827
    iget v11, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v11, p1, v11

    if-gez v11, :cond_6

    const/4 v1, 0x1

    .line 828
    .local v1, isScaleLessThanMinZoom:Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result p1

    .line 831
    if-eqz v1, :cond_7

    iget v11, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v12, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_7

    .line 832
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 837
    :goto_1
    if-eqz p2, :cond_0

    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v11

    if-nez v11, :cond_0

    .line 838
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 841
    :cond_0
    iget v11, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v11, p1, v11

    if-nez v11, :cond_1

    if-eqz p3, :cond_5

    .line 842
    :cond_1
    iget v3, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 843
    .local v3, oldScale:F
    iget v2, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 845
    .local v2, oldInvScale:F
    iget v11, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v11, p1, v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-nez v11, :cond_2

    .line 846
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget v12, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 848
    :cond_2
    sget-boolean v11, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v11, :cond_3

    .line 849
    const-string v11, "ZoomManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setZoomScale mActualScale = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "scale = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_3
    move/from16 v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 852
    const/high16 v11, 0x3f80

    div-float v11, v11, p1

    iput v11, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 854
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v11

    if-nez v11, :cond_4

    iget-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v11, :cond_4

    .line 862
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    .line 863
    .local v4, oldX:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v5

    .line 864
    .local v5, oldY:I
    mul-float v6, p1, v2

    .line 865
    .local v6, ratio:F
    int-to-float v11, v4

    mul-float/2addr v11, v6

    const/high16 v12, 0x3f80

    sub-float v12, v6, v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    mul-float/2addr v12, v13

    add-float v9, v11, v12

    .line 866
    .local v9, sx:F
    int-to-float v11, v5

    mul-float/2addr v11, v6

    const/high16 v12, 0x3f80

    sub-float v12, v6, v12

    iget v13, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    iget-object v14, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v14}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v14

    int-to-float v14, v14

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v10, v11, v12

    .line 870
    .local v10, sy:F
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v11}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 874
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->pinLocX(I)I

    move-result v7

    .line 875
    .local v7, scrollX:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/webkit/WebViewClassic;->pinLocY(I)I

    move-result v8

    .line 876
    .local v8, scrollY:I
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11, v7, v8}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    move-result v11

    if-nez v11, :cond_4

    .line 880
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 886
    .end local v4           #oldX:I
    .end local v5           #oldY:I
    .end local v6           #ratio:F
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    .end local v9           #sx:F
    .end local v10           #sy:F
    :cond_4
    iget-object v11, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 888
    .end local v2           #oldInvScale:F
    .end local v3           #oldScale:F
    :cond_5
    return-void

    .line 827
    .end local v1           #isScaleLessThanMinZoom:Z
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 834
    .restart local v1       #isScaleLessThanMinZoom:Z
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v11

    move/from16 v0, p1

    invoke-static {v0, v11}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto/16 :goto_1

    :cond_8
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z
    .locals 4
    .parameter "drawData"
    .parameter "viewWidth"

    .prologue
    .line 1513
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    .line 1514
    .local v1, settings:Landroid/webkit/WebSettings;
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    .line 1515
    .local v0, newZoomOverviewWidth:I
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1516
    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_0

    .line 1519
    sget v2, Landroid/webkit/WebViewClassic;->sMaxViewportWidth:I

    iget-object v3, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1526
    :cond_0
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    if-eq v0, v2, :cond_2

    .line 1527
    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->setZoomOverviewWidth(I)V

    .line 1528
    const/4 v2, 0x1

    .line 1530
    :goto_1
    return v2

    .line 1524
    :cond_1
    int-to-float v2, p2

    iget v3, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1530
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startSmoothZoomAnimation(ZZF)V
    .locals 31
    .parameter "reflowText"
    .parameter "force"
    .parameter "forceScale"

    .prologue
    .line 493
    const/16 v20, 0x0

    .line 495
    .local v20, newScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mAnchorX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mAnchorY:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v30

    invoke-virtual/range {v27 .. v30}, Landroid/webkit/WebViewClassic;->getBlockRect(IIF)Landroid/graphics/Rect;

    move-result-object v7

    .line 497
    .local v7, cBlockRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v27

    if-nez v27, :cond_1

    .line 498
    move/from16 v20, p3

    .line 499
    const/high16 v27, 0x3f80

    mul-float v27, v27, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v28, v0

    div-float v21, v27, v28

    .line 500
    .local v21, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    move/from16 v28, v0

    add-float v27, v27, v28

    mul-float v27, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 501
    .local v23, tx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v20

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    move/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v28

    add-int v23, v27, v28

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v22

    .line 504
    .local v22, titleHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    mul-float v27, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 507
    .local v24, ty:I
    move/from16 v0, v24

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    :goto_0
    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v28

    add-int v24, v27, v28

    .line 511
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomStartScale:F

    .line 512
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomTargetScale:F

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollX:I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollY:I

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v27

    sub-int v27, v27, v23

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollX:I

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v27

    sub-int v27, v27, v24

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollY:I

    .line 616
    .end local v21           #scale:F
    .end local v22           #titleHeight:I
    .end local v23           #tx:I
    .end local v24           #ty:I
    :goto_1
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 617
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    .line 619
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 620
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 628
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->onFixedLengthZoomAnimationStart()V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 630
    return-void

    .line 507
    .restart local v21       #scale:F
    .restart local v22       #titleHeight:I
    .restart local v23       #tx:I
    .restart local v24       #ty:I
    :cond_0
    sub-int v27, v24, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v20

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-static/range {v27 .. v29}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result v27

    add-int v27, v27, v22

    goto/16 :goto_0

    .line 521
    .end local v21           #scale:F
    .end local v22           #titleHeight:I
    .end local v23           #tx:I
    .end local v24           #ty:I
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 522
    .local v8, cBlockWidth:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 525
    .local v6, cBlockHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v26, v0

    .line 526
    .local v26, viewWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getViewHeightWithTitle()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v25, v0

    .line 528
    .local v25, viewHeight:F
    const/4 v13, 0x0

    .line 529
    .local v13, cPadding:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mDoubleTapMaxScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 531
    .local v17, doubleTapMaxScale:F
    if-nez p2, :cond_b

    .line 532
    add-int/lit8 v27, v8, 0xa

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v20, v26, v27

    .line 533
    cmpl-float v27, v20, v17

    if-lez v27, :cond_9

    .line 535
    move/from16 v20, v17

    .line 547
    :cond_2
    :goto_3
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v4, v27, v28

    .line 548
    .local v4, cBlockCenterX:F
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v5, v27, v28

    .line 549
    .local v5, cBlockCenterY:F
    div-float v16, v26, v20

    .line 550
    .local v16, cViewportWidth:F
    div-float v15, v25, v20

    .line 555
    .local v15, cViewportHeight:F
    if-nez p2, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v27, v15, v27

    if-gez v27, :cond_4

    .line 556
    add-int/lit8 v27, v6, 0xa

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v20, v25, v27

    .line 557
    cmpl-float v27, v20, v17

    if-lez v27, :cond_c

    .line 559
    move/from16 v20, v17

    .line 567
    :cond_3
    :goto_4
    div-float v16, v26, v20

    .line 568
    div-float v15, v25, v20

    .line 571
    :cond_4
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 572
    .local v3, cBestViewport:Landroid/graphics/RectF;
    const/high16 v27, 0x4000

    div-float v27, v16, v27

    sub-float v27, v4, v27

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->left:F

    .line 573
    const/high16 v27, 0x4000

    div-float v27, v15, v27

    sub-float v27, v5, v27

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 574
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    add-float v27, v27, v16

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 575
    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    add-float v27, v27, v15

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v14, v27, v20

    .line 580
    .local v14, cTitleHeight:F
    const/4 v11, 0x0

    .line 581
    .local v11, cMinX:F
    neg-float v12, v14

    .line 582
    .local v12, cMinY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v9, v0

    .line 583
    .local v9, cMaxX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v10, v0

    .line 589
    .local v10, cMaxY:F
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    sub-float v18, v27, v9

    .line 590
    .local v18, extraX:F
    const/16 v27, 0x0

    cmpl-float v27, v18, v27

    if-lez v27, :cond_5

    .line 591
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 593
    :cond_5
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    sub-float v19, v27, v10

    .line 594
    .local v19, extraY:F
    const/16 v27, 0x0

    cmpl-float v27, v19, v27

    if-lez v27, :cond_6

    .line 595
    const/16 v27, 0x0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 599
    :cond_6
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpg-float v27, v27, v11

    if-gez v27, :cond_7

    .line 600
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v27, v11, v27

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 602
    :cond_7
    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpg-float v27, v27, v12

    if-gez v27, :cond_8

    .line 603
    const/16 v27, 0x0

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    sub-float v28, v12, v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 607
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mActualScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomStartScale:F

    .line 608
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomTargetScale:F

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollX:I

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomStartScrollY:I

    .line 612
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    mul-float v27, v27, v20

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollX:I

    .line 613
    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    mul-float v27, v27, v20

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollY:I

    goto/16 :goto_1

    .line 536
    .end local v3           #cBestViewport:Landroid/graphics/RectF;
    .end local v4           #cBlockCenterX:F
    .end local v5           #cBlockCenterY:F
    .end local v9           #cMaxX:F
    .end local v10           #cMaxY:F
    .end local v11           #cMinX:F
    .end local v12           #cMinY:F
    .end local v14           #cTitleHeight:F
    .end local v15           #cViewportHeight:F
    .end local v16           #cViewportWidth:F
    .end local v18           #extraX:F
    .end local v19           #extraY:F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gtz v27, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 537
    move/from16 v20, p3

    goto/16 :goto_3

    .line 538
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gez v27, :cond_2

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move/from16 v20, v0

    goto/16 :goto_3

    .line 542
    :cond_b
    move/from16 v20, p3

    goto/16 :goto_3

    .line 560
    .restart local v4       #cBlockCenterX:F
    .restart local v5       #cBlockCenterY:F
    .restart local v15       #cViewportHeight:F
    .restart local v16       #cViewportWidth:F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gtz v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 561
    move/from16 v20, p3

    goto/16 :goto_4

    .line 562
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gez v27, :cond_3

    .line 563
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    move/from16 v20, v0

    goto/16 :goto_4

    .line 624
    .end local v4           #cBlockCenterX:F
    .end local v5           #cBlockCenterY:F
    .end local v6           #cBlockHeight:I
    .end local v8           #cBlockWidth:I
    .end local v13           #cPadding:F
    .end local v15           #cViewportHeight:F
    .end local v16           #cViewportWidth:F
    .end local v17           #doubleTapMaxScale:F
    .end local v25           #viewHeight:F
    .end local v26           #viewWidth:F
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/ZoomManager;->mBlockZoomTargetScrollY:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    goto/16 :goto_2
.end method

.method private zoom(F)Z
    .locals 4
    .parameter "zoomMultiplier"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f00

    .line 479
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 481
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->switchOutDrawHistory()V

    .line 483
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 484
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 485
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 486
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 487
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    move-result v0

    return v0
.end method

.method private zoomToOverview()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 987
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v1

    .line 988
    .local v1, scrollY:I
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 989
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 992
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    .line 994
    .local v0, readingScale:F
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v4

    if-nez v4, :cond_2

    .line 996
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {p0, v4, v2}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 1003
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 996
    goto :goto_0

    .line 1000
    :cond_2
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Landroid/webkit/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    goto :goto_1
.end method

.method private zoomToReadingLevelOrMore()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1007
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v1

    .line 1009
    .local v1, readingScale:F
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1012
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget v6, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    iget v7, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    invoke-virtual {v3, v6, v7, v1}, Landroid/webkit/WebViewClassic;->getBlockLeftEdge(IIF)I

    move-result v0

    .line 1013
    .local v0, left:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1015
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    sub-int v2, v3, v6

    .line 1019
    .local v2, viewLeft:I
    if-lez v2, :cond_3

    .line 1020
    int-to-float v3, v2

    mul-float/2addr v3, v1

    iget v6, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v6, v1, v6

    div-float/2addr v3, v6

    iput v3, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 1026
    .end local v2           #viewLeft:I
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p0, v1, v4}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    .line 1033
    .end local v0           #left:I
    :goto_2
    return-void

    .line 1015
    .restart local v0       #left:I
    :cond_2
    add-int/lit8 v3, v0, -0x5

    goto :goto_0

    .line 1022
    .restart local v2       #viewLeft:I
    :cond_3
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 1023
    const/4 v3, 0x0

    iput v3, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    goto :goto_1

    .line 1030
    .end local v0           #left:I
    .end local v2           #viewLeft:I
    :cond_4
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-direct {p0, v5, v4, v1}, Landroid/webkit/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    goto :goto_2

    :cond_5
    move v5, v4

    goto :goto_3
.end method


# virtual methods
.method public GetIsActionPU()Z
    .locals 3

    .prologue
    .line 1678
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 1679
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetIsActionPU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->bIsReceiveActionPU:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->bIsReceiveActionPU:Z

    return v0
.end method

.method public SetIsActionPU(Z)V
    .locals 3
    .parameter "setValue"

    .prologue
    .line 1684
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 1685
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIsActionPU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_0
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->bIsReceiveActionPU:Z

    .line 1688
    return-void
.end method

.method public animateZoom(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 732
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 734
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    if-eqz v7, :cond_1

    .line 735
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->animateBlockZoom(Landroid/graphics/Canvas;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget v7, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_2

    .line 740
    const-string/jumbo v7, "webviewZoom"

    const-string v8, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    goto :goto_0

    .line 747
    :cond_2
    iget-wide v7, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 752
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    sub-long/2addr v7, v9

    long-to-int v0, v7

    .line 753
    .local v0, interval:I
    const/16 v7, 0x96

    if-ge v0, v7, :cond_4

    .line 754
    int-to-float v7, v0

    const/high16 v8, 0x4316

    div-float v1, v7, v8

    .line 755
    .local v1, ratio:F
    const/high16 v7, 0x3f80

    iget v8, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    iget v9, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    sub-float/2addr v9, v10

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    div-float v6, v7, v8

    .line 757
    .local v6, zoomScale:F
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 766
    .end local v1           #ratio:F
    :goto_1
    iget v7, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    mul-float v2, v6, v7

    .line 767
    .local v2, scale:F
    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 768
    .local v4, tx:I
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContentWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result v7

    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    add-int v4, v7, v8

    .line 770
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v3

    .line 771
    .local v3, titleHeight:I
    iget v7, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    add-float/2addr v7, v8

    int-to-float v8, v3

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    iget v8, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    int-to-float v9, v3

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 774
    .local v5, ty:I
    if-gt v5, v3, :cond_5

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_2
    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    add-int v5, v7, v8

    .line 778
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v7, :cond_6

    .line 779
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v4

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 782
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 783
    invoke-virtual {p0, v6, v11}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 785
    iget v7, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    cmpl-float v7, v7, v12

    if-nez v7, :cond_0

    .line 787
    iput-boolean v11, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 792
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7, v11}, Landroid/webkit/WebViewClassic;->sendViewSizeZoom(Z)Z

    goto/16 :goto_0

    .line 759
    .end local v2           #scale:F
    .end local v3           #titleHeight:I
    .end local v4           #tx:I
    .end local v5           #ty:I
    .end local v6           #zoomScale:F
    :cond_4
    iget v6, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 761
    .restart local v6       #zoomScale:F
    iput v12, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 762
    iget-object v7, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->onFixedLengthZoomAnimationEnd()V

    goto/16 :goto_1

    .line 774
    .restart local v2       #scale:F
    .restart local v3       #titleHeight:I
    .restart local v4       #tx:I
    .restart local v5       #ty:I
    :cond_5
    sub-int v7, v5, v3

    iget-object v8, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v8

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContentHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/webkit/WebViewClassic;->pinLoc(III)I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_2

    .line 795
    :cond_6
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 796
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_0
.end method

.method public final canZoomIn()Z
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canZoomOut()Z
    .locals 2

    .prologue
    .line 466
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clearDocumentAnchor()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    iput v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 425
    return-void
.end method

.method final computeReadingLevelScale(F)F
    .locals 2
    .parameter "scale"

    .prologue
    .line 399
    iget v0, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    mul-float/2addr v0, v1

    sget v1, Landroid/webkit/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final computeScaleWithLimits(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 437
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 438
    iget p1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 442
    :cond_0
    :goto_0
    return p1

    .line 439
    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 440
    iget p1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public dismissZoomPicker()V
    .locals 1

    .prologue
    .line 1659
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1660
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1661
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->hide()V

    .line 1663
    :cond_0
    return-void
.end method

.method public final getDefaultMaxZoomScale()F
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    return v0
.end method

.method public final getDefaultMinZoomScale()F
    .locals 1

    .prologue
    .line 412
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    return v0
.end method

.method public final getDefaultScale()F
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method public final getDocumentAnchorX()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    return v0
.end method

.method public final getDocumentAnchorY()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    return v0
.end method

.method public getExternalZoomPicker()Landroid/view/View;
    .locals 2

    .prologue
    .line 1717
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1718
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1719
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    invoke-virtual {v1}, Landroid/webkit/ZoomControlExternal;->getControls()Landroid/webkit/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v1

    .line 1721
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandleMoveEvForZooming()Z
    .locals 1

    .prologue
    .line 1697
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    return v0
.end method

.method public final getInvDefaultScale()F
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvDefaultScale:F

    return v0
.end method

.method public final getInvScale()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method public final getMaxZoomScale()F
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method public final getMinZoomScale()F
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method public getMouseWheelListener()Landroid/webkit/MouseWheelListener;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mMouseWheelListener:Landroid/webkit/MouseWheelListener;

    return-object v0
.end method

.method public final getReadingLevelScale()F
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v0

    return v0
.end method

.method public getRegisterTiltListener()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->registerTiltListener:Z

    return v0
.end method

.method public final getScale()F
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    return v0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getTextWrapScale()F
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method public getTiltListener()Landroid/webkit/TiltListener;
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mTiltListener:Landroid/webkit/TiltListener;

    return-object v0
.end method

.method getZoomOverviewScale()F
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/ZoomManager;->mInvZoomOverviewWidth:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public handleDoubleTap(FF)V
    .locals 7
    .parameter "lastTouchX"
    .parameter "lastTouchY"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 913
    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 914
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    .line 915
    .local v2, settings:Landroid/webkit/WebSettingsClassic;
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isDoubleTapEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_2

    .line 920
    const-string v4, "ZoomManager"

    const-string v5, "handleDoubleTap start "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 923
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    float-to-int v5, p1

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v4

    iput v4, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 924
    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    float-to-int v5, p2

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v4

    iput v4, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 925
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettingsClassic;->setDoubleTapToastCount(I)V

    .line 928
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 931
    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 932
    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 936
    .local v1, newTextWrapScale:F
    :goto_1
    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iget v5, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v4, v5}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    .line 937
    .local v0, firstTimeReflow:Z
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v4, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v4, :cond_5

    .line 940
    :cond_4
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 945
    :cond_5
    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v4, v1}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    iget-boolean v4, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v4, :cond_7

    .line 950
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 951
    invoke-virtual {p0, v3}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 964
    :goto_2
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_0

    .line 965
    const-string v3, "ZoomManager"

    const-string v4, "handleDoubleTap END "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 934
    .end local v0           #firstTimeReflow:Z
    .end local v1           #newTextWrapScale:F
    :cond_6
    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .restart local v1       #newTextWrapScale:F
    goto :goto_1

    .line 952
    .restart local v0       #firstTimeReflow:Z
    :cond_7
    iget-boolean v4, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-nez v4, :cond_9

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 955
    iget v4, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 956
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v4

    iput v4, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 957
    invoke-virtual {p0, v3}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 960
    :cond_8
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToOverview()V

    goto :goto_2

    .line 962
    :cond_9
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->zoomToReadingLevelOrMore()V

    goto :goto_2
.end method

.method public init(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 308
    sget-boolean v0, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 310
    :cond_0
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    .line 311
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 312
    iput p1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 313
    const/high16 v0, 0x3f80

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 315
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mDoubleTapMaxScale:F

    .line 317
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 318
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1652
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1653
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1654
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1656
    :cond_0
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 2

    .prologue
    .line 891
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    .line 892
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedLengthAnimationInProgress()Z
    .locals 2

    .prologue
    .line 805
    iget v0, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mBlockZooming:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInZoomOverview()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method public isPreventingWebkitUpdates()Z
    .locals 1

    .prologue
    .line 1087
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v0

    return v0
.end method

.method public final isScaleOverLimits(F)Z
    .locals 1
    .parameter "scale"

    .prologue
    .line 446
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAnimating()Z
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomPickerVisible()Z
    .locals 2

    .prologue
    .line 1666
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1667
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->isVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomScaleFixed()Z
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepZoomPickerVisible()V
    .locals 2

    .prologue
    .line 1710
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1711
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mExternalZoomControl:Landroid/webkit/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1712
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->show()V

    .line 1714
    :cond_0
    return-void
.end method

.method public onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V
    .locals 10
    .parameter "drawData"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1542
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1543
    :cond_0
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1544
    :cond_1
    sget-boolean v6, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1546
    :cond_2
    iget-object v5, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 1547
    .local v5, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget-object v4, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 1548
    .local v4, viewSize:Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    invoke-virtual {p0, v5, v6, v8}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    .line 1549
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    .line 1550
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 1551
    .local v0, overviewScale:F
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    .line 1552
    .local v3, settings:Landroid/webkit/WebSettingsClassic;
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1553
    :cond_3
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_9

    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_0
    iput v6, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1555
    iget v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v8, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1558
    :cond_4
    iget-object v6, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1560
    iget v6, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_a

    .line 1561
    iget v2, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 1580
    .local v2, scale:F
    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 1581
    .local v1, reflowText:Z
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_7

    .line 1582
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1584
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1585
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1587
    :cond_6
    iget v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v2}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    .line 1589
    :cond_7
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v2, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1591
    invoke-virtual {p0, v2, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1594
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->updateZoomPicker()V

    .line 1597
    invoke-virtual {p0, v7}, Landroid/webkit/ZoomManager;->setEdgeZoom(Z)V

    .line 1599
    .end local v1           #reflowText:Z
    .end local v2           #scale:F
    :cond_8
    return-void

    :cond_9
    move v6, v0

    .line 1553
    goto :goto_0

    .line 1562
    :cond_a
    iget-boolean v6, v5, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_b

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_e

    .line 1563
    :cond_b
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c

    iget v2, v5, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 1565
    .restart local v2       #scale:F
    :goto_3
    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_d

    iget v6, v5, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_4
    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    .end local v2           #scale:F
    :cond_c
    move v2, v0

    .line 1563
    goto :goto_3

    .line 1565
    .restart local v2       #scale:F
    :cond_d
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    goto :goto_4

    .line 1568
    .end local v2           #scale:F
    :cond_e
    move v2, v0

    .line 1569
    .restart local v2       #scale:F
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-nez v6, :cond_10

    .line 1571
    :cond_f
    iget v6, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1573
    :cond_10
    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1577
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v6

    iput v6, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_1

    .line 1589
    .restart local v1       #reflowText:Z
    :cond_11
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onNewPicture(Landroid/webkit/WebViewCore$DrawData;)Z
    .locals 11
    .parameter "drawData"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1456
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v5

    .line 1457
    .local v5, viewWidth:I
    invoke-direct {p0, p1, v5}, Landroid/webkit/ZoomManager;->setupZoomOverviewWidth(Landroid/webkit/WebViewCore$DrawData;I)Z

    move-result v6

    .line 1458
    .local v6, zoomOverviewWidthChanged:Z
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    .line 1459
    .local v1, newZoomOverviewScale:F
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v4

    .line 1460
    .local v4, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_2

    .line 1465
    :cond_0
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v9, v10}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1467
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1473
    :cond_2
    :goto_0
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1474
    :cond_3
    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1475
    iget v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1479
    :cond_4
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    .line 1481
    .local v2, scaleHasDiff:Z
    iget v9, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float v9, v1, v9

    sget v10, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    move v3, v7

    .line 1485
    .local v3, scaleLessThanOverview:Z
    :goto_1
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_b

    iget v9, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_b

    move v0, v7

    .line 1487
    .local v0, mobileSiteInOverview:Z
    :goto_2
    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_5
    iget-boolean v9, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_6

    if-eqz v0, :cond_d

    :cond_6
    if-eqz v2, :cond_d

    if-eqz v6, :cond_d

    .line 1491
    :cond_7
    iput-boolean v8, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1492
    iget v9, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v9}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_c

    :goto_3
    invoke-virtual {p0, v1, v7}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 1497
    :goto_4
    iget-boolean v7, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Landroid/webkit/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1500
    iget-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1503
    :cond_8
    return v2

    .line 1469
    .end local v0           #mobileSiteInOverview:Z
    .end local v2           #scaleHasDiff:Z
    .end local v3           #scaleLessThanOverview:Z
    :cond_9
    iput v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    goto :goto_0

    .restart local v2       #scaleHasDiff:Z
    :cond_a
    move v3, v8

    .line 1481
    goto :goto_1

    .restart local v3       #scaleLessThanOverview:Z
    :cond_b
    move v0, v8

    .line 1485
    goto :goto_2

    .restart local v0       #mobileSiteInOverview:Z
    :cond_c
    move v7, v8

    .line 1492
    goto :goto_3

    .line 1495
    :cond_d
    if-nez v2, :cond_e

    :goto_5
    iput-boolean v7, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    goto :goto_4

    :cond_e
    move v7, v8

    goto :goto_5
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1734
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 1735
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1348
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1349
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getVisibleTitleHeight()I

    move-result v0

    .line 1350
    .local v0, visibleTitleHeight:I
    iput v6, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 1351
    int-to-float v1, v0

    iput v1, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 1352
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorX:I

    .line 1353
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mAnchorY:I

    .line 1357
    .end local v0           #visibleTitleHeight:I
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    if-nez v1, :cond_1

    .line 1362
    const/high16 v4, 0x3f80

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->drawHistory()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getHistoryPictureWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1366
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 1367
    iget v1, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    iput v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1371
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 1378
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v1, :cond_2

    .line 1379
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1380
    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Landroid/webkit/ZoomManager$PostScale;

    if-eq p1, p3, :cond_4

    iget-object v1, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    iget-boolean v6, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_5

    :goto_2
    invoke-direct {v5, p0, v1, v6, v2}, Landroid/webkit/ZoomManager$PostScale;-><init>(Landroid/webkit/ZoomManager;ZZZ)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 1384
    :cond_2
    return-void

    .line 1362
    :cond_3
    iget v1, p0, Landroid/webkit/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1380
    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method public refreshZoomScale(Z)V
    .locals 2
    .parameter "reflowText"

    .prologue
    .line 819
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 820
    return-void
.end method

.method public registerTiltListener()V
    .locals 3

    .prologue
    .line 265
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->registerTiltListener:Z

    .line 269
    :cond_0
    return-void
.end method

.method public restoreZoomState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    const/high16 v1, 0x3f80

    .line 1627
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 1628
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mInvActualScale:F

    .line 1629
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 1630
    const-string/jumbo v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    .line 1631
    return-void
.end method

.method public saveZoomState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 1618
    const-string/jumbo v0, "scale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1619
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1620
    const-string/jumbo v0, "overview"

    iget-boolean v1, p0, Landroid/webkit/ZoomManager;->mInZoomOverview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1621
    return-void
.end method

.method setEdgeZoom(Z)V
    .locals 10
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1602
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1604
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1605
    .local v0, classx:Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 1606
    .local v3, paramTypes:[Ljava/lang/Class;
    const-string/jumbo v6, "setEnableEdgeZoom"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1607
    .local v2, method:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 1608
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->canZoomIn()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1615
    .end local v0           #classx:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #paramTypes:[Ljava/lang/Class;
    :cond_2
    :goto_0
    return-void

    .line 1610
    :catch_0
    move-exception v1

    .line 1611
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_2

    .line 1612
    const-string v4, "ZoomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFirstLayout  e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHandleMoveEvForZooming(Z)V
    .locals 3
    .parameter "IsCanZooming"

    .prologue
    .line 1692
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandleMoveEvForZooming= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iput-boolean p1, p0, Landroid/webkit/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    .line 1694
    return-void
.end method

.method public setHardwareAccelerated()V
    .locals 1

    .prologue
    .line 1726
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    .line 1727
    return-void
.end method

.method public final setInitialScaleInPercent(I)V
    .locals 2
    .parameter "scaleInPercent"

    .prologue
    .line 433
    int-to-float v0, p1

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mInitialScale:F

    .line 434
    return-void
.end method

.method public final setZoomCenter(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 428
    iput p1, p0, Landroid/webkit/ZoomManager;->mZoomCenterX:F

    .line 429
    iput p2, p0, Landroid/webkit/ZoomManager;->mZoomCenterY:F

    .line 430
    return-void
.end method

.method public setZoomScale(FZ)V
    .locals 1
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 824
    return-void
.end method

.method public startZoomAnimation(FZ)Z
    .locals 5
    .parameter "scale"
    .parameter "reflowText"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f80

    .line 686
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z

    .line 687
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    .line 688
    .local v0, oldScale:F
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mInitialScrollX:I

    .line 689
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mInitialScrollY:I

    .line 692
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    invoke-static {p1, v3}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result p1

    .line 696
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 698
    iget v3, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 699
    iget-boolean v2, p0, Landroid/webkit/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v2, :cond_1

    .line 700
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 705
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/webkit/ZoomManager;->mZoomStart:J

    .line 707
    div-float v2, v4, v0

    iput v2, p0, Landroid/webkit/ZoomManager;->mInvInitialZoomScale:F

    .line 708
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    div-float v2, v4, v2

    iput v2, p0, Landroid/webkit/ZoomManager;->mInvFinalZoomScale:F

    .line 709
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    iput v2, p0, Landroid/webkit/ZoomManager;->mZoomScale:F

    .line 710
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->onFixedLengthZoomAnimationStart()V

    .line 711
    iget-object v2, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 714
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public supportsMultiTouchZoom()Z
    .locals 1

    .prologue
    .line 1067
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    return v0
.end method

.method public supportsPanDuringZoom()Z
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    return v0
.end method

.method public unregisterTiltListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 279
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mTiltListener:Landroid/webkit/TiltListener;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/webkit/ZoomManager;->mTiltListener:Landroid/webkit/TiltListener;

    invoke-virtual {v0, v2}, Landroid/webkit/TiltListener;->setTiltUse(Z)V

    .line 281
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->registerTiltListener:Z

    .line 283
    :cond_1
    return-void
.end method

.method public updateDefaultZoomDensity(F)V
    .locals 6
    .parameter "density"

    .prologue
    .line 330
    sget-boolean v2, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 332
    :cond_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/webkit/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 334
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultScale:F

    .line 336
    .local v0, originalDefault:F
    iput p1, p0, Landroid/webkit/ZoomManager;->mDisplayDensity:F

    .line 337
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager;->setDefaultZoomScale(F)V

    .line 338
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    div-float v1, p1, v0

    .line 340
    .local v1, scaleChange:F
    :goto_0
    iget v2, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 342
    .end local v0           #originalDefault:F
    .end local v1           #scaleChange:F
    :cond_1
    return-void

    .line 338
    .restart local v0       #originalDefault:F
    :cond_2
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public updateDoubleTapZoom(I)V
    .locals 5
    .parameter "doubleTapZoom"

    .prologue
    const/4 v2, 0x1

    .line 809
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v1, v2

    .line 810
    .local v1, zoomIn:Z
    :goto_0
    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/ZoomManager;->mDoubleTapZoomFactor:F

    .line 811
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 812
    invoke-virtual {p0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkit/ZoomManager;->mDoubleTapMaxScale:F

    .line 813
    if-eqz v1, :cond_1

    iget v0, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    .line 815
    .local v0, newScale:F
    :goto_1
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZZ)V

    .line 816
    return-void

    .line 809
    .end local v0           #newScale:F
    .end local v1           #zoomIn:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 813
    .restart local v1       #zoomIn:Z
    :cond_1
    iget v3, p0, Landroid/webkit/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1037
    sget-boolean v3, Landroid/webkit/ZoomManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1039
    :cond_0
    iget-object v3, p0, Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    .line 1040
    .local v2, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1041
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    .line 1045
    const-string v3, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    iput-boolean v5, p0, Landroid/webkit/ZoomManager;->mAllowPanAndScale:Z

    .line 1049
    iget-boolean v3, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v3, :cond_6

    .line 1050
    new-instance v0, Landroid/webkit/ZoomManager$ScaleDetectorListener;

    invoke-direct {v0, p0, v6}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V

    .line 1051
    .local v0, listener:Landroid/webkit/ZoomManager$ScaleDetectorListener;
    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1052
    new-instance v3, Landroid/webkit/TiltListener;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0, v4}, Landroid/webkit/TiltListener;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V

    iput-object v3, p0, Landroid/webkit/ZoomManager;->mTiltListener:Landroid/webkit/TiltListener;

    .line 1053
    new-instance v3, Landroid/webkit/MouseWheelListener;

    iget-object v4, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0, v4}, Landroid/webkit/MouseWheelListener;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V

    iput-object v3, p0, Landroid/webkit/ZoomManager;->mMouseWheelListener:Landroid/webkit/MouseWheelListener;

    .line 1055
    sget-object v3, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v3, :cond_4

    .line 1056
    const-string/jumbo v3, "motion_recognition"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v3, Landroid/webkit/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1064
    .end local v0           #listener:Landroid/webkit/ZoomManager$ScaleDetectorListener;
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v3, v5

    .line 1041
    goto :goto_0

    .line 1059
    :cond_6
    iget-boolean v3, p0, Landroid/webkit/ZoomManager;->mSupportMultiTouch:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v3, :cond_4

    .line 1060
    iput-object v6, p0, Landroid/webkit/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1061
    iput-object v6, p0, Landroid/webkit/ZoomManager;->mTiltListener:Landroid/webkit/TiltListener;

    .line 1062
    iput-object v6, p0, Landroid/webkit/ZoomManager;->mMouseWheelListener:Landroid/webkit/MouseWheelListener;

    goto :goto_1
.end method

.method public updateZoomPicker()V
    .locals 1

    .prologue
    .line 1671
    invoke-direct {p0}, Landroid/webkit/ZoomManager;->getCurrentZoomControl()Landroid/webkit/ZoomControlBase;

    move-result-object v0

    .line 1672
    .local v0, control:Landroid/webkit/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1673
    invoke-interface {v0}, Landroid/webkit/ZoomControlBase;->update()V

    .line 1675
    :cond_0
    return-void
.end method

.method public updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V
    .locals 4
    .parameter "viewState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1425
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1426
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v0, :cond_1

    .line 1427
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1428
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1429
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    .line 1442
    :goto_0
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 1443
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    .line 1447
    :goto_1
    return-void

    .line 1431
    :cond_0
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1432
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1435
    :cond_1
    iget v0, p0, Landroid/webkit/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1436
    iput-boolean v2, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1439
    :cond_2
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMinZoomScale:F

    .line 1440
    iput-boolean v1, p0, Landroid/webkit/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1445
    :cond_3
    iget v0, p1, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    iput v0, p0, Landroid/webkit/ZoomManager;->mMaxZoomScale:F

    goto :goto_1
.end method

.method public willScaleTriggerZoom(F)Z
    .locals 1
    .parameter "scale"

    .prologue
    .line 458
    iget v0, p0, Landroid/webkit/ZoomManager;->mActualScale:F

    invoke-static {p1, v0}, Landroid/webkit/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 470
    const/high16 v0, 0x3fa0

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 474
    const v0, 0x3f4ccccd

    invoke-direct {p0, v0}, Landroid/webkit/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method
