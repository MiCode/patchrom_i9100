.class public Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreenMotion.java"


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCameraMotionListener:Landroid/hardware/motion/MRListener;

.field private mCircleIn:Landroid/widget/ImageView;

.field private mCircleMain:Landroid/widget/FrameLayout;

.field private mCircleRoot:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMotionReady:Z

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mTiltMotionListener:Landroid/hardware/motion/MRListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const-string v1, "CircleLockScreenMotion"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionReady:Z

    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;

    .line 64
    const-string v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 66
    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    .line 89
    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    .line 119
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleRoot:Landroid/widget/RelativeLayout;

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 123
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    .line 126
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleIn:Landroid/widget/ImageView;

    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleIn:Landroid/widget/ImageView;

    const v2, 0x108048f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleIn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleRoot:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->addView(Landroid/view/View;II)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionReady:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 147
    :cond_2
    return-void
.end method

.method public handleMotionMarker(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 196
    .local v3, touchedEventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 198
    .local v4, touchedEventY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 202
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 205
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v3, v7

    float-to-int v5, v7

    .line 206
    .local v5, xOffset:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v4, v7

    float-to-int v6, v7

    .line 209
    .local v6, yOffset:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 210
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v2, v7, v5

    .line 211
    .local v2, rightMargin:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v0, v7, v6

    .line 212
    .local v0, bottomMargin:I
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 213
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 214
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 215
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 216
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleMain:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 223
    .end local v0           #bottomMargin:I
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #rightMargin:I
    .end local v5           #xOffset:I
    .end local v6           #yOffset:I
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCircleRoot:Landroid/widget/RelativeLayout;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->unregisterListener()V

    .line 189
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->registerListener()V

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 185
    return-void
.end method

.method public registerListener()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const-string v5, "register motion listener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 162
    .local v1, isMotionLockscreen:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_unlock_camera_short_cut"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v0, v2

    .line 164
    .local v0, isCameraShortCut:Z
    :goto_1
    if-eqz v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v4, 0x800

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 166
    :cond_1
    if-eqz v0, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v4, 0x100

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 170
    :cond_2
    return-void

    .end local v0           #isCameraShortCut:Z
    .end local v1           #isMotionLockscreen:Z
    :cond_3
    move v1, v3

    .line 161
    goto :goto_0

    .restart local v1       #isMotionLockscreen:Z
    :cond_4
    move v0, v3

    .line 162
    goto :goto_1
.end method

.method public resetMotionEngine()V
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const-string v1, "reset motion engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionManager;->resetMotionEngine()I

    .line 176
    return-void
.end method

.method public setMotionReady(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionReady:Z

    .line 180
    return-void
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->DBG:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->TAG:Ljava/lang/String;

    const-string v1, "unregister motion listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mTiltMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->mCameraMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 156
    :cond_2
    return-void
.end method
