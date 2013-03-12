.class public Lcom/android/internal/policy/impl/sec/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
    }
.end annotation


# static fields
.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MSG_GO_TO_UNLOCK_SCREEN:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL:I

.field private TAG:Ljava/lang/String;

.field private helpOverlayTip:I

.field private isHelpOverlayUSA:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

.field private mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

.field private mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDefaultHelpOverlay:Z

.field private mDefaultHelpText:Ljava/lang/String;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsCameraShortCut:Z

.field private mIsHelpTextEnabled:Z

.field private mIsMotionLockscreen:Z

.field private mIsMultipleWakeUpOn:Z

.field private mIsTouchExplorationEnabled:Z

.field private mIsWaterRipple:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLockIcon:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedEventWidget:Landroid/view/View;

.field private mMissedMsgList:Landroid/view/View;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

.field private mTalkbackEnabled:Z

.field private mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

.field private mUnlockWidget:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

.field private mVoiceHelpText:Landroid/widget/TextView;

.field private mVoiceIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 25
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 409
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v3, "CircleLockScreen"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 75
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    .line 104
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 110
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 111
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 112
    const/16 v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 118
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 122
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 123
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 386
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 388
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->MSG_SET_VOICE_RECOGNITION_FAIL:I

    .line 389
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->MSG_GO_TO_UNLOCK_SCREEN:I

    .line 403
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 404
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 405
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    .line 411
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 412
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 413
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 414
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 415
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCreationOrientation:I

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 426
    .local v10, accesibilityService:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 427
    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 428
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-eqz v3, :cond_10

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v3, :cond_1

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 437
    .local v11, drivingMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 439
    .local v24, unlockDrivingMode:I
    const/4 v3, 0x1

    if-ne v11, v3, :cond_11

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_11

    .line 440
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v11           #drivingMode:I
    .end local v24           #unlockDrivingMode:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTalkbackEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v3, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 452
    .local v13, exploreByTouchMode:I
    const/4 v3, 0x1

    if-ne v13, v3, :cond_12

    .line 453
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "explore by touch mode on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .end local v13           #exploreByTouchMode:I
    :cond_2
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setFocusable(Z)V

    .line 461
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 462
    const/high16 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setDescendantFocusability(I)V

    .line 464
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 465
    .local v15, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    .line 467
    const v3, 0x109005a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 477
    :goto_3
    const v3, 0x10202f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 480
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/16 v17, 0x0

    .line 481
    .local v17, isEasyUxOn:Z
    :goto_4
    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v17, 0x1

    .line 483
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsCameraShortCut:Z

    .line 485
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsCameraShortCut:Z

    if-eqz v3, :cond_4

    if-nez v17, :cond_4

    .line 486
    :cond_3
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v3, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    .line 490
    :cond_4
    const v3, 0x10202fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 493
    const v3, 0x10202fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    const v3, 0x10202fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    .line 497
    const v3, 0x10202fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    .line 499
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 505
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v3, :cond_7

    .line 507
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 508
    .local v16, info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v16

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_6

    .line 509
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v16           #info:Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_9
    if-eqz v17, :cond_7

    .line 519
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 523
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 524
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 528
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    if-eqz v3, :cond_1b

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    :goto_b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpOverlayUSA:Z

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    const/16 v18, 0x0

    .line 537
    .local v18, isLiveWallpaper:Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    .line 538
    .local v22, isWaterRippleConfig:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    const/16 v20, 0x1

    .line 539
    .local v20, isRippleEffect:Z
    :goto_e
    if-nez v18, :cond_1f

    if-eqz v22, :cond_1f

    if-eqz v20, :cond_1f

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->createUnlockWidget()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 543
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    .line 616
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    .line 627
    new-instance v3, Lcom/android/internal/policy/impl/sec/ClockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/sec/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    .line 630
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 631
    new-instance v3, Lcom/android/internal/policy/impl/sec/UsimWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/sec/UsimWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    .line 636
    :goto_10
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v19

    .line 637
    .local v19, isNewMissedWidgetIsUsed:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 639
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    .line 649
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    const/16 v21, 0x1

    .line 650
    .local v21, isTickerOn:Z
    :goto_12
    if-eqz v21, :cond_25

    .line 651
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_24

    .line 652
    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v7, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    .line 662
    :goto_13
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    .line 669
    const v3, 0x10202f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    .line 677
    const v3, 0x10202ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-nez v3, :cond_8

    .line 681
    const v3, 0x10202fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 690
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v3, :cond_9

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 694
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_26

    .line 695
    new-instance v23, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 697
    .local v23, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 703
    .end local v23           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 704
    if-eqz v19, :cond_27

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 710
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 729
    :cond_b
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    .line 731
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 733
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_d

    .line 734
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v3, :cond_d

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpHubInstalled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->needToShowHelpPage()I

    move-result v8

    .line 743
    .local v8, mChecked:I
    :goto_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/16 v3, 0xb

    if-ge v8, v3, :cond_2b

    const/4 v14, 0x1

    .line 746
    .local v14, flag:Z
    :goto_18
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isShortcutApplied()Z

    move-result v3

    if-nez v3, :cond_c

    .line 747
    const/16 v3, 0x65

    if-ge v8, v3, :cond_2e

    const/4 v14, 0x1

    .line 750
    :cond_c
    :goto_19
    if-eqz v14, :cond_d

    .line 753
    new-instance v7, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    .line 769
    .local v7, helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_2f

    .line 770
    new-instance v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayUsa;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 776
    :goto_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 781
    .end local v7           #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    .end local v8           #mChecked:I
    .end local v14           #flag:Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v3, :cond_e

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 785
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 786
    const v3, 0x10202ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 789
    :cond_f
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 790
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 793
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMissedEventCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MissedEventCallback;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleTouchListener;)V

    .line 803
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 805
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->refreshDefaultHelpText(Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    return-void

    .line 431
    .end local v15           #inflater:Landroid/view/LayoutInflater;
    .end local v17           #isEasyUxOn:Z
    .end local v18           #isLiveWallpaper:Z
    .end local v19           #isNewMissedWidgetIsUsed:Z
    .end local v20           #isRippleEffect:Z
    .end local v21           #isTickerOn:Z
    .end local v22           #isWaterRippleConfig:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    .restart local v11       #drivingMode:I
    .restart local v24       #unlockDrivingMode:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 456
    .end local v11           #drivingMode:I
    .end local v24           #unlockDrivingMode:I
    .restart local v13       #exploreByTouchMode:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "explore by touch mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 470
    .end local v13           #exploreByTouchMode:I
    .restart local v15       #inflater:Landroid/view/LayoutInflater;
    :cond_13
    const v3, 0x109005b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v15, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_3

    .line 480
    :cond_14
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 481
    .restart local v17       #isEasyUxOn:Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 483
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 484
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 504
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 512
    :catch_0
    move-exception v12

    .line 513
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "package not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 526
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    goto/16 :goto_a

    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 531
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 534
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 536
    :cond_1d
    const/16 v18, 0x1

    goto/16 :goto_d

    .line 538
    .restart local v18       #isLiveWallpaper:Z
    .restart local v22       #isWaterRippleConfig:Z
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 539
    .restart local v20       #isRippleEffect:Z
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 633
    :cond_20
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    goto/16 :goto_10

    .line 641
    .restart local v19       #isNewMissedWidgetIsUsed:Z
    :cond_21
    if-eqz v19, :cond_22

    .line 642
    new-instance v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v5, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v6, p5

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_11

    .line 644
    :cond_22
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-direct {v4, v5, v3, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_11

    .line 649
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_12

    .line 654
    .restart local v21       #isTickerOn:Z
    :cond_24
    new-instance v3, Lcom/android/internal/policy/impl/sec/TickerWidget;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/sec/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    goto/16 :goto_13

    .line 658
    :cond_25
    const v3, 0x1020300

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_13

    .line 699
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_14

    .line 716
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getMissedCallList()Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_28

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 721
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->getMissedMsgList()Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_15

    .line 729
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_16

    .line 741
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .restart local v8       #mChecked:I
    goto/16 :goto_17

    .line 744
    :cond_2b
    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_2c
    const/16 v3, 0x6f

    if-ge v8, v3, :cond_2d

    const/4 v14, 0x1

    goto/16 :goto_18

    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_18

    .line 747
    .restart local v14       #flag:Z
    :cond_2e
    const/4 v14, 0x0

    goto/16 :goto_19

    .line 773
    .restart local v7       #helpCallback:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    :cond_2f
    new-instance v3, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    goto/16 :goto_1a
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/sec/TickerWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->refreshDefaultHelpText(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method private bedimBackground(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    .line 932
    :goto_0
    return-void

    .line 927
    :cond_0
    if-eqz p1, :cond_1

    .line 928
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private createUnlockWidget()Landroid/view/View;
    .locals 3

    .prologue
    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, unlockWidget:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v1, :cond_0

    .line 899
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 903
    .restart local v0       #unlockWidget:Landroid/view/View;
    :goto_0
    return-object v0

    .line 901
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockView;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #unlockWidget:Landroid/view/View;
    goto :goto_0
.end method

.method private isActiveStreamExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 882
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    return v0

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 886
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 889
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 892
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    .line 1255
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1256
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1259
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1260
    const/4 v3, 0x1

    .line 1261
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKioskModeEnabled()Z
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1265
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1272
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v2, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return v1

    .line 1274
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1275
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private needToShowHelpPage()I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1227
    const/4 v0, 0x3

    new-array v9, v0, [Landroid/net/Uri;

    .line 1228
    .local v9, uri:[Landroid/net/Uri;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v1

    .line 1229
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v2

    .line 1230
    const/4 v0, 0x2

    const-string v1, "content://com.samsung.helphub.provider/help_page_status/unlock_via_events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v9, v0

    .line 1232
    const/4 v8, 0x0

    .line 1234
    .local v8, result:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_3

    .line 1235
    const/4 v6, 0x0

    .line 1238
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, v9, v7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1242
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getInt(0) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x4024

    int-to-double v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 1247
    :cond_0
    if-eqz v6, :cond_1

    .line 1248
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1234
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1247
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1248
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1251
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    return v8
.end method

.method private refreshDefaultHelpText(Z)V
    .locals 3
    .parameter "isVoiceUnlockFailed"

    .prologue
    const v2, 0x104069f

    const v1, 0x104069c

    .line 812
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_4

    .line 813
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_2

    .line 814
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    .line 841
    :goto_0
    return-void

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 820
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 827
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_7

    .line 828
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 829
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 831
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104069e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 834
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsTouchExplorationEnabled:Z

    if-nez v0, :cond_8

    .line 835
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 837
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104069d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method private startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 848
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/sec/CircleLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 874
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    .line 875
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->start()V

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1077
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    .line 1080
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->cleanUp()V

    .line 1082
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->cleanUp()V

    .line 1088
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->cleanUp()V

    .line 1090
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_3

    .line 1091
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->cleanUp()V

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_4

    .line 1094
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->cleanUp()V

    .line 1096
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1097
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->cleanUp()V

    .line 1099
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_6

    .line 1100
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->cleanUp()V

    .line 1102
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    .line 1103
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->cleanUp()V

    .line 1105
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1106
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpDestroy()V

    .line 1107
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V

    .line 1111
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1113
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1114
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1115
    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 1116
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 973
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 975
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 981
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 908
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 910
    const/4 v1, 0x0

    .line 919
    :goto_0
    return v1

    .line 913
    :cond_0
    const-string v0, ""

    .line 914
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->getTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 401
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1196
    return-void
.end method

.method public onCsSimStateChanged(I)V
    .locals 3
    .parameter "simId"

    .prologue
    .line 1296
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCsSimStateChanged simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mIsWatterRipple = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUnlockWidget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRipple;->setRippleBackground()V

    goto :goto_0
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 1285
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1200
    return-void
.end method

.method public onMissedCallUpdate()V
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedCallList;->updateMissedEvent()V

    .line 1310
    :cond_0
    return-void
.end method

.method public onMissedMsgUpdate()V
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedMsgList;->updateMissedEvent()V

    .line 1317
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    .line 1046
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay removeView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->onPause()V

    .line 1049
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1053
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->onPause()V

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onPause()V

    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_3

    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->onPause()V

    .line 1059
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_4

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onPause()V

    .line 1062
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->onPause()V

    .line 1065
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_6

    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->onPause()V

    .line 1068
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->onPause()V

    .line 1071
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 1073
    :cond_8
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1192
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 1150
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1156
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1158
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 1170
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 1204
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1209
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1210
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1211
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1212
    const/4 v1, 0x1

    .line 1214
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->onResume()V

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onResume()V

    .line 996
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_2

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onResume()V

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1000
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetInterface;->onResume()V

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->cleanTouchListener()V

    .line 1005
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    if-eqz v0, :cond_5

    .line 1006
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->onResume()V

    .line 1008
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    if-eqz v0, :cond_6

    .line 1009
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleShortcutWidget;->onResume()V

    .line 1013
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isShowingAndNotHidden()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1021
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-nez v0, :cond_8

    .line 1022
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 1024
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v0, :cond_9

    .line 1025
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->onResume()V

    .line 1027
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_a

    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_a

    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->onResume()V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 1031
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 1033
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1039
    :cond_a
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1184
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/sec/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1164
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/sec/UsimWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/UsimWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1166
    :cond_0
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 1174
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1188
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 939
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v0

    .line 942
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 963
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 944
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v1, :cond_3

    .line 945
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->registerListener()V

    .line 946
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 947
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 950
    :cond_3
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    .line 951
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 955
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    .line 956
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->resetMotionEngine()V

    .line 957
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 958
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    .line 959
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/sec/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 942
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 1291
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "focused"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    if-eqz p1, :cond_3

    .line 1125
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1130
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->setWhichHelpInfo()V

    .line 1132
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    .line 1133
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1137
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    :cond_1
    return-void

    .line 1120
    :cond_2
    const-string v0, "unfocused"

    goto :goto_0

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    goto :goto_1
.end method

.method public setVoiceRecognitionFailed()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    :cond_0
    return-void
.end method
