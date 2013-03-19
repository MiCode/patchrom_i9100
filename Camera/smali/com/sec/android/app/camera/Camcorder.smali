.class public Lcom/sec/android/app/camera/Camcorder;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camcorder$ThumbKicker;,
        Lcom/sec/android/app/camera/Camcorder$GestureListener;,
        Lcom/sec/android/app/camera/Camcorder$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static CA_HARDKEY_FULL_UP:I = 0x0

.field private static CA_HARDKEY_HALF_PRESS:I = 0x0

.field private static CA_HARDKEY_NONE:I = 0x0

.field private static final DELAY_TIME_WINDOW_FOCUS_ONOFF:I = 0xc8

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field public static final EXTRA_FLASH_LED_DISABLE:Ljava/lang/String; = "flash_led_disable"

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final LAST_VIDEO_URI:Ljava/lang/String; = "last_video_uri"

.field private static final MSG_CAMERA_TEMPERATURE_CHECK:I = 0x0

.field private static final MSG_RECORDING_MODE_POPUP_FOR_THREAD:I = 0x0

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field private static ORIENTATION_DIRTY_DURATION:I = 0x0

.field private static ORIENTATION_TIMER_EXPIRED:I = 0x0

.field private static SET_DIRTY_COUNT:I = 0x0

.field private static SET_DIRTY_DURATION:I = 0x0

.field private static SET_DIRTY_TIMER_EXPIRED:I = 0x0

.field private static STOPAVAILABLE_DURATION:I = 0x0

.field private static STOPAVAILABLE_TIMER_EXPIRED:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "Camcorder"

.field private static final WINDOW_FOCUS_OFF:I = 0x1f5

.field private static final WINDOW_FOCUS_ON:I = 0x1f4

.field private static final WINDOW_TRANSPARENT:I = 0x1f6

.field private static mNotSupportedZoomToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private battLevel:I

.field private battScale:I

.field private battTemp:I

.field private mActionMoveCount:I

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

.field private mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

.field private mCamcorderSound:Landroid/media/MediaActionSound;

.field protected mCameraTemperatureHandler:Landroid/os/Handler;

.field private mCameraTemperatureObserver:Landroid/os/UEventObserver;

.field private mChkLaunchGallery:Z

.field private mDirtyCount:I

.field private mDoRestoreShutterButton:Z

.field private mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

.field private mGestureDetecor:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

.field private mHardKeyStatus:I

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mHoverListener:Landroid/view/View$OnHoverListener;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsCallStateRinging:Z

.field private mIsDestroying:Z

.field private mIsReocrdingStoppedForcely:Z

.field private mIsSlowFastSubMenuCalled:Z

.field private mIsTouchFocusStarted:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

.field private mLastVideoUri:Landroid/net/Uri;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

.field private mOverValue:I

.field private mPassedTimeAfterUpdatingRecordingButtonMs:J

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPreOvervalue:I

.field private mPreviousCallbackValue:I

.field private mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

.field protected mRecordingPopupHandler:Landroid/os/Handler;

.field private mRecordingStopAvailable:Z

.field private mRemainTime:I

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSkipSaveDiscard:Z

.field private mSlowMotionRecordingTimeMs:I

.field private mSnapshotLimitationDialog:Landroid/app/AlertDialog;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

.field private mTimeDrift:J

.field private mTouchAutoFocusActive:Z

.field private mVolumeKeyPressed:Z

.field protected mWeather:Lcom/sec/android/app/camera/Weather;

.field private mwLostWinFocus:Z

