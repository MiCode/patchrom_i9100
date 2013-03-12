.class public Landroid/webkit/TiltListener;
.super Ljava/lang/Object;
.source "TiltListener.java"


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "TiltListener"


# instance fields
.field private mCalledInBrowserTab:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrDockZoom:F

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field mCurrTilt:I

.field private final mDetector:Landroid/view/ScaleGestureDetector;

.field private mDockZoomUse:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private mInvalidGesture:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMotionUse:Z

.field mOnScaleBeginTime:J

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mScaleFactor:F

.field mTiltBeginTime:J

.field private mTiltIntended:Z

.field private mTiltUse:Z

.field private mTimeDelta:J


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "detector"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Landroid/webkit/TiltListener;->mCurrTilt:I

    .line 72
    iput-wide v1, p0, Landroid/webkit/TiltListener;->mOnScaleBeginTime:J

    .line 73
    iput-wide v1, p0, Landroid/webkit/TiltListener;->mTiltBeginTime:J

    .line 75
    iput-boolean v0, p0, Landroid/webkit/TiltListener;->mTiltUse:Z

    .line 76
    iput-boolean v0, p0, Landroid/webkit/TiltListener;->mTiltIntended:Z

    .line 77
    iput-boolean v0, p0, Landroid/webkit/TiltListener;->mCalledInBrowserTab:Z

    .line 80
    iput-boolean v0, p0, Landroid/webkit/TiltListener;->mDockZoomUse:Z

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/TiltListener;->mCurrDockZoom:F

    .line 84
    iput-object p1, p0, Landroid/webkit/TiltListener;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Landroid/webkit/TiltListener;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 86
    iput-object p3, p0, Landroid/webkit/TiltListener;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 87
    return-void
.end method


# virtual methods
.method public getCurrDockZoom()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/webkit/TiltListener;->mCurrDockZoom:F

    return v0
.end method

.method public getCurrTilt()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/webkit/TiltListener;->mCurrTilt:I

    return v0
.end method

.method public getMotionUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Landroid/webkit/TiltListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/webkit/TiltListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/TiltListener;->mMotionUse:Z

    .line 129
    iget-boolean v0, p0, Landroid/webkit/TiltListener;->mMotionUse:Z

    return v0

    :cond_0
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public getTiltUse()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Landroid/webkit/TiltListener;->mTiltUse:Z

    return v0
.end method

.method public initCurrDockZoom()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/TiltListener;->mCurrDockZoom:F

    .line 95
    return-void
.end method

.method public onMREvent(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.browser"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v2, p0, Landroid/webkit/TiltListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/TiltListener;->getMotionUse()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    const/16 v3, 0x48

    if-ne v2, v3, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v2

    iput v2, p0, Landroid/webkit/TiltListener;->mCurrTilt:I

    .line 119
    invoke-virtual {p0}, Landroid/webkit/TiltListener;->tiltUseDecision()V

    .line 120
    iget-boolean v2, p0, Landroid/webkit/TiltListener;->mTiltUse:Z

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Landroid/webkit/TiltListener;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    iget-object v3, p0, Landroid/webkit/TiltListener;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-interface {v2, v3}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public setCurrTilt(I)V
    .locals 0
    .parameter "newTilt"

    .prologue
    .line 101
    iput p1, p0, Landroid/webkit/TiltListener;->mCurrTilt:I

    .line 102
    return-void
.end method

.method public setTiltStartTime(J)V
    .locals 0
    .parameter "start"

    .prologue
    .line 105
    iput-wide p1, p0, Landroid/webkit/TiltListener;->mOnScaleBeginTime:J

    .line 106
    return-void
.end method

.method public setTiltUse(Z)V
    .locals 1
    .parameter "TiltUse"

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Landroid/webkit/TiltListener;->setCurrTilt(I)V

    .line 161
    iput-boolean p1, p0, Landroid/webkit/TiltListener;->mTiltUse:Z

    .line 162
    iput-boolean v0, p0, Landroid/webkit/TiltListener;->mTiltIntended:Z

    .line 163
    return-void
.end method

.method public tiltUseDecision()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 133
    iget-boolean v0, p0, Landroid/webkit/TiltListener;->mTiltUse:Z

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Landroid/webkit/TiltListener;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 135
    iget-boolean v0, p0, Landroid/webkit/TiltListener;->mTiltIntended:Z

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/TiltListener;->mTiltBeginTime:J

    .line 137
    iput-boolean v6, p0, Landroid/webkit/TiltListener;->mTiltIntended:Z

    .line 145
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/webkit/TiltListener;->mTiltBeginTime:J

    const-wide/16 v4, 0x1e

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 146
    invoke-virtual {p0, v6}, Landroid/webkit/TiltListener;->setTiltUse(Z)V

    .line 157
    :cond_1
    return-void

    .line 141
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/webkit/TiltListener;->mTiltBeginTime:J

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/TiltListener;->mTiltIntended:Z

    goto :goto_0
.end method