.field private newZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 163
    sput v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    .line 164
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    .line 166
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    .line 167
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    .line 168
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    .line 174
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    .line 175
    const/16 v0, 0x5dc

    sput v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_DURATION:I

    .line 185
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    .line 186
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    .line 189
    sput v1, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    .line 378
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 131
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 132
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 138
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 139
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    .line 140
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    .line 142
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 145
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 147
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 148
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    .line 149
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 150
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    .line 152
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 156
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    .line 157
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 169
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 176
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    .line 183
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z

    .line 191
    sget v0, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 199
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 201
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 205
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsSlowFastSubMenuCalled:Z

    .line 209
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    .line 256
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$1;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    .line 332
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$2;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHoverListener:Landroid/view/View$OnHoverListener;

    .line 353
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camcorder$GestureListener;-><init>(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureListener:Lcom/sec/android/app/camera/Camcorder$GestureListener;

    .line 354
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 356
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 357
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 358
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    .line 360
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mActionMoveCount:I

    .line 365
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 368
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 369
    iput v3, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 370
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    .line 376
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 380
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 381
    iput-wide v4, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 382
    iput-wide v4, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 383
    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSlowMotionRecordingTimeMs:I

    .line 386
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 397
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$3;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 571
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$4;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 588
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$5;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2053
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$6;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 3025
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$10;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureHandler:Landroid/os/Handler;

    .line 3039
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$11;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    .line 3865
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 3867
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/Camcorder$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camcorder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    return p1
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/Camcorder;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->handleCameraTemperatureCheck()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/sec/android/app/camera/Camcorder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/camera/Camcorder;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_DURATION:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/sec/android/app/camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_COUNT:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z

    return p1
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/Camcorder;->STOPAVAILABLE_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    return p1
.end method

.method private checkCamcorderStartCondition_RequestedSize()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 940
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.sizeLimit"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 941
    .local v1, requestedSizeLimit:J
    const/4 v3, 0x0

    .line 943
    .local v3, videoBitRate:I
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getCamcorderInnerProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;

    move-result-object v0

    .line 944
    .local v0, profile:Lcom/sec/android/app/camera/MediaRecorderProfile;
    if-eqz v0, :cond_0

    .line 945
    iget v3, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 951
    :cond_0
    cmp-long v6, v1, v9

    if-lez v6, :cond_2

    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v6

    if-ne v6, v4, :cond_1

    .line 953
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 955
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 956
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-long v1, v6

    .line 960
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    .line 963
    :cond_2
    const-string v6, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkCamcorderStartCondition_RequestedSize: cur size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ref size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v3, 0x2

    div-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    cmp-long v6, v1, v9

    if-lez v6, :cond_3

    mul-int/lit8 v6, v3, 0x2

    div-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 966
    const v6, 0x7f0900ea

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 967
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 968
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 972
    :goto_0
    return v4

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x5

    const/16 v7, -0x32

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3086
    const-string v2, "status"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3087
    .local v1, battStatus:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    .line 3088
    const-string v2, "level"

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    .line 3089
    const-string v2, "plugged"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3091
    .local v0, battPlugged:I
    const-string v2, "temperature"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    .line 3093
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBatteryChanged : Level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battPlugged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", battTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3096
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->bFlagOverheat:Z

    if-ne v2, v6, :cond_9

    .line 3097
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bFlagOverheat:Z

    .line 3098
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    .line 3099
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    .line 3113
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    if-gt v2, v7, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    sget v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    if-gt v2, v3, :cond_1

    .line 3114
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v2, :cond_1

    .line 3115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 3116
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v2, :cond_1

    .line 3117
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3118
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    .line 3138
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v2, v3, :cond_3

    .line 3140
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    sget v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v2, v3, :cond_b

    .line 3141
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3142
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3144
    :cond_2
    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 3147
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    .line 3163
    :cond_3
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-le v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    if-le v2, v7, :cond_5

    .line 3164
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3165
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3167
    :cond_4
    iput-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3169
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v2, :cond_5

    .line 3170
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 3171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 3187
    :cond_5
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBatteryLevel:I

    .line 3188
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 3189
    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    if-ne v0, v6, :cond_7

    .line 3190
    :cond_6
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    .line 3192
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v2, :cond_8

    .line 3193
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBatteryLevel:I

    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->bIsCharging:Z

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setBatteryLevel(IZ)V

    .line 3196
    :cond_8
    return-void

    .line 3102
    :cond_9
    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 3103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheatDuringRecording()V

    goto/16 :goto_0

    .line 3106
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    goto/16 :goto_0

    .line 3150
    :cond_b
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v2, :cond_3

    .line 3151
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 3152
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v2, :cond_3

    .line 3153
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3154
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    goto :goto_1
.end method

.method private handleCameraTemperatureCheck()V
    .locals 0

    .prologue
    .line 3082
    return-void
.end method

.method private handlePluggedLowBattery(Z)V
    .locals 5
    .parameter "temp"

    .prologue
    const/16 v4, 0x67

    const/4 v3, 0x0

    .line 4289
    const-string v1, "Camcorder"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4333
    :goto_0
    return-void

    .line 4294
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4295
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4296
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 4297
    if-eqz p1, :cond_3

    .line 4298
    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4302
    :goto_1
    const v1, 0x7f090018

    new-instance v2, Lcom/sec/android/app/camera/Camcorder$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camcorder$15;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4308
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4309
    new-instance v1, Lcom/sec/android/app/camera/Camcorder$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$16;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 4324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 4325
    if-eqz p1, :cond_1

    .line 4326
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 4327
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 4328
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_2

    .line 4329
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 4331
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 4332
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 4300
    :cond_3
    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private initIntentFilter()V
    .locals 8

    .prologue
    .line 735
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 738
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 741
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v6, "file"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 745
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 748
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 749
    .local v4, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 753
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 754
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 755
    .local v3, intentFilterSMSReceives:Landroid/content/IntentFilter;
    const-string v6, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string v6, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    const-string v6, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 762
    .end local v3           #intentFilterSMSReceives:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 763
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 764
    .local v2, intentFilterDcmoSet:Landroid/content/IntentFilter;
    const-string v6, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 765
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 769
    .end local v2           #intentFilterDcmoSet:Landroid/content/IntentFilter;
    :cond_1
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 770
    .local v5, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 775
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 776
    .local v0, i:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 780
    new-instance v6, Landroid/content/Intent;

    const-string v7, "intent.stop.app-in-app"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 785
    return-void
.end method

.method private initIntentFilterBattery()V
    .locals 2

    .prologue
    .line 789
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 790
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 794
    return-void
.end method

.method private initRemains()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 799
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->initGPSIndicator()V

    .line 803
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 805
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 810
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 811
    return-void
.end method

.method private onChkVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 612
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 614
    return-void
.end method

.method private registerCallStateListener()V
    .locals 3

    .prologue
    .line 4366
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 4367
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 4369
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    .line 4370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4371
    :cond_1
    return-void
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    .line 2081
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 2082
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2083
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2085
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    .line 2087
    :cond_0
    return-void
.end method

.method private resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 617
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 619
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 719
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-nez v1, :cond_1

    .line 720
    const-string v1, "Camcorder"

    const-string v2, "setImmutableView: mGLCamcorderBaseIndicators is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 724
    if-nez p1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030006

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 726
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    if-eqz v0, :cond_0

    .line 727
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 728
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    goto :goto_0
.end method

.method private showRecordingModePopup()V
    .locals 7

    .prologue
    const/16 v6, 0x45

    const/16 v2, 0x34

    .line 3969
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3989
    :goto_0
    return-void

    .line 3972
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3973
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3974
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-nez v0, :cond_1

    .line 3975
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/resourcedata/RecordingModeResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 3976
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3977
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3988
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->showMenu()V

    goto :goto_0

    .line 3980
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3981
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-nez v0, :cond_1

    .line 3982
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/RecordingModeSpeedMotionResourceData;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/resourcedata/RecordingModeSpeedMotionResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 3983
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-object v1, p0

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 3984
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private startCameraTemperatureObserving()V
    .locals 2

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/platform/sec-subthermistor"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 3050
    const-string v0, "Camcorder"

    const-string v1, "startCameraTemperatureObserving : startObserving - CAMERA_TEMPERATURE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    return-void
.end method

.method private stopCameraTemperatureObserving()V
    .locals 3

    .prologue
    .line 3055
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraTemperatureObserver:Landroid/os/UEventObserver;

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    .line 3056
    const-string v1, "Camcorder"

    const-string v2, "stopCameraTemperatureObserving : stopObserving - CAMERA_TEMPERATURE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3060
    :goto_0
    return-void

    .line 3057
    :catch_0
    move-exception v0

    .line 3058
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Camcorder"

    const-string v2, "stopCameraTemperatureObserving : thread waiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .locals 0

    .prologue
    .line 4138
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized stopPostRecordingSnapAnimation()V
    .locals 2

    .prologue
    .line 4181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_0

    .line 4182
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4184
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4191
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private switchToCamera()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2233
    sput-boolean v2, Lcom/sec/android/app/camera/Camcorder;->mCameraActivitySwitching:Z

    .line 2235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2236
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "from-camcorder"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2255
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 2257
    const-string v1, "Camcorder"

    const-string v2, "Camcorder finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 2261
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    .line 2262
    return-void
.end method

.method private unregisterCallstateListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4374
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 4375
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4376
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsCallStateRinging:Z

    .line 4377
    return-void
.end method


# virtual methods
.method public IsShutterButtonHidden()Z
    .locals 1

    .prologue
    .line 3834
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    return v0
.end method

.method public ShutterButtonIsRestored()V
    .locals 1

    .prologue
    .line 3838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 3839
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 1917
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 3766
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 3767
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 3768
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2727
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2512
    if-eqz p1, :cond_0

    .line 2513
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2514
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2731
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 3775
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2735
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2498
    if-eqz p1, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 2500
    :cond_0
    return-void
.end method

.method public checkBatteryStatus()V
    .locals 2

    .prologue
    .line 3199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3200
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3201
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3202
    return-void
.end method

.method protected checkCameraDuringCall()V
    .locals 1

    .prologue
    .line 4452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mEnableDuringCall:Z

    .line 4453
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 2
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 3822
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3823
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3824
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3825
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 3826
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 3827
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3830
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 3831
    return-void
.end method

.method public checkStorageLow()V
    .locals 4

    .prologue
    .line 3809
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getAvailableStorage()J

    move-result-wide v0

    .line 3810
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3811
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3819
    :goto_0
    return-void

    .line 3814
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 3815
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0

    .line 3817
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public finishRecordingWithError()V
    .locals 2

    .prologue
    .line 3565
    const-string v0, "Camcorder"

    const-string v1, "finishRecordingWithError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3569
    return-void
.end method

.method public finishTimerCount()V
    .locals 3

    .prologue
    .line 4265
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 4266
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_1

    .line 4271
    :cond_0
    :goto_0
    return-void

    .line 4269
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4270
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4422
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 4429
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getCityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 4243
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getMaxFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecordingStopAvailable()Z
    .locals 1

    .prologue
    .line 2563
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    return v0
.end method

.method public getRemainStorage()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3785
    const/4 v0, 0x0

    .line 3787
    .local v0, nRemainTime:I
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eq v1, v2, :cond_0

    .line 3788
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkStorageLow()V

    .line 3789
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 3790
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getRemainTime()I

    move-result v0

    .line 3791
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3792
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 3798
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 3799
    const/4 v0, 0x0

    .line 3801
    :cond_1
    return v0

    .line 3793
    :cond_2
    if-gtz v0, :cond_0

    .line 3794
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public getRemainTime()I
    .locals 1

    .prologue
    .line 3805
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    return v0
.end method

.method public getRequestedDurationLimit()I
    .locals 4

    .prologue
    .line 3231
    const/4 v0, 0x0

    .line 3232
    .local v0, requestedDurationLimit:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3233
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.durationLimit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3236
    :cond_0
    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 2118
    const/4 v0, 0x0

    return v0
.end method

.method public getWeather()I
    .locals 1

    .prologue
    .line 4426
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getContextualWeather()I

    move-result v0

    return v0
.end method

.method public gettBattLevel()I
    .locals 2

    .prologue
    .line 2974
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->battScale:I

    div-int/2addr v0, v1

    return v0
.end method

.method protected handleBatteryOverheatDuringRecording()V
    .locals 2

    .prologue
    .line 2957
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2958
    const-string v0, "Camcorder"

    const-string v1, "handleBatteryOverheat : Camera will be terminated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 2962
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 2966
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 2969
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryOverheat()V

    .line 2971
    :cond_1
    return-void

    .line 2964
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleCamcorderRecordingModeChanged(I)V
    .locals 0
    .parameter "recordingmode"

    .prologue
    .line 2347
    return-void
.end method

.method protected handleLowBattery(Z)V
    .locals 2
    .parameter "temp"

    .prologue
    .line 3205
    const-string v0, "Camcorder"

    const-string v1, "handleLowBattery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3207
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 3208
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 3212
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 3215
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery(Z)V

    .line 3216
    return-void

    .line 3210
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleRecordingCommand(I)V
    .locals 2
    .parameter "command"

    .prologue
    .line 3338
    packed-switch p1, :pswitch_data_0

    .line 3363
    const-string v0, "Camcorder"

    const-string v1, "Invalid recording state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_0
    :goto_0
    return-void

    .line 3340
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePauseVideoRecording()V

    goto :goto_0

    .line 3343
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResumeVideoRecording()V

    goto :goto_0

    .line 3346
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRecordingMenu()V

    .line 3347
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0

    .line 3353
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 3354
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    goto :goto_0

    .line 3357
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3358
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3359
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleTakePicture()V

    goto :goto_0

    .line 3338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleRecordingSpeedModeChanged(II)V
    .locals 0
    .parameter "mode"
    .parameter "speed"

    .prologue
    .line 2664
    return-void
.end method

.method public handleRecordingTimerElapsed()I
    .locals 13

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 3291
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v6, 0xbd3

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3292
    .local v2, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    div-long v0, v5, v7

    .line 3294
    .local v0, currentMs:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3302
    :cond_0
    iget-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    .line 3303
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 3305
    :cond_1
    iget-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    sub-long v3, v0, v5

    .line 3307
    .local v3, timeDiff:J
    cmp-long v5, v9, v3

    if-gez v5, :cond_2

    iget-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    sub-long v5, v11, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    .line 3308
    const/4 v5, 0x0

    .line 3326
    :goto_0
    return v5

    .line 3311
    :cond_2
    iget-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    sub-long v5, v11, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    .line 3312
    iget-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    sub-long v5, v11, v5

    sub-long v5, v3, v5

    iput-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 3313
    :cond_3
    iget-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_4

    .line 3314
    iput-wide v9, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 3316
    :cond_4
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 3318
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dritf:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RecordingTm:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3322
    :cond_5
    if-eqz v2, :cond_6

    .line 3323
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3324
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 3326
    :cond_6
    iget-wide v5, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    long-to-int v5, v5

    goto :goto_0
.end method

.method public handleShutter()V
    .locals 2

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    :cond_0
    const-string v0, "Camcorder"

    const-string v1, "Preview is not started!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :goto_0
    return-void

    .line 1592
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1594
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback_TimerBgm()V

    .line 1602
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1617
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePrepareVideoRecording()V

    .line 1618
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    .line 1619
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartVideoRecording()V

    goto :goto_0

    .line 1604
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1607
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1610
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_1

    .line 1602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V
    .locals 2
    .parameter "event"
    .parameter "SendEvent"

    .prologue
    .line 2147
    const-string v0, "Camcorder"

    const-string v1, "handleTouchAutoFocusEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    const-string v0, "Camcorder"

    const-string v1, "Wrong state for touchAF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_0
    return-void
.end method

.method public hideAudioRecordingIndicator()V
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2552
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideAudioOffIndicator()V

    .line 2554
    :cond_0
    return-void
.end method

.method public hideFocusIndicator()V
    .locals 1

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusIndicator()V

    .line 2092
    :cond_0
    return-void
.end method

.method public hideFocusRect()V
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->hideFocusRect()V

    .line 2097
    :cond_0
    return-void
.end method

.method public hideRecordingLayout()V
    .locals 2

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3241
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3243
    :cond_0
    return-void
.end method

.method public hideShutterButton()V
    .locals 1

    .prologue
    .line 4226
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideShutterButton()V

    .line 4227
    return-void
.end method

.method public hideSideMenu()V
    .locals 1

    .prologue
    .line 4218
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenu()V

    .line 4219
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 1

    .prologue
    .line 4210
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideSideMenuItems()V

    .line 4211
    return-void
.end method

.method public hideZoomMenu()V
    .locals 3

    .prologue
    .line 4203
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 4204
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 4207
    :cond_0
    return-void
.end method

.method public initCamcorderSound()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2905
    const-string v1, "Camcorder"

    const-string v2, "Initialize Camcorder Sound"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v6}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 2907
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 2909
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v6

    .line 2910
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v1, v7

    .line 2911
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 2913
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2914
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoundPoolId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2916
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-nez v1, :cond_1

    .line 2917
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    .line 2918
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v7}, Landroid/media/MediaActionSound;->load(I)V

    .line 2920
    :cond_1
    return-void
.end method

.method public isAccuWeatherEnable()Z
    .locals 1

    .prologue
    .line 4433
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-static {}, Lcom/sec/android/app/camera/Weather;->isAccuWeatherEnable()Z

    move-result v0

    return v0
.end method

.method public isActivityDestoying()Z
    .locals 1

    .prologue
    .line 4247
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method public isAutoFocusing()Z
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v0

    return v0
.end method

.method public isCAFDisabled()Z
    .locals 1

    .prologue
    .line 2139
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isRecordingSpeedControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2142
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 3858
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3859
    const-string v0, "Camcorder"

    const-string v1, "isCapturing - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    const/4 v0, 0x0

    .line 3862
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isGpsEULAEnabledinCamcorder()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2759
    const-string v5, "Camcorder"

    const-string v6, "ghee - isGpsEULAEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2761
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2763
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2764
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2765
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2767
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f0900db

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2769
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2770
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2772
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2773
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2775
    new-instance v5, Lcom/sec/android/app/camera/Camcorder$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camcorder$7;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2781
    const v5, 0x7f0900a5

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$8;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/Camcorder$8;-><init>(Lcom/sec/android/app/camera/Camcorder;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2797
    const v5, 0x7f0900df

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camcorder$9;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2803
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 2804
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2805
    return-void
.end method

.method public isMediaScannerScanning()Z
    .locals 1

    .prologue
    .line 4362
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPauseResumeMenuSupported()Z
    .locals 1

    .prologue
    .line 2531
    const/4 v0, 0x1

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 2

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3851
    const-string v0, "Camcorder"

    const-string v1, "isPreviewStarted - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    const/4 v0, 0x0

    .line 3854
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isPreviewStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 3843
    const-string v0, "Camcorder"

    const-string v1, "isRecording - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    const/4 v0, 0x0

    .line 3846
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecording()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecordingMenuTop()Z
    .locals 2

    .prologue
    .line 4279
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4280
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.camera.glwidget.TwGLCamcorderRecordingMenu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4285
    :goto_0
    return v0

    .line 4282
    :catch_0
    move-exception v0

    .line 4285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->isShutterPressed()Z

    move-result v0

    return v0
.end method

.method public isSlowMotionChanged(I)Z
    .locals 3
    .parameter "recordingMode"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2536
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 2537
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2545
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2540
    goto :goto_0

    .line 2542
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderSlowMotionEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2543
    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 1

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isTouchAutoFocusEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2123
    const-string v2, "176x144"

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2131
    :cond_0
    :goto_0
    return v0

    .line 2127
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 2128
    const-string v1, "Camcorder"

    const-string v2, "!!!!!!!!!!!!!!!!!!check wrong case!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2131
    goto :goto_0
.end method

.method public isZoomAvailable(Z)Z
    .locals 5
    .parameter "popup"

    .prologue
    const v4, 0x7f090109

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2994
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 2996
    if-ne p1, v1, :cond_0

    .line 2997
    sget-object v1, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 2998
    invoke-static {p0, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 3001
    :goto_0
    sget-object v1, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3021
    :cond_0
    :goto_1
    return v0

    .line 3000
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 3008
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3012
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 3021
    goto :goto_1
.end method

.method public isZoomNotSupportPopup()Z
    .locals 2

    .prologue
    .line 2978
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2987
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchGallery(Ljava/lang/String;)V
    .locals 0
    .parameter "keyValue"

    .prologue
    .line 3574
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 3575
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3693
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--onActivityResult--requestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    const-string v2, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--onActivityResult--resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    packed-switch p1, :pswitch_data_0

    .line 3763
    :cond_0
    :goto_0
    return-void

    .line 3699
    :pswitch_0
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    if-eqz p3, :cond_6

    .line 3700
    const/4 v8, 0x0

    .line 3701
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3704
    :cond_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3705
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3706
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3708
    .local v13, retriever:Landroid/media/MediaMetadataRetriever;
    const-wide/16 v9, 0x0

    .line 3709
    .local v9, dateTaken:J
    :try_start_0
    new-instance v14, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v14, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3710
    .local v14, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v13, p0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3711
    const-string v2, "datetaken"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3712
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-nez v2, :cond_2

    .line 3713
    const-string v2, "date_modified"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v9, v2, v4

    .line 3714
    const-string v2, "datetaken"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3716
    :cond_2
    const-string v2, "mime_type"

    const-string v3, "video/3gpp"

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    const-string v2, "duration"

    const/16 v3, 0x9

    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3718
    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    const-string v4, "_data"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3727
    :try_start_1
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3733
    .end local v14           #values:Landroid/content/ContentValues;
    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 3734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 3747
    .end local v9           #dateTaken:J
    .end local v13           #retriever:Landroid/media/MediaMetadataRetriever;
    :goto_2
    if-eqz v8, :cond_0

    .line 3748
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3728
    .restart local v9       #dateTaken:J
    .restart local v13       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 3729
    .local v12, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 3721
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v14           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v11

    .line 3722
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v2, "Camcorder"

    const-string v3, "setDataSource failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3727
    :try_start_3
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3728
    :catch_2
    move-exception v12

    .line 3729
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 3723
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v12           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v12

    .line 3724
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3727
    :try_start_5
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 3728
    :catch_4
    move-exception v12

    .line 3729
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 3726
    .end local v12           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 3727
    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3730
    :goto_3
    throw v2

    .line 3728
    :catch_5
    move-exception v12

    .line 3729
    .restart local v12       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 3735
    .end local v9           #dateTaken:J
    .end local v12           #ex:Ljava/lang/RuntimeException;
    .end local v13           #retriever:Landroid/media/MediaMetadataRetriever;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 3736
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3737
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 3738
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_2

    .line 3739
    :cond_4
    const-string v2, "specify-data"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3740
    const-string v2, "Camcorder"

    const-string v3, "setResult OK !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setResult(I)V

    .line 3742
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_2

    .line 3744
    :cond_5
    const-string v2, "Camcorder"

    const-string v3, "Something goes wrong!! Restart attach mode."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3750
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_6
    if-nez p2, :cond_0

    .line 3751
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3753
    :try_start_7
    const-string v2, "Camcorder"

    const-string v3, "Deleting cancelled attach image"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3755
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 3756
    :catch_6
    move-exception v2

    goto/16 :goto_0

    .line 3697
    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
    .end packed-switch
.end method

.method public onAntishakeSelect(I)V
    .locals 1
    .parameter "antishake"

    .prologue
    .line 2439
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    .line 2440
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .locals 1
    .parameter "audioRecording"

    .prologue
    .line 2690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(I)V

    .line 2691
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 1
    .parameter "autocontrast"

    .prologue
    .line 2410
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutoContrast(I)V

    .line 2411
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 2523
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2524
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(IZZ)V
    .locals 0
    .parameter "speed"
    .parameter "isSubMenu"
    .parameter "fromResetSettings"

    .prologue
    .line 2622
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 632
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 637
    const-string v0, "Camcorder"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    .line 647
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    sget v2, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_DIRTY_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 648
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 649
    const-string v0, "Camcorder"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContextualFilenameSelect(I)V
    .locals 1
    .parameter "contextualFilename"

    .prologue
    .line 2713
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-nez v0, :cond_0

    .line 2714
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->showDialog(I)V

    .line 2719
    :goto_0
    return-void

    .line 2716
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 2717
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setContextualFilename(I)V

    goto :goto_0
.end method

.method public onContrastMenuSelect(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 2694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 2695
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 667
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 668
    const-string v2, "Camcorder"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 675
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 678
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setContentView(I)V

    .line 679
    const v2, 0x7f0b0007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 682
    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 683
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 685
    new-instance v2, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    .line 695
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamcorder()V

    .line 697
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v0

    .line 698
    .local v0, recordingMode:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initializeGLSurfaceView()V

    .line 702
    new-instance v2, Landroid/media/AudioManager;

    invoke-direct {v2, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 704
    const v2, 0x7f090109

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 706
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initCamcorderSound()V

    .line 716
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1383
    const-string v0, "Camcorder"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    sget-object v0, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1385
    sput-object v2, Lcom/sec/android/app/camera/Camcorder;->mNotSupportedZoomToast:Landroid/widget/Toast;

    .line 1388
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 1390
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1394
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_2

    .line 1397
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1400
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_3

    .line 1401
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 1402
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 1405
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_4

    .line 1406
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->clear()V

    .line 1407
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 1410
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_5

    .line 1411
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->clear()V

    .line 1412
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    .line 1415
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 1416
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1417
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 1420
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_7

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1422
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    .line 1425
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_8

    .line 1426
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearCaptureImageData()V

    .line 1427
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 1430
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1432
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 1435
    :cond_9
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 1436
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 1437
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1438
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1439
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_a

    .line 1440
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1441
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1443
    :cond_a
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 1444
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 1445
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1446
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1447
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1449
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1450
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 4

    .prologue
    .line 2414
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2415
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 2420
    :cond_0
    const/16 v1, 0xbd1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v1, p0, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 2421
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_1

    .line 2422
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 2423
    :cond_1
    return-void

    .line 2418
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0
.end method

.method public onEffectMenuSelect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 2503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 2504
    if-eqz p1, :cond_0

    .line 2505
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2507
    :cond_0
    return-void
.end method

.method public onEffectRecorderMenuSelectCommand(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2706
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getEffectRecorderType()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2707
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setEffectRecorderType(I)V

    .line 2708
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2710
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 2212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 2213
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 2355
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 2356
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 2426
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 2427
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 2429
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setFrontSensorMirror(I)V

    .line 2430
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStartPreviewAsync()V

    .line 2432
    :cond_0
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1930
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1935
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1936
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_3

    .line 1937
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setFocusIndicator(I)V

    .line 1940
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1943
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1944
    const-string v0, "Camcorder"

    const-string v1, "onFocusStateChanged : disable focus indicator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1948
    :cond_4
    if-nez p1, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 1953
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_6

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 1959
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    goto :goto_0
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 3901
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 3903
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 3904
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3905
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->setGuideLineSize(Landroid/view/View;)V

    .line 3906
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetFocus(Landroid/view/View;)V

    .line 3910
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 3911
    const-string v0, "Camcorder"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :goto_0
    return-void

    .line 3915
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$12;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 3963
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3964
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onGpsChanged(I)V
    .locals 3
    .parameter "gps"

    .prologue
    .line 2738
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2739
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 2756
    :goto_0
    return-void

    .line 2742
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2743
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEULAenabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEULAenable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getEULAenable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2745
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isGpsEULAEnabledinCamcorder()V

    .line 2755
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_0

    .line 2746
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2747
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->IsGpsEnableInSettings()V

    goto :goto_1

    .line 2749
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 2752
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public onGuidelineSelect(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 2668
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2669
    return-void
.end method

.method public onInflatedMenuHidden()V
    .locals 0

    .prologue
    .line 3771
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x12

    const/4 v5, 0x1

    .line 1454
    const-string v4, "Camcorder"

    const-string v6, "onKeyDown()"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    move v2, p1

    .line 1482
    .local v2, fakeKeyCode:I
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 1583
    :goto_0
    return v4

    .line 1488
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/glview/TwGLContext;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 1489
    goto :goto_0

    .line 1494
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 1495
    goto :goto_0

    .line 1497
    :catch_0
    move-exception v1

    .local v1, e:Ljava/util/NoSuchElementException;
    move v4, v5

    .line 1499
    goto :goto_0

    .line 1502
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 1503
    goto :goto_0

    .line 1506
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    .line 1507
    goto :goto_0

    .line 1510
    :cond_4
    sparse-switch v2, :sswitch_data_0

    .line 1580
    :cond_5
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mVolumeKeyPressed:Z

    if-eqz v4, :cond_f

    move v4, v5

    .line 1581
    goto :goto_0

    .line 1512
    :sswitch_0
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    move v4, v5

    .line 1515
    goto :goto_0

    :sswitch_2
    move v4, v5

    .line 1522
    goto :goto_0

    .line 1532
    :sswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isShutterPressed()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v5

    .line 1533
    goto :goto_0

    .line 1535
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomNotSupportPopup()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    .line 1536
    goto :goto_0

    .line 1538
    :cond_8
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1539
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1540
    .local v3, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1541
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1542
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v7, 0x5

    invoke-static {v8, p0, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1544
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_a

    .line 1545
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1559
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_a
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v4, :cond_b

    .line 1561
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1562
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1563
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .end local v3           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_b
    move v4, v5

    .line 1566
    goto/16 :goto_0

    .line 1547
    .restart local v3       #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v7, 0x2

    invoke-static {v8, p0, v4, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1549
    .restart local v0       #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_a

    .line 1550
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1

    .line 1568
    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v3           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :sswitch_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 1569
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1570
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    .line 1571
    :cond_d
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1572
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    :cond_e
    move v4, v5

    .line 1573
    goto/16 :goto_0

    .line 1583
    :cond_f
    invoke-super {p0, v2, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1510
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_1
        0x45 -> :sswitch_3
        0x46 -> :sswitch_3
        0x4f -> :sswitch_2
        0x50 -> :sswitch_4
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x9c -> :sswitch_3
        0x9d -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 1633
    const-string v4, "Camcorder"

    const-string v6, "onKeyUp()"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    move v2, p1

    .line 1636
    .local v2, fakeKeyCode:I
    const/4 v3, 0x0

    .line 1658
    .local v3, volumeKey:Z
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLInitialized:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 1783
    :goto_0
    return v4

    .line 1663
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/glview/TwGLContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 1664
    goto :goto_0

    .line 1669
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v4, v2, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1670
    const-string v4, "Camcorder"

    const-string v6, "Delivering onKeyUp to other view"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 1671
    goto :goto_0

    .line 1673
    :catch_0
    move-exception v1

    .local v1, e:Ljava/util/NoSuchElementException;
    move v4, v5

    .line 1675
    goto :goto_0

    .line 1678
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isResetDialogActive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1679
    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 1680
    const-string v4, "Camcorder"

    const-string v6, "BACK KEY PRESSED! : dissmissResetDialog"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->dismissResetDialog()V

    :cond_3
    move v4, v5

    .line 1683
    goto :goto_0

    .line 1686
    :cond_4
    sparse-switch v2, :sswitch_data_0

    .line 1780
    if-eqz v3, :cond_14

    move v4, v5

    .line 1781
    goto :goto_0

    .line 1692
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v4, :cond_5

    .line 1693
    const/16 v4, 0x27

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v4, p0, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    .line 1694
    .local v0, cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    if-eqz v0, :cond_5

    .line 1695
    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .end local v0           #cmd:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_5
    move v4, v5

    .line 1697
    goto :goto_0

    .line 1701
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1703
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1709
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    .line 1710
    goto/16 :goto_0

    .line 1712
    :cond_7
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v4, :cond_8

    .line 1713
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camcorder;->showDlg(I)V

    move v4, v5

    .line 1714
    goto/16 :goto_0

    .line 1717
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isUsbMassStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    .line 1718
    goto/16 :goto_0

    .line 1722
    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isPrepareRecording()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    const/4 v6, 0x5

    if-ne v4, v6, :cond_b

    .line 1724
    :cond_a
    const-string v4, "Camcorder"

    const-string v6, "isPrepareRecording, ignore shutter"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1725
    goto/16 :goto_0

    .line 1738
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleShutter()V

    move v4, v5

    .line 1739
    goto/16 :goto_0

    .line 1741
    :sswitch_2
    const-string v4, "Camcorder"

    const-string v6, "BACK KEY PRESSED!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1744
    const-string v4, "Camcorder"

    const-string v6, "event isCanceled() true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1745
    goto/16 :goto_0

    .line 1747
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingEngine()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingPreview()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1750
    :cond_d
    const-string v4, "Camcorder"

    const-string v6, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1751
    goto/16 :goto_0

    .line 1754
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1755
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 1756
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1759
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    move v4, v5

    .line 1760
    goto/16 :goto_0

    :sswitch_3
    move v4, v5

    .line 1763
    goto/16 :goto_0

    .line 1765
    :sswitch_4
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_10

    move v4, v5

    .line 1766
    goto/16 :goto_0

    .line 1768
    :cond_10
    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v6, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_FULL_UP:I

    if-eq v4, v6, :cond_11

    iget v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    sget v6, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_HALF_PRESS:I

    if-ne v4, v6, :cond_13

    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isTimerCounting()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1769
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1770
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_1

    .line 1772
    :cond_12
    sget v4, Lcom/sec/android/app/camera/Camcorder;->CA_HARDKEY_NONE:I

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mHardKeyStatus:I

    move v4, v5

    .line 1773
    goto/16 :goto_0

    :cond_13
    move v4, v5

    .line 1775
    goto/16 :goto_0

    .line 1783
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1686
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x50 -> :sswitch_4
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;)V
    .locals 10
    .parameter "keyValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3578
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enterMediaBrowerFromCamcorder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    if-nez p1, :cond_1

    .line 3670
    :cond_0
    :goto_0
    return-void

    .line 3584
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIsLaunchGallery()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3585
    const-string v5, "Camcorder"

    const-string v6, "returning because it is launch gallery"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3591
    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    .line 3593
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 3595
    const-string v5, "quickview"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "reviewon"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3597
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3598
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.gallery3d"

    const-string v6, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3603
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3604
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3605
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3610
    :goto_1
    const-string v5, "from-Camera"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3612
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3631
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto :goto_0

    .line 3607
    :cond_4
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 3613
    :catch_0
    move-exception v1

    .line 3614
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "Camcorder"

    const-string v6, "Gallery was disabled!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setIsLaunchGallery(Z)V

    goto :goto_0

    .line 3632
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const-string v5, "from_app"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3633
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3634
    .local v3, newExtras:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3636
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3637
    const-string v5, "noFaceDetection"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3638
    const-string v5, "video-thumbnail"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3639
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 3640
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "output"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 3641
    .local v4, saveUri:Landroid/net/Uri;
    const-string v5, "output"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3646
    .end local v4           #saveUri:Landroid/net/Uri;
    :goto_2
    iget-boolean v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    if-eqz v5, :cond_6

    .line 3647
    const-string v5, "skip-savediscard"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3650
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 3651
    const-string v5, "latitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3652
    const-string v5, "longitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 3655
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v5

    if-ne v5, v8, :cond_8

    .line 3656
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 3657
    const-string v5, "weather"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWeather()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3660
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3661
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3663
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 3665
    const/16 v5, 0x7d2

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/camera/Camcorder;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3668
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 3643
    :cond_9
    const-string v5, "attach-video"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 2901
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    return-void
.end method

.method public onModechanged()V
    .locals 2

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2224
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 2230
    :goto_0
    return-void

    .line 2228
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 2229
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->switchToCamera()V

    goto :goto_0
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2686
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 2687
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 819
    const-string v0, "Camcorder"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingModePopup:Lcom/sec/android/app/camera/glwidget/TwGLRecordingModePopup;

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->closeVideoFileDescriptor()V

    .line 838
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->notifyOnPause()V

    .line 839
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->PauseGLSurface()V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getSystemSoundEffect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableSystemSoundEffect()V

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->ORIENTATION_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camcorder;->SET_DIRTY_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingPopupHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 850
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mDirtyCount:I

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 859
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->stopKickThumbSuspend()V

    .line 862
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->resumeAudioPlayback()V

    .line 865
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->unregisterCallstateListener()V

    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 875
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_7

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 878
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartRecordingThreadComplete()V

    .line 879
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 881
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->onFocusStateChanged(I)V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v3, :cond_9

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 892
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 896
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 903
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->onPause()V

    .line 911
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_8

    .line 912
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->onPause()V

    .line 915
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 918
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideAllDlg()V

    .line 920
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 921
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostRecordingSnapAnimation()V

    .line 936
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 937
    return-void

    .line 889
    :cond_9
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_1

    .line 916
    :catch_0
    move-exception v0

    goto :goto_2

    .line 871
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onRecordingModeMenuSelect(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 2265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camcorder;->onRecordingModeMenuSelect(IZ)V

    .line 2266
    return-void
.end method

.method public onRecordingModeMenuSelect(IZ)V
    .locals 4
    .parameter "recordingMode"
    .parameter "fromResetSettings"

    .prologue
    .line 2269
    const/4 v0, 0x0

    .line 2270
    .local v0, isShotSlowMotionNeeded:Z
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingModeChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    .line 2278
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 2280
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2282
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getFocusState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2283
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 2285
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 2286
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->updateFocusIndicator()V

    .line 2288
    if-nez p2, :cond_1

    .line 2289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2300
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v2, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    if-eqz v0, :cond_3

    .line 2303
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2306
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2307
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2309
    const-string v1, "Camcorder"

    const-string v2, "onRecordingModeChanged out"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    return-void
.end method

.method public onResolutionMenuSelect(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2363
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 2364
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2365
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateIfResolutionChanged()V

    .line 2366
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 3686
    if-eqz p1, :cond_0

    .line 3687
    const-string v0, "last_video_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastVideoUri:Landroid/net/Uri;

    .line 3689
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3690
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const v14, 0x7f0900f1

    const/4 v12, 0x0

    const/16 v13, 0x68

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 980
    const-string v10, "Camcorder"

    const-string v11, "onResume"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    sput-boolean v9, Lcom/sec/android/app/camera/Camcorder;->mCameraActivitySwitching:Z

    .line 1006
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1007
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Security()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1008
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1010
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1024
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilter()V

    .line 1026
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->onResume()V

    .line 1028
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v10

    if-ne v10, v8, :cond_1

    .line 1029
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1030
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 1031
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1034
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1035
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkBatteryStatus()V

    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "torch_light"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_5

    move v1, v8

    .line 1044
    .local v1, externalTorchEnabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1046
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraDuringCall()V

    .line 1048
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Call()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_VoIPCall()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1049
    :cond_3
    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCheckVoIPCalling:Z

    if-eq v10, v8, :cond_4

    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCheckVtCalling:Z

    if-eq v10, v8, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->cameraDuringCall()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1051
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 1052
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1307
    :goto_1
    return-void

    .end local v1           #externalTorchEnabled:Z
    :cond_5
    move v1, v9

    .line 1043
    goto :goto_0

    .line 1056
    .restart local v1       #externalTorchEnabled:Z
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v10, :cond_7

    .line 1057
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->cameraDuringCall()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1058
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CamcorderEngine;->setShutterSoundEnable(Z)V

    .line 1064
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 1076
    .local v7, win:Landroid/view/Window;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v10, :cond_8

    .line 1077
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 1078
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1096
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1097
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-nez v10, :cond_9

    .line 1098
    const-string v10, ""

    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    sput-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    .line 1100
    :cond_9
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    const v11, 0x7f0900e9

    invoke-virtual {v10, v11}, Landroid/widget/Toast;->setText(I)V

    .line 1101
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1102
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1111
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1112
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1113
    const-string v10, "Camcorder"

    const-string v11, "onResume CAMERA disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1116
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 1118
    :cond_a
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1119
    const-string v10, "Camcorder"

    const-string v11, "onResume MICROPHONE disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const v10, 0x10401ec

    invoke-static {p0, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1122
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    .line 1123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 1126
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1128
    .local v2, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1129
    const-string v10, "Camcorder"

    const-string v11, "onResume CAMERA disable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-static {p0, v14, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1132
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1136
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback()V

    .line 1139
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->registerCallStateListener()V

    .line 1141
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 1142
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 1144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isRecordingMenuTop()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1147
    :cond_d
    iput-object v12, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1150
    .local v3, myExtras:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->setIsVideoCaptureIntent(Z)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 1151
    const-string v10, "from_app"

    iput-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1153
    if-eqz v3, :cond_24

    .line 1154
    const-string v10, "skip-savediscard"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->mSkipSaveDiscard:Z

    .line 1156
    const-string v10, "mms"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1158
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1159
    const-string v10, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1160
    .local v4, sizelimit:J
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->setRequestedRecordingSize(J)V

    .line 1161
    const-string v10, "Camcorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onResume onMaxsize"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraHolder;->getBackCameraId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCameraId(I)V

    .line 1165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v9, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1167
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1168
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1060
    .end local v0           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #myExtras:Landroid/os/Bundle;
    .end local v4           #sizelimit:J
    .end local v7           #win:Landroid/view/Window;
    :cond_e
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->setShutterSoundEnable(Z)V

    goto/16 :goto_2

    .line 1104
    .restart local v7       #win:Landroid/view/Window;
    :cond_f
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-eqz v10, :cond_10

    .line 1105
    sget-object v10, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->cancel()V

    .line 1107
    :cond_10
    sput-object v12, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    goto/16 :goto_3

    .line 1171
    .restart local v0       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v2       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v3       #myExtras:Landroid/os/Bundle;
    :cond_11
    const-string v10, "videocall_preset"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setVideocallPresetSelected(Z)V

    .line 1174
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x13

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1177
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1236
    :cond_12
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 1238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 1240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 1242
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v10, :cond_13

    .line 1243
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v10, :cond_27

    .line 1244
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1245
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 1246
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 1253
    :cond_13
    :goto_5
    iget-boolean v10, p0, Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->isProviderEnabled()Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderEngine;->isNetworkProviderEnabled()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1254
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 1255
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camcorder;->bFromSecureSetting:Z

    .line 1257
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/16 v10, 0x82

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1259
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 1260
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 1266
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1268
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9, v8}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleWait(I)V

    .line 1269
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1271
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v9, :cond_16

    .line 1272
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refresh()V

    .line 1273
    iget-object v9, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 1276
    :cond_16
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initRemains()V

    .line 1278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v9

    if-ne v9, v8, :cond_17

    .line 1279
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v8

    const/16 v9, 0x79

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1281
    :cond_17
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->suspendThumbWork()V

    .line 1292
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v8, :cond_18

    .line 1293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showSideMenuItems()V

    .line 1294
    :cond_18
    iget-object v8, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v8, :cond_19

    .line 1295
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    .line 1306
    :cond_19
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1179
    :cond_1a
    const-string v10, "video_editor"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v10

    if-ne v10, v8, :cond_1b

    .line 1186
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1188
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_4

    .line 1182
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1183
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_6

    .line 1185
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_6

    .line 1190
    :cond_1d
    const-string v10, "email"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1192
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1193
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1196
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v9, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_4

    .line 1201
    :cond_1f
    const-string v10, "video-size"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_22

    .line 1202
    const-string v10, "video-size"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    .line 1203
    .local v6, value:I
    const/16 v10, 0x12

    if-eq v6, v10, :cond_23

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedBackCamcorderResolutionFeature(I)Z

    move-result v10

    if-nez v10, :cond_21

    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->isSupportedFrontCamcorderResolutionFeature(I)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1206
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1212
    .end local v6           #value:I
    :cond_22
    :goto_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1215
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_RequestedSize()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1216
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_1

    .line 1208
    .restart local v6       #value:I
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    const/16 v11, 0x12

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_7

    .line 1221
    .end local v6           #value:I
    :cond_24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1223
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto/16 :goto_4

    .line 1226
    :cond_25
    iput-object v12, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 1227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {v10, v9, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderRecordingMode()I

    move-result v10

    if-nez v10, :cond_26

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v11

    invoke-virtual {v10, v13, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1230
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 1232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/sec/android/app/camera/CameraSettings;->setAttachEmailMode(Z)V

    goto/16 :goto_4

    .line 1249
    :cond_27
    iget-object v10, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateEmptyButton()V

    goto/16 :goto_5
.end method

.method public onReviewMenuSelect(I)V
    .locals 1
    .parameter "cameraReview"

    .prologue
    .line 2672
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 2674
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 2698
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 2699
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 3677
    if-eqz p1, :cond_0

    .line 3678
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3679
    const-string v0, "last_video_uri"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3682
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3683
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 1968
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2004
    :goto_0
    return v5

    .line 1972
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 1974
    .local v0, currentCallbackValue:I
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    if-ge v1, v0, :cond_4

    .line 1975
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 1976
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    if-le v1, v2, :cond_1

    .line 1977
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 1985
    :cond_1
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 1987
    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    .line 1988
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    .line 1990
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    if-gez v1, :cond_2

    .line 1991
    iput v5, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 1994
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    sget v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v1, v2, :cond_3

    .line 1995
    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    .line 1998
    :cond_3
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 2000
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->newZoomValue:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2001
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 2002
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2003
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1979
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    if-le v1, v0, :cond_1

    .line 1980
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 1981
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    if-ge v1, v2, :cond_1

    .line 1982
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v2, 0x0

    .line 2008
    const-string v4, "Camcorder"

    const-string v5, "onScaleBegin"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2045
    :cond_0
    :goto_0
    return v2

    .line 2014
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isZoomNotSupportPopup()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2020
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2022
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    .line 2023
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mOverValue:I

    .line 2024
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPreOvervalue:I

    .line 2025
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mPreviousCallbackValue:I

    .line 2027
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v4, :cond_2

    .line 2028
    new-instance v4, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2029
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setLastOrientation(I)V

    .line 2030
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2031
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2034
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2035
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2036
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v4, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2039
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2040
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2041
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2042
    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2044
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    move v2, v3

    .line 2045
    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2049
    const-string v0, "Camcorder"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2051
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 2

    .prologue
    .line 2443
    const-string v0, "Camcorder"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2446
    const-string v0, "Camcorder"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :goto_0
    return-void

    .line 2450
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2451
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopEngine()V

    .line 2453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2455
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSwitchCamera()V

    .line 2457
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 2458
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 2460
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2462
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    goto :goto_0
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 2702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 2703
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 2891
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilterBattery()V

    .line 2897
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 2682
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2683
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    .line 3219
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimerEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 3221
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_0

    .line 3222
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3223
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3225
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3226
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->showMenu()V

    .line 3227
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->updateTime(I)V

    .line 3228
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 2359
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 2360
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1791
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostCaptureAnimation()V

    .line 1792
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->stopPostRecordingSnapAnimation()V

    .line 1803
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1804
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 1906
    :goto_0
    return v1

    .line 1810
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1811
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 1812
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v1, v2

    .line 1814
    goto :goto_0

    .line 1816
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v1, v2

    .line 1818
    goto :goto_0

    .line 1821
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isPreviewTouchEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 1822
    goto :goto_0

    .line 1825
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isAutoFocusing()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 1826
    goto :goto_0

    .line 1829
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 1830
    goto :goto_0

    .line 1832
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->isZoomAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1834
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1838
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    move v1, v2

    .line 1840
    goto :goto_0

    .line 1847
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1906
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1849
    :pswitch_0
    const-string v1, "Camcorder"

    const-string v3, "MotionEvent.ACTION_DOWN"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1861
    goto :goto_0

    .line 1863
    :pswitch_1
    const-string v1, "Camcorder"

    const-string v3, "MotionEvent.ACTION_UP"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    move v1, v2

    .line 1894
    goto/16 :goto_0

    .line 1835
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1847
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onVideoRecordingStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3246
    const-string v1, "Camcorder"

    const-string v2, "onVideoRecordingStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3249
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 3250
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3251
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->showMenu()V

    .line 3252
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->startTimer()V

    .line 3253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3254
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    .line 3258
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v1, :cond_1

    .line 3269
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3272
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getTouchAutoFocusActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3276
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isCamcorderFastMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3280
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 3281
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3282
    return-void
.end method

.method public onVideoStoringCompleted(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3458
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-eqz v0, :cond_0

    .line 3464
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 3465
    iput-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 3468
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_2

    .line 3532
    :cond_1
    :goto_0
    return-void

    .line 3479
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3481
    new-instance v0, Lcom/sec/android/app/camera/RecordingData;

    invoke-direct {v0}, Lcom/sec/android/app/camera/RecordingData;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    .line 3482
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e0

    const/16 v3, 0x168

    invoke-static {v1, v2, v3, v5}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/RecordingData;->setRecordingData(Landroid/graphics/Bitmap;)V

    .line 3484
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v0

    if-nez v0, :cond_3

    .line 3485
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V

    .line 3488
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_4

    .line 3489
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_4

    .line 3490
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-nez v0, :cond_8

    .line 3491
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Ljava/lang/String;Z)V

    .line 3500
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3501
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_5

    .line 3502
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3505
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3507
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 3508
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_9

    .line 3509
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 3510
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 3511
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 3525
    :cond_6
    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battLevel:I

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v0, :cond_7

    .line 3526
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    .line 3529
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/Camcorder;->battTemp:I

    const/16 v1, -0x32

    if-gt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v0, :cond_1

    .line 3530
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->handlePluggedLowBattery(Z)V

    goto/16 :goto_0

    .line 3493
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 3494
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 3495
    iput-object v6, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    goto :goto_1

    .line 3513
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->launchGallery(Ljava/lang/String;)V

    goto :goto_2

    .line 3516
    :cond_a
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-nez v0, :cond_b

    .line 3517
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 3518
    const-string v0, "reviewon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    goto :goto_2

    .line 3521
    :cond_b
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto :goto_2
.end method

.method public onVideoStoringFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3535
    const-string v0, "Camcorder"

    const-string v1, "onVideoStoringFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_1

    .line 3562
    :cond_0
    :goto_0
    return-void

    .line 3551
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 3553
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideZoomMenu()V

    .line 3554
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_2

    .line 3555
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRecordingLayout(Z)V

    .line 3558
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 3559
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    if-eqz v0, :cond_0

    .line 3560
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    goto :goto_0
.end method

.method public onVoiceCommandMenuSelect(I)V
    .locals 2
    .parameter "voicecommand"

    .prologue
    .line 2677
    const-string v0, "Camcorder"

    const-string v1, "onVoiceCommandMenuSelect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraVoiceCommand(I)V

    .line 2679
    return-void
.end method

.method public onVolumeKeyMenuSelect(I)V
    .locals 1
    .parameter "volumeKey"

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setVolumeKey(I)V

    .line 2723
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 2489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2490
    if-eqz p1, :cond_0

    .line 2491
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 2493
    :cond_0
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2220
    :goto_0
    return-void

    .line 2219
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto :goto_0
.end method

.method public pauseAudioPlayback_TimerBgm()V
    .locals 4

    .prologue
    .line 621
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 623
    return-void
.end method

.method protected pauseMwCamcorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1326
    const-string v0, "Camcorder"

    const-string v1, "WINDOW_FOCUS_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 1337
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 1338
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mwLostWinFocus:Z

    .line 1340
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 1341
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_3

    .line 1342
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartRecordingThreadComplete()V

    .line 1345
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 1347
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->onFocusStateChanged(I)V

    .line 1350
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 1353
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 1358
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1364
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1365
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 1369
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 1370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 1371
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1373
    :cond_3
    return-void

    .line 1334
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateEmptyButton()V

    goto/16 :goto_0

    .line 1355
    :cond_5
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_1
.end method

.method public playCameraSound(II)V
    .locals 8
    .parameter "Sound"
    .parameter "loop"

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2924
    :cond_0
    const-string v0, "Camcorder"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :goto_0
    return-void

    .line 2928
    :cond_1
    const-string v0, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playCameraSound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const/16 v7, 0xf

    .line 2932
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 2940
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 2941
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2942
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=4;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 2946
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method public playFocusSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getShutterSoundEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2952
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, p1}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0
.end method

.method public reAlignForPreview()V
    .locals 3

    .prologue
    .line 2870
    const v1, 0x7f0b0008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2872
    .local v0, previewLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 2874
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2888
    :goto_0
    return-void

    .line 2885
    :cond_0
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method public resetFocus(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3449
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->resetFocus(Landroid/view/View;)V

    .line 3451
    :cond_0
    return-void
.end method

.method public resetIndicatorTimerDrift()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 3286
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTimeDrift:J

    .line 3287
    iput-wide v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPassedTimeAfterUpdatingRecordingButtonMs:J

    .line 3288
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 2351
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 2352
    return-void
.end method

.method public resetPosIndicator()V
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->resetPosIndicator()V

    .line 1927
    :cond_0
    return-void
.end method

.method public resetScaleDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2060
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2062
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 2067
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2068
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2070
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_2

    .line 2071
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecorderStarting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2078
    :cond_2
    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 1

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 3374
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopEngine()V

    .line 3376
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResetSettings()V

    .line 3378
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 3379
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 3381
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 3382
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3426
    const-string v0, "Camcorder"

    const-string v1, "resetTouchFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3428
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopTouchAutoFocus()V

    .line 3433
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCAFDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3445
    :goto_0
    return-void

    .line 3436
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_2

    .line 3437
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator()V

    .line 3439
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3440
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->cancelAutoFocus()V

    .line 3442
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearFocusState()V

    .line 3443
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setTouchAutoFocusActive(Z)V

    .line 3444
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsTouchFocusStarted:Z

    goto :goto_0
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 7

    .prologue
    .line 2808
    const-string v4, "Camcorder"

    const-string v5, "resizeForPreviewAspectRatio"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const/4 v1, 0x0

    .line 2814
    .local v1, result:Z
    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2818
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2823
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2853
    :pswitch_0
    const/16 v3, 0x280

    .line 2854
    .local v3, screenWidth:I
    const/16 v2, 0x1e0

    .line 2857
    .local v2, screenHeight:I
    :goto_0
    const-string v4, "Camcorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeForPreviewAspectRatio - width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setSize(II)Z

    move-result v1

    .line 2865
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 2866
    return v1

    .line 2825
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2826
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2827
    .restart local v2       #screenHeight:I
    goto :goto_0

    .line 2829
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2830
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2831
    .restart local v2       #screenHeight:I
    goto :goto_0

    .line 2833
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2834
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2835
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2837
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2838
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2839
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2841
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07008f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2842
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2843
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2845
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070091

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2846
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2847
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2849
    .end local v2           #screenHeight:I
    .end local v3           #screenWidth:I
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    .line 2850
    .restart local v3       #screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070094

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 2851
    .restart local v2       #screenHeight:I
    goto/16 :goto_0

    .line 2823
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public restartInactivityTimer()V
    .locals 1

    .prologue
    .line 4251
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4256
    :goto_0
    return-void

    .line 4254
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->stopInactivityTimer()V

    .line 4255
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->startInactivityTimer()V

    goto :goto_0
.end method

.method public resumeAudioPlayback_TimerBgm()V
    .locals 2

    .prologue
    .line 626
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 628
    return-void
.end method

.method protected resumeMwCamcorder()V
    .locals 4

    .prologue
    const/16 v3, 0x1f4

    .line 1310
    const-string v0, "Camcorder"

    const-string v1, "WINDOW_FOCUS_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    .line 1314
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 1321
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 1322
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1323
    return-void

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateEmptyButton()V

    goto :goto_0
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3895
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setConnectingStateGPS(I)V

    .line 3897
    :cond_0
    return-void
.end method

.method public setContinuousAF()V
    .locals 1

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->removeHideFocusRectMessage()V

    .line 2518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2519
    return-void
.end method

.method public setDefaultLayout()V
    .locals 0

    .prologue
    .line 3369
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateUIWhenDefaultLayout()V

    .line 3370
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 4336
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 4337
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setGuideLineSize(Landroid/view/View;)V

    .line 4338
    :cond_0
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 4239
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkLaunchGallery:Z

    .line 4240
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 3673
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 3674
    return-void
.end method

.method public setPinupMode(Z)V
    .locals 0
    .parameter "pinupMode"

    .prologue
    .line 4448
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsPinupMode:Z

    .line 4449
    return-void
.end method

.method public setRecordingStopAvailable(Z)V
    .locals 0
    .parameter "available"

    .prologue
    .line 2567
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingStopAvailable:Z

    .line 2568
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 4234
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 4235
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setSelectedMenuId(I)V

    .line 4236
    :cond_0
    return-void
.end method

.method public setSurfaceTransparent()V
    .locals 4

    .prologue
    const/16 v3, 0x1f6

    .line 1376
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->removeMessages(I)V

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Lcom/sec/android/app/camera/Camcorder$MainHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/app/camera/Camcorder$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1380
    :cond_0
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 1
    .parameter "active"

    .prologue
    .line 2110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mTouchAutoFocusActive:Z

    .line 2112
    return-void
.end method

.method public setWeatherConnect(Z)V
    .locals 1
    .parameter "connect"

    .prologue
    .line 4438
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    if-eqz v0, :cond_0

    .line 4439
    if-eqz p1, :cond_1

    .line 4440
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Connect()V

    .line 4445
    :cond_0
    :goto_0
    return-void

    .line 4442
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->Disconnect()V

    goto :goto_0
.end method

.method public showAudioRecordingIndicator()V
    .locals 1

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showAudioOffIndicator()V

    .line 2560
    :cond_0
    return-void
.end method

.method public showEditBackground(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 4260
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showEditBackground(Z)V

    .line 4262
    :cond_0
    return-void
.end method

.method public showFocusIndicator(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->showFocusIndicator(I)V

    .line 2104
    :cond_0
    return-void
.end method

.method public showShutterButton()V
    .locals 1

    .prologue
    .line 4230
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showShutterButton()V

    .line 4231
    return-void
.end method

.method public showSideMenu()V
    .locals 1

    .prologue
    .line 4222
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenu()V

    .line 4223
    return-void
.end method

.method public showSideMenuItems()V
    .locals 1

    .prologue
    .line 4214
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showSideMenuItems()V

    .line 4215
    return-void
.end method

.method public showSnapshotLimitationDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 4380
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4415
    :cond_0
    :goto_0
    return-void

    .line 4383
    :cond_1
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showSnapshotLimitationDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSnapshotLimitationDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSnapshotLimitationDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 4385
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4386
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4388
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4389
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4390
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 4392
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f09014a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4394
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4395
    const v5, 0x1010355

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 4396
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4397
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4398
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4400
    new-instance v5, Lcom/sec/android/app/camera/Camcorder$17;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camcorder$17;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4407
    const v5, 0x7f0900a5

    new-instance v6, Lcom/sec/android/app/camera/Camcorder$18;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camcorder$18;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4412
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    .line 4413
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mSnapshotLimitationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showWaitingAnimation()V
    .locals 0

    .prologue
    .line 1628
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showWaitingAnimation()V

    .line 1629
    return-void
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->shrinkFocusRect()V

    .line 1922
    :cond_0
    return-void
.end method

.method public startContinuousAF()V
    .locals 4

    .prologue
    .line 4341
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v1, :cond_1

    .line 4350
    :cond_0
    :goto_0
    return-void

    .line 4344
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->startContinuousAF()V

    .line 4345
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4346
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 4347
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 4348
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->hideCAFButton()V

    goto :goto_0
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 3996
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v1, :cond_0

    .line 3997
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    if-nez v1, :cond_1

    .line 3999
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4094
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4002
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4003
    .local v0, orientation:I
    const-string v1, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4005
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RecordingData;->getRecordingData()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 4007
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RecordingData;->clear()V

    .line 4008
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mLastRecordingData:Lcom/sec/android/app/camera/RecordingData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4091
    .end local v0           #orientation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3996
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startPostRecordingSnapAnimation()V
    .locals 7

    .prologue
    .line 4143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_0

    .line 4144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4145
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4149
    :cond_0
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 4150
    .local v6, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4151
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$14;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 4168
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 4170
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mPostRecordingSnapImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4175
    .end local v6           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :goto_0
    monitor-exit p0

    return-void

    .line 4143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4172
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 4354
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->stopContinuousAF()V

    .line 4355
    :cond_0
    return-void
.end method

.method public updateCamcorderSpeedMenu()V
    .locals 0

    .prologue
    .line 2592
    return-void
.end method

.method public updateIfResolutionChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x68

    .line 2369
    const-string v0, "Camcorder"

    const-string v1, "updateIfResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2372
    const-string v0, "Camcorder"

    const-string v1, "resolution is changed. update for new resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolutionChanged(Z)V

    .line 2375
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 2376
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2378
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2381
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x7d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAntishake()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 2384
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 2390
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2391
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2393
    :cond_1
    return-void
.end method

.method public updateRecordingMenu()V
    .locals 4

    .prologue
    .line 3330
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/16 v2, 0xbd3

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByViewId(ILcom/sec/android/glview/TwGLViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;

    .line 3331
    .local v0, glrecordingMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;
    if-eqz v0, :cond_0

    .line 3332
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 3333
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 3335
    :cond_0
    return-void
.end method

.method public updateRecordingSnapThumbnail(I)V
    .locals 3
    .parameter "orientationForPicture"

    .prologue
    const/4 v2, 0x1

    .line 4194
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 4195
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4196
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    .line 4197
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->setThumbnailButtonDimmed(Z)V

    .line 4200
    :cond_0
    return-void
.end method

.method public updateRemainTime()V
    .locals 2

    .prologue
    .line 3778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getRemainStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    .line 3779
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    if-eqz v0, :cond_0

    .line 3780
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mGLCamcorderBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;

    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRemainTime:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderBaseIndicators;->setRemainTime(I)V

    .line 3782
    :cond_0
    return-void
.end method

.method public updateSideMenuBackground(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    if-eqz v0, :cond_0

    .line 2397
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2398
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->hideBackground()V

    .line 2407
    :cond_0
    :goto_0
    return-void

    .line 2404
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->showBackground()V

    goto :goto_0
.end method

.method public updateUIWhenDefaultLayout()V
    .locals 4

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetLayout()V

    .line 3387
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3388
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0xbd2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 3389
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v0, :cond_0

    .line 3390
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3392
    :cond_0
    if-eqz v1, :cond_1

    .line 3393
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 3394
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 3396
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3397
    return-void
.end method

.method public updateUIWhenResetSettings()V
    .locals 6

    .prologue
    const/16 v5, 0xbd1

    .line 3400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 3401
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 3402
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 3403
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 3404
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 3405
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 3406
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 3408
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3409
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_2

    .line 3410
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3417
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0xbd2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    .line 3418
    .local v2, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    if-eqz v2, :cond_1

    .line 3419
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshEditableMenu()V

    .line 3420
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->refreshAnchors()V

    .line 3422
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3423
    return-void

    .line 3412
    .end local v2           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    .line 3413
    .local v1, editableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;
    if-eqz v1, :cond_0

    .line 3414
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenSwitchCamera()V
    .locals 3

    .prologue
    .line 2466
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resetTouchFocus()V

    .line 2467
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 2468
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->updateSideMenuBackground(I)V

    .line 2469
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2470
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->reAlignForPreview()V

    .line 2471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    .line 2481
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_CamcorderEnablePromptPopupToSelectRecMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2482
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2483
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showRecordingModePopup()V

    .line 2486
    :cond_0
    return-void
.end method
