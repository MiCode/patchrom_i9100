.class public Lcom/android/server/PowerManagerService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/LocalPowerManager;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;,
        Lcom/android/server/PowerManagerService$DVFSLockList;,
        Lcom/android/server/PowerManagerService$DVFSLock;,
        Lcom/android/server/PowerManagerService$LockList;,
        Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;,
        Lcom/android/server/PowerManagerService$TimeoutTask;,
        Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;,
        Lcom/android/server/PowerManagerService$SmartSleepTask;,
        Lcom/android/server/PowerManagerService$PokeLock;,
        Lcom/android/server/PowerManagerService$WakeLock;,
        Lcom/android/server/PowerManagerService$SettingsObserver;,
        Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;,
        Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;,
        Lcom/android/server/PowerManagerService$DockReceiver;,
        Lcom/android/server/PowerManagerService$BootCompletedReceiver;,
        Lcom/android/server/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    }
.end annotation


# static fields
.field private static final ACTION_AUTO_POWER_OFF:Ljava/lang/String; = "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

.field private static final ACTION_BROADCAST_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field private static final ACTION_PROXIMITY_CP:Ljava/lang/String; = "android.intent.action.PROXIMITY_CP"

.field private static final ALL_BRIGHT:I = 0xf

.field private static final ALL_LIGHTS_OFF:I = 0x0

.field private static final ANIM_SETTING_OFF:I = 0x10

.field private static final ANIM_SETTING_ON:I = 0x1

.field static final ANIM_STEPS:I = 0xa

.field static final AUTOBRIGHTNESS_ANIM_STEPS:I = 0x14

.field static final AUTODIMNESS_ANIM_STEPS:I = 0x147ae1

.field private static final AUTO_POWER_OFF_REQUEST:I = 0x0

.field private static final BATTERY_LOW_BIT:I = 0x10

.field private static final BUTTON_BRIGHT_BIT:I = 0x4

.field static final DEBUG_SCREEN_ON:Z = false

.field private static final DEFAULT_SCREEN_BRIGHTNESS:I = 0xc0

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final EXTRA_PROXIMITY_CP:Ljava/lang/String; = "cmd"

.field private static final FULL_WAKE_LOCK_ID:I = 0x2

.field static final IMMEDIATE_ANIM_STEPS:I = 0x4

.field static final INITIAL_BUTTON_BRIGHTNESS:I = 0x0

.field static final INITIAL_KEYBOARD_BRIGHTNESS:I = 0x0

.field static final INITIAL_SCREEN_BRIGHTNESS:I = 0xff

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field private static final LIGHTS_MASK:I = 0xe

.field private static final LIGHT_SENSOR_DELAY:I = 0xbb8

.field private static final LIGHT_SENSOR_OFFSET_SCALE:I = 0x8

.field private static final LIGHT_SENSOR_RANGE_EXPANSION:I = 0x14

.field private static final LIGHT_SENSOR_RATE:I = 0xf4240

.field private static final LOCK_MASK:I = 0x3f

.field private static final LOG_PARTIAL_WL:Z = true

.field private static final LOG_TOUCH_DOWNS:Z = true

.field private static final LONG_DIM_TIME:I = 0x1b58

.field private static final LONG_KEYLIGHT_DELAY:I = 0x1770

.field private static final LOW_BATTERY_THRESHOLD:I = 0x5

.field private static final MEDIUM_KEYLIGHT_DELAY:I = 0x3a98

.field private static final NOMINAL_FRAME_TIME_MS:I = 0x10

.field static final PARTIAL_NAME:Ljava/lang/String; = "PowerManagerService"

.field private static final PARTIAL_WAKE_LOCK_ID:I = 0x1

.field static POWERSAVEMODE_BRIGHTNESS_OFFSET:I = 0x0

.field private static final PROXIMITY_SENSOR_DELAY:I = 0x3e8

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SAMSUNG_PHONECALL_DIM_DELAY:I = 0xfa0

.field private static final SAMSUNG_PHONECALL_KEYLIGHT_DELAY:I = 0x1770

.field private static final SAMSUNG_PHONECALL_SCREENOFF_DELAY:I = 0x4e20

.field private static final SCREEN_BRIGHT:I = 0x3

.field private static final SCREEN_BRIGHT_BIT:I = 0x2

.field private static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field private static final SCREEN_DIM:I = 0x1

.field private static final SCREEN_KEYBOARD_BRIGHT:I = 0xb

.field private static final SCREEN_OFF:I = 0x0

.field private static final SCREEN_ON_BIT:I = 0x1

.field private static final SHORT_KEYLIGHT_DELAY_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field private static final mAutoBrightnessWithTiltEnabled:Z = true

.field private static final mDebugDVFSLock:Z = false

.field private static final mDebugLightAnimation:Z = false

.field private static final mDebugLightSensor:Z = true

.field private static final mDebugProximitySensor:Z = true

.field private static mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

.field private static final mIsNorthAmericaSalesCode:Z

.field private static final mSalesCode:Ljava/lang/String;

.field private static final mSpew:Z


# instance fields
.field private final MY_PID:I

.field private final MY_UID:I

.field private mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

.field private mActivityService:Landroid/app/IActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAnimateScreenLights:Z

.field private mAnimationSetting:I

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAutoBrightessEnabled:Z

.field private mAutoBrightnessHysteresisLevels:[I

.field private mAutoBrightnessLevels:[I

.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field private final mAutoPowerOffDelay:I

.field private mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

.field private mAutoPowerOffTimeMillis:J

.field private mAutoPowerOffTimeoutSetting:I

.field private mBatteryService:Lcom/android/server/BatteryService;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBoolProximityCP:Z

.field private mBootCompleted:Z

.field private mBrightnessLevels:[I

.field private mBrightnessValueSlope:[F

.field private mBrightnessValues:[I

.field private mBrightnessValuesOrg:[I

.field private final mBroadcastQueue:[I

.field private mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private final mBroadcastWhy:[I

.field private mButtonBacklightValues:[I

.field private mButtonBrightnessOverride:I

.field private mButtonLight:Lcom/android/server/LightsService$Light;

.field private mButtonOffTimeoutSetting:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

.field private mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

.field private mDeviceLockTimeoutSetting:I

.field private mDimDelay:I

.field private mDimScreen:Z

.field private mDoneBooting:Z

.field private mDynamicAutoBrightnessEnabled:Z

.field private mDynamicAutoBrightnessRatio:F

.field private mDynamicAutoBrightnessRatioValueSetting:I

.field private mDynamicAutoBrightnessValue:I

.field private mFaceDetected:Z

.field private mForceDisableWakeLock:Z

.field private mForceReenableScreenTask:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeadless:Z

.field private mHighHysteresisLevels:[I

.field private mHighHysteresisLux:I

.field private mHighHysteresisSlope:[F

.field private mHighHysteresisValues:[I

.field private mHighHysteresisValuesOrg:[I

.field private mHighestLightSensorValue:I

.field private volatile mInitComplete:Z

.field private mInitialAnimation:Z

.field private mInitialized:Z

.field private mIsDeviceLockTime:Z

.field private mIsDocked:Z

.field mIsFakeOff:Z

.field private mIsLockZone:Z

.field private mIsPowered:Z

.field private mIsSecuredLock:I

.field public mIsSipVisible:Z

.field private mIsTablet:Z

.field private mKeyboardBacklightValues:[I

.field private mKeyboardLight:Lcom/android/server/LightsService$Light;

.field private mKeyboardVisible:Z

.field private mKeylightDelay:I

.field private mLastAutoBrightnessLevel:I

.field private mLastEventTime:J

.field private mLastProximityEventTime:J

.field private mLastScreenOnTime:J

.field private mLastTouchDown:J

.field private mLcdBacklightValues:[I

.field private mLcdLight:Lcom/android/server/LightsService$Light;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorAdjustSetting:F

.field private mLightSensorButtonBrightness:I

.field private mLightSensorDelay:I

.field private mLightSensorEnabled:Z

.field private mLightSensorKeyboardBrightness:I

.field private mLightSensorPendingDecrease:Z

.field private mLightSensorPendingIncrease:Z

.field private mLightSensorPendingValue:F

.field private mLightSensorScreenBrightness:I

.field private mLightSensorScreenBrightnessLowerLimit:I

.field private mLightSensorScreenBrightnessUpperLimit:I

.field private mLightSensorValue:F

.field private mLightSensorWarmupTime:I

.field private mLightsService:Lcom/android/server/LightsService;

.field private final mLocks:Lcom/android/server/PowerManagerService$LockList;

.field private mLowHysteresisLevels:[I

.field private mLowHysteresisLux:I

.field private mLowHysteresisSlope:[F

.field private mLowHysteresisValues:[I

.field private mLowHysteresisValuesOrg:[I

.field private mLowLimitAtHighestAutoBrightnessLevel:I

.field private final mMapPersistentDVFSLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapPreventAutoPowerOff:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxBrightness:I

.field private mMaximumScreenOffTimeout:I

.field private mMinimumExpressiveBrightnessValues:[I

.field private mNextTimeout:J

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mPackagesNeedIS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPartialCount:I

.field private volatile mPersistentDVFSLocksInfo:I

.field private volatile mPokeAwakeOnSet:Z

.field private final mPokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/PowerManagerService$PokeLock;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPokey:I

.field private volatile mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerIsChanged:Z

.field private mPowerState:I

.field private mPreparingForScreenOn:Z

.field private mPreventScreenOn:Z

.field private mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProxIgnoredBecauseScreenTurnedOff:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field mProximityListenerForDataCall:Landroid/hardware/SensorEventListener;

.field private mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mProximityPendingValue:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field private mProximityTask:Ljava/lang/Runnable;

.field private mProximityWakeLockCount:I

.field private mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessHandler:Landroid/os/Handler;

.field private mScreenBrightnessOverride:I

.field private mScreenBrightnessSetting:I

.field private mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOffDelay:I

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mScreenOffIntent:Landroid/content/Intent;

.field private mScreenOffReason:I

.field mScreenOffStart:J

.field private mScreenOffTime:J

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

.field private mScreenOnIntent:Landroid/content/Intent;

.field private mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field mScreenOnStart:J

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mShortKeylightDelay:I

.field private mSignedSettingsRatio:F

.field private mSipIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSkippedScreenOn:Z

.field private mSmartSleepDelay:I

.field private mSmartSleepEnabled:Z

.field private mSmartSleepHandler:Landroid/os/Handler;

.field private mSmartSleepIntent:Landroid/content/Intent;

.field private mSmartSleepNotificationDelay:I

.field private mSmartSleepNotificationOffset:I

.field private final mSmartSleepNotificationTask:Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

.field private final mSmartSleepTask:Lcom/android/server/PowerManagerService$SmartSleepTask;

.field private mSmartSleepThread:Landroid/os/HandlerThread;

.field private mStayOnConditions:I

.field private mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

.field private mStillNeedSleepNotification:Z

.field private mSupportedFrequency:[I

.field private mSystemPowerSaveModeEnabled:Z

.field private mTiltAngle:F

.field mTiltListener:Landroid/hardware/SensorEventListener;

.field private mTiltSensor:Landroid/hardware/Sensor;

.field private final mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

.field private mTotalTouchDownTime:J

.field private mTouchCycles:I

.field mUnplugTurnsOnScreen:Z

.field private mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

.field private mUseSoftwareAutoBrightness:Z

.field private mUserActivityAllowed:Z

.field private mUserActivityReason:Ljava/lang/String;

.field private mUserControlLevel:I

.field private mUserState:I

.field private mValueOfVirtualZeroCandela:I

.field private mWaitingForFirstLightSensor:Z

.field private mWakeLockState:I

.field private mWarningSpewThrottleCount:I

.field private mWarningSpewThrottleTime:J

.field private mWindowScaleAnimation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 381
    const/16 v0, 0x14

    sput v0, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    .line 391
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    .line 429
    const-string v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    .line 430
    const-string v0, "VZW"

    sget-object v1, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ATT"

    sget-object v1, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMB"

    sget-object v1, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    sget-object v1, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    sget-object v1, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MTR"

    sget-object v1, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    sget-object v1, Lcom/android/server/PowerManagerService;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 10

    .prologue
    const/high16 v9, -0x4080

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 771
    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    .line 185
    const/16 v3, 0x1770

    iput v3, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 187
    const/16 v3, 0xbb8

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorDelay:I

    .line 231
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 252
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 253
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 254
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    .line 255
    iput v5, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    .line 256
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    .line 257
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    .line 258
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    .line 259
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    .line 260
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 261
    iput v5, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 267
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 268
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 269
    iput v5, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 270
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    .line 271
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 272
    iput v6, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    .line 276
    const v3, 0x7fffffff

    iput v3, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 281
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 284
    new-instance v3, Lcom/android/server/PowerManagerService$LockList;

    invoke-direct {v3, p0, v7}, Lcom/android/server/PowerManagerService$LockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    .line 285
    new-instance v3, Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-direct {v3, p0, v7}, Lcom/android/server/PowerManagerService$DVFSLockList;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    .line 286
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 287
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 288
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 289
    iput v5, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 290
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    .line 291
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    .line 309
    new-instance v3, Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-direct {v3, p0, v7}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    .line 311
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    .line 313
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    .line 321
    iput v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 322
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 323
    iput v6, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 324
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 325
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 326
    iput v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 327
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    .line 328
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 333
    iput v9, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    .line 334
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    .line 336
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 337
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 338
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 339
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 340
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    .line 341
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 343
    iput v5, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 344
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 345
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 346
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    .line 350
    const/16 v3, 0xc0

    iput v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    .line 351
    iput v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 352
    iput v6, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 360
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    .line 361
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLastAutoBrightnessLevel:I

    .line 366
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    .line 378
    iput v6, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 380
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    .line 392
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mPackagesNeedIS:Ljava/util/HashMap;

    .line 395
    new-instance v3, Lcom/android/server/PowerManagerService$SmartSleepTask;

    invoke-direct {v3, p0, v7}, Lcom/android/server/PowerManagerService$SmartSleepTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSmartSleepTask:Lcom/android/server/PowerManagerService$SmartSleepTask;

    .line 396
    const/16 v3, 0x7d0

    iput v3, p0, Lcom/android/server/PowerManagerService;->mSmartSleepDelay:I

    .line 397
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mFaceDetected:Z

    .line 398
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z

    .line 401
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 402
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    .line 403
    iput v5, p0, Lcom/android/server/PowerManagerService;->mIsSecuredLock:I

    .line 404
    iput v6, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    .line 407
    new-instance v3, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

    invoke-direct {v3, p0, v7}, Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationTask:Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

    .line 408
    const/16 v3, 0x1770

    iput v3, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationDelay:I

    .line 409
    const/16 v3, 0xfa0

    iput v3, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationOffset:I

    .line 411
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    .line 421
    iput v6, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    .line 422
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J

    .line 423
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z

    .line 424
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffDelay:I

    .line 427
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 449
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z

    .line 591
    new-instance v3, Lcom/android/server/PowerManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$1;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListenerForDataCall:Landroid/hardware/SensorEventListener;

    .line 2096
    new-instance v3, Lcom/android/server/PowerManagerService$5;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$5;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 2111
    new-instance v3, Lcom/android/server/PowerManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$6;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    .line 2192
    new-instance v3, Lcom/android/server/PowerManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$7;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2203
    new-instance v3, Lcom/android/server/PowerManagerService$8;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$8;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 2216
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    .line 2217
    new-instance v3, Lcom/android/server/PowerManagerService$9;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$9;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2415
    new-instance v3, Lcom/android/server/PowerManagerService$10;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$10;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    .line 2421
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsFakeOff:Z

    .line 3328
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    .line 3382
    new-instance v3, Lcom/android/server/PowerManagerService$11;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$11;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    .line 3580
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 3581
    iput v6, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 3582
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    .line 3583
    iput v6, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 3584
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    .line 3585
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    .line 3586
    const/16 v3, 0xfa

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 3587
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    .line 3712
    iput v5, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    .line 4032
    new-instance v3, Lcom/android/server/PowerManagerService$12;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$12;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    .line 4046
    new-instance v3, Lcom/android/server/PowerManagerService$13;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$13;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    .line 4060
    iput-boolean v8, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    .line 4877
    new-instance v3, Lcom/android/server/PowerManagerService$17;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$17;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 4973
    new-instance v3, Lcom/android/server/PowerManagerService$18;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$18;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 5002
    new-instance v3, Lcom/android/server/PowerManagerService$19;

    invoke-direct {v3, p0}, Lcom/android/server/PowerManagerService$19;-><init>(Lcom/android/server/PowerManagerService;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    .line 5616
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    .line 773
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 774
    .local v1, token:J
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    .line 775
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    .line 776
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    iput v8, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    iput v8, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 783
    const/4 v0, 0x0

    .line 786
    .local v0, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .restart local v0       #packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    const-string v3, ".+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mPackagesNeedIS:Ljava/util/HashMap;

    const-string v4, "com.android.email"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .restart local v0       #packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    const-string v3, ".+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mPackagesNeedIS:Ljava/util/HashMap;

    const-string v4, "com.android.browser"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v3, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    .line 800
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 802
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->nativeInit()V

    .line 803
    return-void

    .line 256
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private static DVFSLockType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 5540
    packed-switch p0, :pswitch_data_0

    .line 5547
    const-string v0, "???                           "

    :goto_0
    return-object v0

    .line 5543
    :pswitch_0
    const-string v0, "DVFS_MIN_LIMIT"

    goto :goto_0

    .line 5545
    :pswitch_1
    const-string v0, "DVFS_MAX_LIMIT"

    goto :goto_0

    .line 5540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide v0
.end method

.method static synthetic access$10102(Lcom/android/server/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    return-wide p1
.end method

.method static synthetic access$10200(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10400(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    return v0
.end method

.method static synthetic access$10402(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    return p1
.end method

.method static synthetic access$10500(Lcom/android/server/PowerManagerService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    return v0
.end method

.method static synthetic access$10602(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    return p1
.end method

.method static synthetic access$10700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/PowerManagerService;IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->dockStateChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/PowerManagerService;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->shutdown(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/PowerManagerService;)Landroid/content/ContentQueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mIsSecuredLock:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/PowerManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$TimeoutTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/PowerManagerService;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/PowerManagerService;JJZIZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/PowerManagerService;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F

    return p1
.end method

.method static synthetic access$4002(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return p1
.end method

.method static synthetic access$4076(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mAnimationSetting:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/PowerManagerService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSmartSleepThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mFaceDetected:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mFaceDetected:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->checkIntelligentSleep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSmartSleepIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/PowerManagerService;JJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct/range {p0 .. p5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/android/server/PowerManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/PowerManagerService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/PowerManagerService;)Landroid/view/WindowManagerPolicy$ScreenOnListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOnBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/PowerManagerService;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/PowerManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffBroadcastDone:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceReenableScreen()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/PowerManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    return v0
.end method

.method static synthetic access$8102(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    return p1
.end method

.method static synthetic access$8200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$DVFSLockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    return-object v0
.end method

.method static synthetic access$8400(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    return v0
.end method

.method static synthetic access$8600(Lcom/android/server/PowerManagerService;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/PowerManagerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$8802(Lcom/android/server/PowerManagerService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$8900(Lcom/android/server/PowerManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/server/PowerManagerService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/server/PowerManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return v0
.end method

.method static synthetic access$9102(Lcom/android/server/PowerManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    return p1
.end method

.method static synthetic access$9200(Lcom/android/server/PowerManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return v0
.end method

.method static synthetic access$9402(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    return p1
.end method

.method static synthetic access$9500(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return v0
.end method

.method static synthetic access$9502(Lcom/android/server/PowerManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/android/server/PowerManagerService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    return v0
.end method

.method static synthetic access$9700(Lcom/android/server/PowerManagerService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/PowerManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->checkPreventAutoPowerOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/android/server/PowerManagerService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    return v0
.end method

.method private acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 9
    .parameter "type"
    .parameter "frequency"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"

    .prologue
    .line 5397
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/PowerManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, p3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;)I

    move-result v8

    .line 5402
    .local v8, index:I
    if-gez v8, :cond_2

    .line 5403
    new-instance v0, Lcom/android/server/PowerManagerService$DVFSLock;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PowerManagerService$DVFSLock;-><init>(Lcom/android/server/PowerManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 5404
    .local v0, newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, v0}, Lcom/android/server/PowerManagerService$DVFSLockList;->addLock(Lcom/android/server/PowerManagerService$DVFSLock;)V

    .line 5410
    :goto_0
    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 5411
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    if-ge v1, v2, :cond_1

    .line 5412
    :cond_0
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->nativeAcquireDVFSLock(II)I

    .line 5413
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 5422
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    .line 5423
    return-void

    .line 5407
    .end local v0           #newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_2
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v1, v8}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService$DVFSLock;

    .restart local v0       #newDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    goto :goto_0

    .line 5416
    :cond_3
    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 5417
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    if-le v1, v2, :cond_1

    .line 5418
    :cond_4
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->nativeAcquireDVFSLock(II)I

    .line 5419
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_1
.end method

.method private applyButtonState(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 3177
    const/4 v0, -0x1

    .line 3178
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 3180
    and-int/lit8 p1, p1, -0x5

    .line 3202
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3183
    .restart local p1
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_3

    .line 3184
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 3197
    :cond_2
    :goto_1
    if-lez v0, :cond_6

    .line 3198
    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 3185
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 3188
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    goto :goto_1

    .line 3189
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    .line 3191
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 3192
    const/16 v0, 0xff

    goto :goto_1

    .line 3193
    :cond_5
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-nez v1, :cond_2

    .line 3194
    const/4 v0, 0x0

    goto :goto_1

    .line 3199
    :cond_6
    if-nez v0, :cond_0

    .line 3200
    and-int/lit8 p1, p1, -0x5

    goto :goto_0
.end method

.method private applyKeyboardState(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 3207
    const/4 v0, -0x1

    .line 3208
    .local v0, brightness:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 3210
    and-int/lit8 p1, p1, -0x9

    .line 3233
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 3212
    .restart local p1
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v1, :cond_3

    .line 3213
    const/4 v0, 0x0

    .line 3228
    :cond_2
    :goto_1
    if-lez v0, :cond_7

    .line 3229
    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 3214
    :cond_3
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v1, :cond_4

    .line 3215
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    goto :goto_1

    .line 3216
    :cond_4
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    .line 3219
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    goto :goto_1

    .line 3220
    :cond_5
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    .line 3222
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 3223
    const/16 v0, 0xff

    goto :goto_1

    .line 3224
    :cond_6
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-nez v1, :cond_2

    .line 3225
    const/4 v0, 0x0

    goto :goto_1

    .line 3230
    :cond_7
    if-nez v0, :cond_0

    .line 3231
    and-int/lit8 p1, p1, -0x9

    goto :goto_0
.end method

.method private batteryIsLow()Z
    .locals 2

    .prologue
    .line 2690
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->getBatteryLevel()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimerLocked()V
    .locals 2

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mFaceDetected:Z

    .line 1868
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepTask:Lcom/android/server/PowerManagerService$SmartSleepTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1871
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationTask:Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1879
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1880
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1881
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1884
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1885
    return-void
.end method

.method private checkIntelligentSleep()Z
    .locals 5

    .prologue
    .line 1988
    const/4 v0, 0x0

    .line 1990
    .local v0, bIntelligentSleep:Z
    const-string v2, "PowerManagerService"

    const-string v3, "checkIntelligentSleep"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    if-nez v2, :cond_0

    .line 1993
    const-string v2, "PowerManagerService"

    const-string v3, "checkIntelligentSleep : getFaceDetectionManager()"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-static {}, Lcom/sec/android/facedetection/FaceDetectionManager;->getFaceDetectionManager()Lcom/sec/android/facedetection/FaceDetectionManager;

    move-result-object v2

    sput-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    .line 1997
    :cond_0
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    if-eqz v2, :cond_1

    .line 1998
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-virtual {v2}, Lcom/sec/android/facedetection/FaceDetectionManager;->enable()V

    .line 2000
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-virtual {v2}, Lcom/sec/android/facedetection/FaceDetectionManager;->getFaceInfo()[Lcom/sec/android/facedetection/SecFace;

    move-result-object v1

    .line 2002
    .local v1, sf:[Lcom/sec/android/facedetection/SecFace;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 2003
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIntelligentSleep : SecFace length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    const/4 v0, 0x1

    .line 2010
    :goto_0
    sget-object v2, Lcom/android/server/PowerManagerService;->mFaceDetectionManager:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-virtual {v2}, Lcom/sec/android/facedetection/FaceDetectionManager;->disable()V

    .line 2013
    .end local v1           #sf:[Lcom/sec/android/facedetection/SecFace;
    :cond_1
    return v0

    .line 2007
    .restart local v1       #sf:[Lcom/sec/android/facedetection/SecFace;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPreventAutoPowerOff()Z
    .locals 7

    .prologue
    .line 3330
    const/4 v2, 0x0

    .line 3331
    .local v2, retVal:Z
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 3333
    .local v3, size:I
    const/4 v1, 0x0

    .line 3334
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 3335
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3336
    .local v0, eachCount:I
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPreventAutoPowerOff : eachCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    if-lez v0, :cond_0

    .line 3339
    const/4 v2, 0x1

    .line 3334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3344
    .end local v0           #eachCount:I
    :cond_1
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkPreventAutoPowerOff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    return v2
.end method

.method private convertSettingsRatioToWeightedRatio(I)F
    .locals 12
    .parameter "settingsRatio"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v8, 0x0

    .line 3714
    const/4 v3, 0x5

    .line 3715
    .local v3, maxSignedStep:I
    const/16 v2, 0x64

    .line 3716
    .local v2, maxSignedSettingsRatio:I
    const/high16 v4, 0x41a0

    .line 3718
    .local v4, scalingFactor:F
    const v1, 0x3dcccccd

    .line 3720
    .local v1, increaseFactorPerStep:F
    const/4 v6, 0x0

    .line 3721
    .local v6, weightedRatio:F
    add-int/lit8 v7, p1, -0x64

    int-to-float v7, v7

    iput v7, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    .line 3723
    iget v7, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 3724
    iget v7, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v5, 0x1

    .line 3725
    .local v5, settingsRatioSign:I
    :goto_0
    iget v7, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    const/high16 v8, 0x41a0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 3726
    .local v0, convSettingsRatioToStep:F
    int-to-float v7, v5

    mul-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    .line 3728
    int-to-float v7, v5

    const v8, 0x3dcccccd

    mul-float/2addr v7, v8

    add-float/2addr v7, v11

    float-to-double v7, v7

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    sub-float v6, v7, v11

    .line 3735
    .end local v0           #convSettingsRatioToStep:F
    .end local v5           #settingsRatioSign:I
    :goto_1
    return v6

    .line 3724
    :cond_0
    const/4 v5, -0x1

    goto :goto_0

    .line 3731
    :cond_1
    const/4 v6, 0x0

    .line 3732
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    goto :goto_1
.end method

.method private disableProximityLockLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4754
    const-string v2, "PowerManagerService"

    const-string v3, "disableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4756
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 4758
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4760
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4761
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4762
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4763
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 4765
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4767
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4769
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_1

    .line 4770
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 4772
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableProximityLockLocked mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v2, :cond_1

    .line 4776
    const-string v2, "disableProximityLockLocked"

    iput-object v2, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 4777
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 4781
    .end local v0           #identity:J
    :cond_1
    return-void

    .line 4767
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private dockStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 4063
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 4064
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    .line 4065
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDocked:Z

    if-eqz v1, :cond_1

    .line 4067
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 4069
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 4071
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 4072
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4073
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 4075
    .end local v0           #value:I
    :cond_2
    monitor-exit v2

    .line 4076
    return-void

    .line 4075
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doseTopMostNeedsIntelligentSleep()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1967
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1968
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v7, 0x14

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1969
    .local v3, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v8

    .line 1984
    :goto_0
    return v7

    .line 1973
    :cond_0
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1974
    .local v6, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1975
    .local v5, pkgName:Ljava/lang/String;
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1978
    .local v1, className:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mPackagesNeedIS:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1979
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mPackagesNeedIS:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 1981
    .local v4, p:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #p:Ljava/util/regex/Pattern;
    :cond_2
    move v7, v8

    .line 1984
    goto :goto_0
.end method

.method private static dumpPowerState(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const-string v0, "KEYBOARD_BRIGHT_BIT "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "SCREEN_BRIGHT_BIT "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SCREEN_ON_BIT "

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string v0, "BATTERY_LOW_BIT "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3
.end method

.method private enableLightSensorLocked(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    .line 4824
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableLightSensorLocked enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLightSensorEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAutoBrightessEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mWaitingForFirstLightSensor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-nez v3, :cond_0

    .line 4830
    const/4 p1, 0x0

    .line 4832
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eq v3, p1, :cond_2

    .line 4833
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    .line 4835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4837
    .local v0, identity:J
    if-eqz p1, :cond_3

    .line 4838
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/android/server/PowerManagerService;->mLastAutoBrightnessLevel:I

    .line 4841
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 4842
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 4845
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    .line 4847
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v2, v3

    .line 4848
    .local v2, value:I
    if-ltz v2, :cond_1

    .line 4849
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4850
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V

    .line 4852
    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4857
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mTiltSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4872
    .end local v2           #value:I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4875
    .end local v0           #identity:J
    :cond_2
    return-void

    .line 4861
    .restart local v0       #identity:J
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4865
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mTiltListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4867
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4868
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 4869
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4872
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 4737
    const-string v2, "PowerManagerService"

    const-string v3, "enableProximityLockLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    .line 4741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4743
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4745
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4747
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4750
    .end local v0           #identity:J
    :cond_0
    return-void

    .line 4747
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 5592
    const/4 v2, 0x0

    .line 5594
    .local v2, out:Ljava/io/FileOutputStream;
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5598
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5604
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 5605
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 5614
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 5599
    :catch_0
    move-exception v0

    .line 5600
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "PowerManagerService"

    const-string v5, "fileWriteInt : file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5606
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 5607
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5609
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 5610
    :catch_2
    move-exception v1

    .line 5611
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5606
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private forceReenableScreen()V
    .locals 2

    .prologue
    .line 2397
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-nez v0, :cond_0

    .line 2398
    const-string v0, "PowerManagerService"

    const-string v1, "forceReenableScreen: mPreventScreenOn is false, nothing to do"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :goto_0
    return-void

    .line 2410
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "App called preventScreenOn(true) but didn\'t promptly reenable the screen! Forcing the screen back on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_0
.end method

.method private forceUserActivityLocked()V
    .locals 4

    .prologue
    .line 3271
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3273
    const-string v1, "PowerManagerService"

    const-string v2, "forceUserActivityLocked  : isScreenTurningOffLocked : cancelAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    .line 3276
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3277
    .local v0, savedActivityAllowed:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    .line 3279
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 3280
    return-void
.end method

.method private getAdjustedDynamicAutoBrightnessValue(II)I
    .locals 8
    .parameter "lux"
    .parameter "origValue"

    .prologue
    const/4 v7, 0x0

    .line 3741
    const/4 v1, 0x0

    .line 3744
    .local v1, finalValue:I
    iget v5, p0, Lcom/android/server/PowerManagerService;->mValueOfVirtualZeroCandela:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    mul-float v0, v5, v6

    .line 3747
    .local v0, fOffsetValue:F
    const/4 v4, 0x0

    .line 3749
    .local v4, minBrightnessStep:I
    const/4 v4, 0x5

    .line 3753
    iget v5, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    mul-int v3, v5, v4

    .line 3754
    .local v3, minBrightnessEachStep:I
    iget v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_1

    :cond_0
    iget v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    .line 3756
    :cond_1
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdjustedDynamicAutoBrightnessValue : offset : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    int-to-float v0, v3

    .line 3759
    :cond_2
    int-to-float v5, p2

    add-float/2addr v5, v0

    float-to-int v1, v5

    .line 3762
    const/16 v5, 0x3a98

    if-lt p1, v5, :cond_3

    iget v5, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v5, :cond_3

    .line 3763
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdjustedDynamicAutoBrightnessValue : minBrightness : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 3768
    :cond_3
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mBrightnessValuesOrg:[I

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 3769
    .local v2, lowLimit:I
    const/16 v5, 0xff

    if-le v1, v5, :cond_5

    .line 3770
    const/16 v1, 0xff

    .line 3775
    :cond_4
    :goto_0
    return v1

    .line 3771
    :cond_5
    if-ge v1, v2, :cond_4

    .line 3772
    move v1, v2

    goto :goto_0
.end method

.method private getAutoBrightnessValue(I[I)I
    .locals 13
    .parameter "sensorValue"
    .parameter "values"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f80

    .line 3966
    :try_start_0
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v9, :cond_2

    .line 3968
    const/16 v5, 0xff

    .line 3970
    .local v5, origDynamicAutoBrightnessValue:I
    iget v9, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    if-ge v9, p1, :cond_1

    iget v9, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    if-gt p1, v9, :cond_1

    .line 3971
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAutoBrightnessValue : in bound ( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " <= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " )"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    :goto_0
    iget v7, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    .line 4028
    .end local v5           #origDynamicAutoBrightnessValue:I
    :cond_0
    :goto_1
    return v7

    .line 3974
    .restart local v5       #origDynamicAutoBrightnessValue:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->getDynamicAutoBrightnessValue(I)I

    move-result v5

    .line 3975
    invoke-direct {p0, v5}, Lcom/android/server/PowerManagerService;->getDynamicAutoBrightnessLowHysteresis(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 3976
    invoke-direct {p0, v5}, Lcom/android/server/PowerManagerService;->getDynamicAutoBrightnessHighHysteresis(I)I

    move-result v9

    iput v9, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 3978
    invoke-direct {p0, p1, v5}, Lcom/android/server/PowerManagerService;->getFinalDynamicAutoBrightnessValue(II)I

    move-result v9

    iput v9, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    .line 3980
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAutoBrightnessValue : mDynamicAutoBrightnessValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")  (( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessValue:I

    div-int/lit8 v11, v11, 0xa

    mul-int/lit8 v11, v11, 0xa

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "))  ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerManagerService;->mUserControlLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")  ( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " <= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " )"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4024
    .end local v5           #origDynamicAutoBrightnessValue:I
    :catch_0
    move-exception v1

    .line 4026
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "PowerManagerService"

    const-string v10, "Values array must be non-empty and must be one element longer than the auto-brightness levels array.  Check config.xml."

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4028
    const/16 v7, 0xff

    goto/16 :goto_1

    .line 3988
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v9, v9

    if-ge v2, v9, :cond_3

    .line 3989
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v9, v9, v2

    if-ge p1, v9, :cond_5

    .line 3996
    :cond_3
    const/4 v9, 0x0

    aget v4, p2, v9

    .line 3997
    .local v4, minval:I
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v9, v9

    aget v3, p2, v9

    .line 4001
    .local v3, maxval:I
    sub-int v9, v3, v4

    add-int/lit8 v6, v9, 0x14

    .line 4003
    .local v6, range:I
    aget v9, p2, v2

    sub-int/2addr v9, v4

    add-int/lit8 v9, v9, 0xa

    int-to-float v9, v9

    int-to-float v10, v6

    div-float v8, v9, v10

    .line 4005
    .local v8, valf:F
    iget v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    cmpl-float v9, v9, v12

    if-lez v9, :cond_7

    iget v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    cmpg-float v9, v9, v11

    if-gtz v9, :cond_7

    .line 4006
    iget v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    sub-float v9, v11, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v0, v9

    .line 4007
    .local v0, adj:F
    float-to-double v9, v0

    const-wide v11, 0x3ee4f8b588e368f1L

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_6

    .line 4008
    const/high16 v8, 0x3f80

    .line 4017
    .end local v0           #adj:F
    :cond_4
    :goto_3
    iget v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/high16 v10, 0x4100

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 4019
    int-to-float v9, v6

    mul-float/2addr v9, v8

    int-to-float v10, v4

    add-float/2addr v9, v10

    float-to-int v9, v9

    add-int/lit8 v7, v9, -0xa

    .line 4020
    .local v7, val:I
    if-ge v7, v4, :cond_8

    move v7, v4

    goto/16 :goto_1

    .line 3988
    .end local v3           #maxval:I
    .end local v4           #minval:I
    .end local v6           #range:I
    .end local v7           #val:I
    .end local v8           #valf:F
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4010
    .restart local v0       #adj:F
    .restart local v3       #maxval:I
    .restart local v4       #minval:I
    .restart local v6       #range:I
    .restart local v8       #valf:F
    :cond_6
    div-float/2addr v8, v0

    goto :goto_3

    .line 4012
    .end local v0           #adj:F
    :cond_7
    iget v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    cmpg-float v9, v9, v12

    if-gez v9, :cond_4

    iget v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    const/high16 v10, -0x4080

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 4013
    iget v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    add-float/2addr v9, v11

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v9

    double-to-float v0, v9

    .line 4014
    .restart local v0       #adj:F
    mul-float/2addr v8, v0

    goto :goto_3

    .line 4021
    .end local v0           #adj:F
    .restart local v7       #val:I
    :cond_8
    if-le v7, v3, :cond_0

    move v7, v3

    goto/16 :goto_1
.end method

.method private getDynamicAutoBrightnessHighHysteresis(I)I
    .locals 6
    .parameter "cd"

    .prologue
    .line 3940
    const/4 v2, 0x0

    .line 3941
    .local v2, lux:I
    const/4 v1, 0x0

    .line 3943
    .local v1, i:I
    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 3944
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_1

    .line 3946
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 3947
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 3948
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    aget v2, v3, v1

    .line 3960
    .end local v2           #lux:I
    :goto_1
    return v2

    .line 3943
    .restart local v2       #lux:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3950
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisSlope:[F

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 3951
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisSlope:[F

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    sub-int v4, p1, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    goto :goto_1

    .line 3953
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3957
    :catch_0
    move-exception v0

    .line 3959
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PowerManagerService"

    const-string v4, "getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3960
    const/16 v2, 0x3a98

    goto :goto_1
.end method

.method private getDynamicAutoBrightnessLowHysteresis(I)I
    .locals 6
    .parameter "cd"

    .prologue
    .line 3911
    const/4 v2, 0x0

    .line 3912
    .local v2, lux:I
    const/4 v1, 0x0

    .line 3914
    .local v1, i:I
    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 3915
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    aget v3, v3, v1

    if-ge p1, v3, :cond_1

    .line 3919
    :cond_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    .line 3920
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    .line 3932
    .end local v2           #lux:I
    :goto_1
    return v2

    .line 3914
    .restart local v2       #lux:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3922
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisSlope:[F

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 3923
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisSlope:[F

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    sub-int v4, p1, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    goto :goto_1

    .line 3925
    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3929
    :catch_0
    move-exception v0

    .line 3931
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PowerManagerService"

    const-string v4, "getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3932
    const/16 v2, 0x3a98

    goto :goto_1
.end method

.method private getDynamicAutoBrightnessValue(I)I
    .locals 7
    .parameter "lux"

    .prologue
    const/16 v3, 0xff

    .line 3853
    const/4 v0, 0x0

    .line 3854
    .local v0, cd:I
    const/4 v2, 0x0

    .line 3856
    .local v2, i:I
    const/4 v2, 0x1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 3857
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    aget v4, v4, v2

    if-gt p1, v4, :cond_2

    .line 3861
    :cond_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 3862
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v0, v4, v5

    .line 3871
    :goto_1
    if-le v0, v3, :cond_5

    .line 3872
    const/16 v0, 0xff

    .line 3877
    :cond_1
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->sendBrightnessModeBySysfs(I)V

    .line 3882
    .end local v0           #cd:I
    :goto_3
    return v0

    .line 3856
    .restart local v0       #cd:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3864
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValueSlope:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 3865
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValueSlope:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    sub-int v5, p1, v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    goto :goto_1

    .line 3867
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    add-int/lit8 v5, v2, -0x1

    aget v0, v4, v5

    goto :goto_1

    .line 3873
    :cond_5
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ge v0, v4, :cond_1

    .line 3874
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    const/4 v5, 0x0

    aget v0, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3879
    :catch_0
    move-exception v1

    .line 3881
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PowerManagerService"

    const-string v5, "getDynamicAutoBrightnessValue"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    .line 3882
    goto :goto_3
.end method

.method private getFinalDynamicAutoBrightnessValue(II)I
    .locals 5
    .parameter "lux"
    .parameter "origDynamicBrightness"

    .prologue
    const/high16 v4, 0x4220

    const/4 v3, 0x2

    .line 3779
    move v0, p2

    .line 3785
    .local v0, finalBrightness:I
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 3786
    if-nez p1, :cond_0

    .line 3787
    iget v1, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    const/high16 v2, -0x3de0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 3788
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 3796
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v1, v3

    if-ge v0, v1, :cond_1

    .line 3797
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v0, v1, v3

    .line 3801
    :cond_1
    return v0

    .line 3789
    :cond_2
    iget v1, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_3

    .line 3790
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v0, v1, v3

    goto :goto_0

    .line 3792
    :cond_3
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    goto :goto_0
.end method

.method private getPreferredBrightness()I
    .locals 2

    .prologue
    .line 3165
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-ltz v1, :cond_0

    .line 3166
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 3173
    :goto_0
    return v1

    .line 3167
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    if-ltz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_1

    .line 3169
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    goto :goto_0

    .line 3171
    :cond_1
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessSetting:I

    .line 3173
    .local v0, brightness:I
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method private getSlope(IIIIZ)F
    .locals 3
    .parameter "ax"
    .parameter "ay"
    .parameter "bx"
    .parameter "by"
    .parameter "bReverse"

    .prologue
    .line 3806
    const/4 v0, 0x0

    .line 3807
    .local v0, slope:F
    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_1

    .line 3808
    :cond_0
    const/4 v0, 0x0

    .line 3816
    :goto_0
    return v0

    .line 3810
    :cond_1
    if-eqz p5, :cond_2

    .line 3811
    sub-int v1, p3, p1

    int-to-float v1, v1

    sub-int v2, p4, p2

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0

    .line 3813
    :cond_2
    sub-int v1, p4, p2

    int-to-float v1, v1

    sub-int v2, p3, p1

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private goToSleepLocked(JI)V
    .locals 12
    .parameter "time"
    .parameter "reason"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4294
    iget-wide v7, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v7, v7, p1

    if-gtz v7, :cond_5

    .line 4295
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4296
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 4297
    .local v3, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4298
    .local v5, uid:I
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen__Off : goToSleepLocked : uid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  reason : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4300
    .end local v3           #pid:I
    .end local v5           #uid:I
    :cond_0
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 4302
    iput v10, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 4303
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 4304
    .local v0, N:I
    const/4 v2, 0x0

    .line 4305
    .local v2, numCleared:I
    const/4 v4, 0x0

    .line 4306
    .local v4, proxLock:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4307
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PowerManagerService$WakeLock;

    .line 4308
    .local v6, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v7}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4309
    iget v7, v6, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v7, v7, 0x3f

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    const/4 v7, 0x4

    if-ne p3, v7, :cond_2

    .line 4311
    const/4 v4, 0x1

    .line 4306
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4313
    :cond_2
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v7, v1}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PowerManagerService$WakeLock;

    iput-boolean v10, v7, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 4314
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4318
    .end local v6           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_3
    if-nez v4, :cond_4

    .line 4319
    iput-boolean v11, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    .line 4321
    const-string v7, "PowerManagerService"

    const-string v8, "setting mProxIgnoredBecauseScreenTurnedOff"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    :cond_4
    const/16 v7, 0xaa4

    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4325
    iput-boolean v11, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 4326
    iput v10, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 4327
    invoke-direct {p0, v10, v10, p3}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 4328
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->cancelTimerLocked()V

    .line 4333
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #numCleared:I
    .end local v4           #proxLock:Z
    :goto_2
    return-void

    .line 4331
    :cond_5
    const-string v7, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "goToSleepLocked : not excuted : mLastEventTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  time : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleLightSensorValue(IZ)V
    .locals 11
    .parameter "value"
    .parameter "immediate"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4922
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4924
    .local v1, milliseconds:J
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4925
    .local v3, resources:Landroid/content/res/Resources;
    const v4, 0x10e0022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorDelay:I

    .line 4929
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    .line 4930
    .local v0, beforeIsLockZone:Z
    iget v4, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    const/high16 v7, 0x4270

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    if-le p1, v5, :cond_4

    .line 4931
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    .line 4935
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    if-eqz v4, :cond_0

    int-to-float v4, p1

    iget v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    .line 4939
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int p1, v4

    .line 4941
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    if-eq v0, v4, :cond_1

    .line 4942
    const-string v4, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsLockZone =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   mTiltAngle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/PowerManagerService;->mTiltAngle:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    :cond_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/high16 v7, -0x4080

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2

    iget-wide v7, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    iget v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    cmp-long v4, v1, v7

    if-ltz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    if-eqz v4, :cond_5

    .line 4950
    :cond_2
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4951
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 4952
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 4953
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 4971
    :cond_3
    :goto_1
    return-void

    .line 4933
    :cond_4
    iput-boolean v6, p0, Lcom/android/server/PowerManagerService;->mIsLockZone:Z

    goto :goto_0

    .line 4955
    :cond_5
    int-to-float v4, p1

    iget v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v4, :cond_8

    :cond_6
    int-to-float v4, p1

    iget v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-nez v4, :cond_8

    :cond_7
    int-to-float v4, p1

    iget v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v4, :cond_c

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-nez v4, :cond_c

    .line 4960
    :cond_8
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4961
    int-to-float v4, p1

    iget v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_a

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 4962
    int-to-float v4, p1

    iget v7, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_b

    :goto_3
    iput-boolean v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 4963
    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    if-eqz v4, :cond_3

    .line 4964
    :cond_9
    int-to-float v4, p1

    iput v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    .line 4965
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    iget v6, p0, Lcom/android/server/PowerManagerService;->mLightSensorDelay:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_a
    move v4, v6

    .line 4961
    goto :goto_2

    :cond_b
    move v5, v6

    .line 4962
    goto :goto_3

    .line 4968
    :cond_c
    int-to-float v4, p1

    iput v4, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    goto :goto_1
.end method

.method private initSupportedFrequency()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5148
    const-string v4, "PowerManagerService"

    const-string v5, "initSupportedFrequency dvfs "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    if-nez v4, :cond_0

    .line 5153
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/power/cpufreq_max_limit"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5155
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5161
    :goto_0
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/power/cpufreq_min_limit"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5163
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5169
    :goto_1
    :try_start_4
    new-instance v0, Ljava/io/BufferedReader;

    .end local v0           #buf:Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/power/cpufreq_table"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5172
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5173
    .local v3, strSupportedFreq:[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 5175
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 5176
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v2

    .line 5177
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSupportedFrequency : DVFS : mSupportedFrequency : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 5175
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5156
    .end local v2           #i:I
    .end local v3           #strSupportedFreq:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5157
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5158
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 5190
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 5191
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v4, "PowerManagerService"

    const-string v5, "initSupportedFrequency : FileNotFoundException dvfs"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    iput-object v7, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    .line 5195
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_3
    return-void

    .line 5164
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 5165
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5166
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    goto :goto_1

    .line 5179
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 5180
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5181
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 5185
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 5186
    :catch_4
    move-exception v1

    .line 5187
    .local v1, e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 5188
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3
.end method

.method private isScreenLock(I)Z
    .locals 2
    .parameter "flags"

    .prologue
    .line 1143
    and-int/lit8 v0, p1, 0x3f

    .line 1144
    .local v0, n:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isScreenTurningOffLocked()Z
    .locals 1

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v0, v0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    #getter for: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$8700(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 1858
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1860
    .local v0, deviceType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lightSensorChangedLocked(IZ)V
    .locals 9
    .parameter "value"
    .parameter "immediate"

    .prologue
    const/4 v8, -0x2

    .line 4080
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " immediate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    iget v5, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 4086
    const-string v5, "PowerManagerService"

    const-string v6, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    :cond_0
    :goto_0
    return-void

    .line 4091
    :cond_1
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 4092
    int-to-float v5, p1

    iput v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4093
    iget v5, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_0

    .line 4097
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v5}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v2

    .line 4098
    .local v2, lcdValue:I
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    invoke-direct {p0, p1, v5}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v0

    .line 4100
    .local v0, buttonValue:I
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v5, :cond_4

    .line 4101
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    invoke-direct {p0, p1, v5}, Lcom/android/server/PowerManagerService;->getAutoBrightnessValue(I[I)I

    move-result v1

    .line 4106
    .local v1, keyboardValue:I
    :goto_1
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-ltz v5, :cond_2

    .line 4107
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-le v2, v5, :cond_2

    .line 4108
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 4109
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : lcdValue is changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because of UpperLimit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    :cond_2
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ltz v5, :cond_3

    .line 4113
    iget v5, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ge v2, v5, :cond_3

    .line 4114
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 4115
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : lcdValue is changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because of LowerLimit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    :cond_3
    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    .line 4120
    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    .line 4121
    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    .line 4124
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lcdValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buttonValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyboardValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    iget v5, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5

    .line 4132
    const-string v5, "PowerManagerService"

    const-string v6, "dropping lightSensorChangedLocked because screen is off"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4103
    .end local v1           #keyboardValue:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #keyboardValue:I
    goto/16 :goto_1

    .line 4137
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-gez v5, :cond_8

    .line 4139
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    if-eqz v5, :cond_6

    .line 4140
    sget v5, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v3, v2, v5

    .line 4141
    .local v3, powerSaveModeBrightness:I
    if-lez v2, :cond_6

    .line 4142
    const/16 v5, 0xa

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4143
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : mSystemPowerSaveModeEnabled:: lcdValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    .end local v3           #powerSaveModeBrightness:I
    :cond_6
    iget v5, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-ltz v5, :cond_7

    iget v5, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le v2, v5, :cond_7

    .line 4148
    iget v2, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 4149
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : brightness is changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because of temperature"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    :cond_7
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mInitialAnimation:Z

    if-nez v5, :cond_8

    .line 4154
    if-eqz p2, :cond_c

    .line 4155
    const/4 v4, 0x4

    .line 4165
    .local v4, steps:I
    :goto_2
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v6, 0x2

    mul-int/lit8 v7, v4, 0x10

    invoke-virtual {v5, v2, p1, v6, v7}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    .line 4169
    .end local v4           #steps:I
    :cond_8
    iget v5, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v5, v8, :cond_9

    iget v5, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-gez v5, :cond_9

    .line 4170
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : mButtonLight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v5, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 4173
    :cond_9
    iget v5, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v5, v8, :cond_a

    iget v5, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-ltz v5, :cond_b

    :cond_a
    iget-boolean v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-nez v5, :cond_0

    .line 4174
    :cond_b
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lightSensorChangedLocked : mKeyboardLight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v5, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto/16 :goto_0

    .line 4157
    :cond_c
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    monitor-enter v6

    .line 4158
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v5, v5, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-gt v5, v2, :cond_d

    .line 4159
    const/16 v4, 0x14

    .line 4163
    .restart local v4       #steps:I
    :goto_3
    monitor-exit v6

    goto :goto_2

    .end local v4           #steps:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4161
    :cond_d
    const/16 v4, 0x14

    .restart local v4       #steps:I
    goto :goto_3
.end method

.method private static lockType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1573
    sparse-switch p0, :sswitch_data_0

    .line 1586
    const-string v0, "???                           "

    :goto_0
    return-object v0

    .line 1576
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK                "

    goto :goto_0

    .line 1578
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK       "

    goto :goto_0

    .line 1580
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK          "

    goto :goto_0

    .line 1582
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK             "

    goto :goto_0

    .line 1584
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_0

    .line 1573
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1083
    invoke-static {p0}, Lcom/android/server/PowerManagerService;->nativeReboot(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method public static lowLevelShutdown()V
    .locals 0

    .prologue
    .line 1072
    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeShutdown()V

    .line 1073
    return-void
.end method

.method private static native nativeAcquireDVFSLock(II)I
.end method

.method private static native nativeAcquireWakeLock(ILjava/lang/String;)V
.end method

.method private static native nativeFakeOff()I
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReboot(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeReleaseDVFSLock(I)I
.end method

.method private static native nativeReleaseWakeLock(Ljava/lang/String;)V
.end method

.method private native nativeSetPowerState(ZZ)V
.end method

.method private static native nativeSetScreenState(Z)I
.end method

.method private static native nativeShutdown()V
.end method

.method private native nativeStartSurfaceFlingerAnimation(I)V
.end method

.method private printAutoBrightnessTables()V
    .locals 12

    .prologue
    .line 3609
    const-string v3, "mAutoBrightnessLevels =         "

    .line 3610
    .local v3, strAutoBrightnessLevels:Ljava/lang/String;
    const-string v2, "mAutoBrightnessHysteresisLevels = "

    .line 3611
    .local v2, strAutoBrightnessHysteresisLevels:Ljava/lang/String;
    const-string v6, "mLcdBacklightValues =               "

    .line 3615
    .local v6, strLcdBacklightValues:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_0

    .line 3616
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3618
    :cond_0
    const-string v9, "PowerManagerService"

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_1

    .line 3620
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3619
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3622
    :cond_1
    const-string v9, "PowerManagerService"

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    const/4 v1, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    array-length v9, v9

    if-ge v1, v9, :cond_2

    .line 3624
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3623
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3626
    :cond_2
    const-string v9, "PowerManagerService"

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v9, :cond_7

    .line 3629
    const-string v7, "mLowHysteresisPoints = "

    .line 3630
    .local v7, strLowHysteresisPoints:Ljava/lang/String;
    const-string v4, "mBrightnessValuePoints = "

    .line 3631
    .local v4, strBrightnessValuePoints:Ljava/lang/String;
    const-string v5, "mHighHysteresisPoints = "

    .line 3632
    .local v5, strHighHysteresisPoints:Ljava/lang/String;
    const-string v8, "mMinimumExpressiveBrightnessValues = "

    .line 3634
    .local v8, strMinimumExpressiveBrightnessValues:Ljava/lang/String;
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mValueOfVirtualZeroCandela = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/PowerManagerService;->mValueOfVirtualZeroCandela:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 3636
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "),  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3635
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3638
    :cond_3
    const-string v9, "PowerManagerService"

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_4

    .line 3640
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "),  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3639
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3642
    :cond_4
    const-string v9, "PowerManagerService"

    invoke-static {v9, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3643
    const/4 v1, 0x0

    :goto_5
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    array-length v9, v9

    if-ge v1, v9, :cond_5

    .line 3644
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "),  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3643
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3646
    :cond_5
    const-string v9, "PowerManagerService"

    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v9, :cond_7

    .line 3648
    const/4 v1, 0x0

    :goto_6
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 3649
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3648
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 3651
    :cond_6
    const-string v9, "PowerManagerService"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3674
    .end local v4           #strBrightnessValuePoints:Ljava/lang/String;
    .end local v5           #strHighHysteresisPoints:Ljava/lang/String;
    .end local v7           #strLowHysteresisPoints:Ljava/lang/String;
    .end local v8           #strMinimumExpressiveBrightnessValues:Ljava/lang/String;
    :cond_7
    :goto_7
    return-void

    .line 3671
    :catch_0
    move-exception v0

    .line 3672
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "PowerManagerService"

    const-string v10, "printAutoBrightnessTables"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private printCurLock(I)V
    .locals 13
    .parameter "pos"

    .prologue
    .line 5077
    iget v10, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    if-nez v10, :cond_2

    iget v10, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    if-eqz v10, :cond_2

    .line 5079
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CurLock p:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mPS:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5080
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v10}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 5081
    .local v0, N:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 5082
    .local v3, cTime:J
    const-wide/16 v5, 0x0

    .line 5083
    .local v5, eTime:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v0, :cond_2

    .line 5085
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v10, v7}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerManagerService$WakeLock;

    .line 5086
    .local v9, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v10, v10, 0x3f

    invoke-static {v10}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v8

    .line 5087
    .local v8, type:Ljava/lang/String;
    const-string v1, ""

    .line 5088
    .local v1, acquireCausesWakeup:Ljava/lang/String;
    iget v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v11, 0x1000

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 5089
    const-string v1, " AW "

    .line 5091
    :cond_0
    const-string v2, ""

    .line 5092
    .local v2, activated:Ljava/lang/String;
    iget-boolean v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v10, :cond_1

    .line 5093
    const-string v2, " active"

    .line 5095
    :cond_1
    iget-wide v10, v9, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    sub-long v5, v3, v10

    .line 5096
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (minState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " activeT="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 5100
    .end local v0           #N:I
    .end local v1           #acquireCausesWakeup:Ljava/lang/String;
    .end local v2           #activated:Ljava/lang/String;
    .end local v3           #cTime:J
    .end local v5           #eTime:J
    .end local v7           #i:I
    .end local v8           #type:Ljava/lang/String;
    .end local v9           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    return-void
.end method

.method private printCurLockForce(Z)V
    .locals 15
    .parameter "screenOn"

    .prologue
    .line 5106
    if-nez p1, :cond_3

    .line 5108
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CurLockF mPS:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mUS="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5109
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v12}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v0

    .line 5110
    .local v0, N:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 5111
    .local v3, cTime:J
    const-wide/16 v5, 0x0

    .line 5112
    .local v5, eTime:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v0, :cond_2

    .line 5114
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v12, v7}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/PowerManagerService$WakeLock;

    .line 5115
    .local v11, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v12, v12, 0x3f

    invoke-static {v12}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v10

    .line 5116
    .local v10, type:Ljava/lang/String;
    const-string v1, ""

    .line 5117
    .local v1, acquireCausesWakeup:Ljava/lang/String;
    iget v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v13, 0x1000

    and-int/2addr v12, v13

    if-eqz v12, :cond_0

    .line 5118
    const-string v1, " AW "

    .line 5120
    :cond_0
    const-string v2, ""

    .line 5121
    .local v2, activated:Ljava/lang/String;
    iget-boolean v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    if-eqz v12, :cond_1

    .line 5122
    const-string v2, " active"

    .line 5124
    :cond_1
    iget-wide v12, v11, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    sub-long v5, v3, v12

    .line 5125
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (mS="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  activeT="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 5129
    .end local v1           #acquireCausesWakeup:Ljava/lang/String;
    .end local v2           #activated:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPokeLocks.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PowerManagerService$PokeLock;

    .line 5132
    .local v9, p:Lcom/android/server/PowerManagerService$PokeLock;
    const-string v12, "PowerManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " pokeLock "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5136
    .end local v0           #N:I
    .end local v3           #cTime:J
    .end local v5           #eTime:J
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_3
    return-void
.end method

.method private proximityChangedLocked(Z)V
    .locals 3
    .parameter "active"

    .prologue
    .line 4785
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximityChangedLocked, active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 4788
    const-string v0, "PowerManagerService"

    const-string v1, "Ignoring proximity change after sensor is disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4820
    :cond_0
    :goto_0
    return-void

    .line 4791
    :cond_1
    if-eqz p1, :cond_3

    .line 4793
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_2

    .line 4797
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 4800
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    goto :goto_0

    .line 4805
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 4807
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "b mProxIgnoredBecauseScreenTurnedOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProxIgnoredBecauseScreenTurnedOff:Z

    if-nez v0, :cond_4

    .line 4811
    const-string v0, "proximity : far"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 4812
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 4815
    :cond_4
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_0

    .line 4817
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_0
.end method

.method private releaseDVFSLockLocked(Landroid/os/IBinder;)V
    .locals 8
    .parameter "lock"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 5441
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3, p1}, Lcom/android/server/PowerManagerService$DVFSLockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v2

    .line 5442
    .local v2, removedDVFSwl:Lcom/android/server/PowerManagerService$DVFSLock;
    if-nez v2, :cond_0

    .line 5482
    :goto_0
    return-void

    .line 5447
    :cond_0
    iget v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    if-ne v3, v7, :cond_3

    .line 5448
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-ne v2, v3, :cond_1

    .line 5449
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getMinOfMaxLock()Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v1

    .line 5451
    .local v1, nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    if-eqz v1, :cond_2

    .line 5452
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain DVFS_MAX_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5453
    iget v3, v1, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v7, v3}, Lcom/android/server/PowerManagerService;->nativeAcquireDVFSLock(II)I

    .line 5454
    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    .line 5481
    .end local v1           #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 5457
    .restart local v1       #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_2
    const-string v3, "PowerManagerService"

    const-string v4, "releaseDVFSLockLocked : all DVFS_MAX_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    invoke-static {v7}, Lcom/android/server/PowerManagerService;->nativeReleaseDVFSLock(I)I

    .line 5459
    iput-object v5, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_1

    .line 5463
    .end local v1           #nextMinOfMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;
    :cond_3
    iget v3, v2, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    if-ne v3, v6, :cond_1

    .line 5464
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    if-ne v2, v3, :cond_1

    .line 5465
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$DVFSLockList;->getMaxOfMinLock()Lcom/android/server/PowerManagerService$DVFSLock;

    move-result-object v0

    .line 5467
    .local v0, nextMaxOfMinLock:Lcom/android/server/PowerManagerService$DVFSLock;
    if-eqz v0, :cond_4

    .line 5468
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain DVFS_MIN_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5469
    iget v3, v0, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    invoke-static {v6, v3}, Lcom/android/server/PowerManagerService;->nativeAcquireDVFSLock(II)I

    .line 5470
    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_1

    .line 5473
    :cond_4
    const-string v3, "PowerManagerService"

    const-string v4, "releaseDVFSLockLocked : all DVFS_MIN_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5474
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->nativeReleaseDVFSLock(I)I

    .line 5475
    iput-object v5, p0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    goto :goto_1
.end method

.method private releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    .locals 12
    .parameter "lock"
    .parameter "flags"
    .parameter "death"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1419
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/PowerManagerService$WakeLock;

    move-result-object v10

    .line 1420
    .local v10, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-nez v10, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget-boolean v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->isReleasedInternal:Z

    if-nez v0, :cond_0

    .line 1435
    iget v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1436
    iget v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1437
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1438
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLockLocked : PROXIMITY_SCREEN_OFF_WAKE_LOCK : mProximityWakeLockCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget v0, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v0, :cond_2

    .line 1441
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    .line 1445
    const-string v0, "PowerManagerService"

    const-string v1, "waiting for proximity sensor to go negative"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_2
    :goto_1
    iget-object v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v10, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1485
    iget-object v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    invoke-virtual {p0, v10, v0}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1448
    :cond_3
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->disableProximityLockLocked()V

    goto :goto_1

    .line 1452
    :cond_4
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1454
    iget v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 1455
    const-string v0, "PowerManagerService"

    const-string v1, "releaseWakeLockLocked : ON_AFTER_RELEASE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const-string v0, "ON_AFTER_RELEASE wake lock"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 1457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 1460
    :cond_5
    invoke-direct {p0, v11}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    .line 1461
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    move v9, v8

    .line 1462
    .local v9, bGoOff:Z
    :goto_2
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_7

    const-string v0, "Screen__Off : "

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "releaseWakeLockLocked flags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget v0, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v1, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_1

    .end local v9           #bGoOff:Z
    :cond_6
    move v9, v5

    .line 1461
    goto :goto_2

    .line 1462
    .restart local v9       #bGoOff:Z
    :cond_7
    const-string v0, ""

    goto :goto_3

    .line 1466
    .end local v9           #bGoOff:Z
    :cond_8
    iget v0, v10, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v0, v0, 0x3f

    if-ne v0, v8, :cond_2

    .line 1467
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1469
    const/16 v0, 0xaa9

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1472
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-nez v0, :cond_2

    .line 1474
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    if-nez v0, :cond_9

    .line 1475
    const-string v0, "PowerManagerService"

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->nativeReleaseWakeLock(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1478
    :cond_9
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseWakeLockLocked : mForceDisableWakeLock : NOT released : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private screenOffFinishedAnimatingLocked(I)I
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    .line 2673
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->printCurLockForce(Z)V

    .line 2678
    const/16 v1, 0xaa8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2680
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2681
    invoke-direct {p0, v6}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2682
    .local v0, err:I
    if-nez v0, :cond_0

    .line 2683
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2684
    invoke-direct {p0, v6, p1}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2686
    :cond_0
    return v0
.end method

.method private sendBrightnessModeBySysfs(I)V
    .locals 6
    .parameter "lux"

    .prologue
    const/16 v5, 0x3a98

    const/16 v4, 0x5dc

    const/16 v3, 0x96

    const/16 v2, 0xf

    const/4 v1, 0x5

    .line 3888
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v0, :cond_5

    .line 3889
    if-ge p1, v2, :cond_0

    .line 3890
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    .line 3905
    :goto_0
    return-void

    .line 3891
    :cond_0
    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    .line 3892
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3893
    :cond_1
    if-lt p1, v3, :cond_2

    if-ge p1, v4, :cond_2

    .line 3894
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3895
    :cond_2
    if-lt p1, v4, :cond_3

    if-ge p1, v5, :cond_3

    .line 3896
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3897
    :cond_3
    if-lt p1, v5, :cond_4

    .line 3898
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3900
    :cond_4
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3903
    :cond_5
    const-string v0, "/sys/class/backlight/panel/auto_brightness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private sendNotificationLocked(ZI)V
    .locals 9
    .parameter "on"
    .parameter "why"

    .prologue
    const/16 v8, 0xaa7

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2017
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-nez v1, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return-void

    .line 2027
    :cond_1
    const-string v1, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNotificationLocked on="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    if-nez p1, :cond_2

    .line 2035
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mStillNeedSleepNotification:Z

    .line 2039
    :cond_2
    const/4 v0, 0x0

    .line 2040
    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v1, v1, v0

    if-eq v1, v6, :cond_3

    .line 2041
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2043
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_8

    move v1, v2

    :goto_2
    aput v1, v4, v0

    .line 2044
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v0

    .line 2053
    if-ne v0, v7, :cond_5

    .line 2056
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aget v1, v1, v3

    if-le v1, p2, :cond_4

    .line 2057
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    aput p2, v1, v3

    .line 2059
    :cond_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    if-eqz p1, :cond_9

    move v1, v2

    :goto_3
    aput v1, v4, v3

    .line 2060
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v2

    .line 2061
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v7

    .line 2062
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2063
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2064
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2065
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2066
    const/4 v0, 0x0

    .line 2068
    :cond_5
    if-ne v0, v2, :cond_6

    if-nez p1, :cond_6

    .line 2069
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v3

    .line 2070
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aput v6, v1, v2

    .line 2071
    const/4 v0, -0x1

    .line 2074
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v3, v3, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v8, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2075
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2080
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_7

    .line 2081
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2085
    :cond_7
    if-ltz v0, :cond_0

    .line 2090
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2091
    const/16 v1, 0xaa5

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    iget v2, v2, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2092
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 2043
    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 2059
    goto/16 :goto_3
.end method

.method private setDynamicAutoBrightnessSlopeTables()V
    .locals 12

    .prologue
    .line 3823
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    .line 3824
    .local v10, lengthOfLowHysteresisSlope:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    .line 3825
    .local v8, lengthOfBrightnessValueSlope:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    .line 3827
    .local v9, lengthOfHighHysteresisSlope:I
    new-array v0, v10, [F

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisSlope:[F

    .line 3828
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessValueSlope:[F

    .line 3829
    new-array v0, v9, [F

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisSlope:[F

    .line 3830
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 3831
    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisSlope:[F

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v11, v7

    .line 3830
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3834
    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    .line 3835
    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mBrightnessValueSlope:[F

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v11, v7

    .line 3834
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3838
    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_2

    .line 3839
    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisSlope:[F

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->getSlope(IIIIZ)F

    move-result v0

    aput v0, v11, v7

    .line 3838
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3842
    :cond_2
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->printAutoBrightnessTables()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3847
    .end local v7           #i:I
    .end local v8           #lengthOfBrightnessValueSlope:I
    .end local v9           #lengthOfHighHysteresisSlope:I
    .end local v10           #lengthOfLowHysteresisSlope:I
    :goto_3
    return-void

    .line 3843
    :catch_0
    move-exception v6

    .line 3844
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "PowerManagerService"

    const-string v1, "setDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private setLightBrightness(II)V
    .locals 2
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 3162
    return-void
.end method

.method private setPowerState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 2479
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 2480
    return-void
.end method

.method private setPowerState(IZI)V
    .locals 15
    .parameter "newState"
    .parameter "noChangeLights"
    .parameter "reason"

    .prologue
    .line 2484
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v10

    .line 2494
    if-eqz p2, :cond_0

    .line 2495
    and-int/lit8 v9, p1, -0xf

    :try_start_0
    iget v11, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v11, v11, 0xe

    or-int p1, v9, v11

    .line 2497
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v9, :cond_1

    .line 2499
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setPowerState : mProximitySensorActive is true , so SCREEN_BRIGHT bits is cleared, orig newState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    and-int/lit8 p1, p1, -0x4

    .line 2503
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->batteryIsLow()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2504
    and-int/lit8 v9, p1, -0xf

    or-int/lit8 p1, v9, 0x10

    .line 2511
    :goto_0
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_2

    .line 2514
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyButtonState(I)I

    move-result p1

    .line 2515
    invoke-direct/range {p0 .. p1}, Lcom/android/server/PowerManagerService;->applyKeyboardState(I)I

    move-result p1

    .line 2518
    :cond_2
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-ne v0, v9, :cond_4

    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v9, :cond_4

    .line 2519
    monitor-exit v10

    .line 2662
    :goto_1
    return-void

    .line 2506
    :cond_3
    and-int/lit8 p1, p1, -0x11

    goto :goto_0

    .line 2522
    :cond_4
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-nez v9, :cond_5

    .line 2523
    const-string v9, "PowerManagerService"

    const-string v11, "setPowerState : mBootCompleted : false, newState |= ALL_BRIGHT"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    or-int/lit8 p1, p1, 0xf

    .line 2527
    :cond_5
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    const/4 v6, 0x1

    .line 2528
    .local v6, oldScreenOn:Z
    :goto_2
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_7

    const/4 v5, 0x1

    .line 2545
    .local v5, newScreenOn:Z
    :goto_3
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v0, p1

    if-eq v9, v0, :cond_8

    const/4 v8, 0x1

    .line 2547
    .local v8, stateChanged:Z
    :goto_4
    if-eqz v8, :cond_9

    const/4 v9, 0x3

    move/from16 v0, p3

    if-ne v0, v9, :cond_9

    .line 2548
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->isScreenSaverEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2552
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->startScreenSaver()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2554
    monitor-exit v10

    goto :goto_1

    .line 2661
    .end local v5           #newScreenOn:Z
    .end local v6           #oldScreenOn:Z
    .end local v8           #stateChanged:Z
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2527
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 2528
    .restart local v6       #oldScreenOn:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 2545
    .restart local v5       #newScreenOn:Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    .line 2560
    .restart local v8       #stateChanged:Z
    :cond_9
    if-eq v6, v5, :cond_11

    .line 2561
    if-eqz v5, :cond_e

    .line 2578
    const/4 v7, 0x1

    .line 2584
    .local v7, reallyTurnScreenOn:Z
    :try_start_1
    iget-boolean v9, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    if-eqz v9, :cond_a

    .line 2586
    const-string v9, "PowerManagerService"

    const-string v11, "- PREVENTING screen from really turning on!"

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    const/4 v7, 0x0

    .line 2590
    :cond_a
    if-eqz v7, :cond_d

    .line 2591
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v2

    .line 2592
    .local v2, err:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v3

    .line 2594
    .local v3, identity:J
    :try_start_2
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v11

    invoke-interface {v9, v11}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2595
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2599
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2607
    .end local v3           #identity:J
    :goto_5
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2608
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2609
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2610
    const/16 v9, 0xaa8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-wide v13, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget v13, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2612
    if-nez v2, :cond_c

    .line 2613
    const/4 v9, 0x1

    const/4 v11, -0x1

    invoke-direct {p0, v9, v11}, Lcom/android/server/PowerManagerService;->sendNotificationLocked(ZI)V

    .line 2618
    if-eqz v8, :cond_b

    .line 2619
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2621
    :cond_b
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2658
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_c
    :goto_6
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0x1f

    and-int/lit8 v11, p1, 0x1e

    or-int/2addr v9, v11

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2660
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 2661
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2596
    .restart local v2       #err:I
    .restart local v3       #identity:J
    .restart local v7       #reallyTurnScreenOn:Z
    :catch_0
    move-exception v1

    .line 2597
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOn on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2599
    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2602
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_d
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    .line 2604
    const/4 v2, 0x0

    .restart local v2       #err:I
    goto :goto_5

    .line 2627
    .end local v2           #err:I
    .end local v7           #reallyTurnScreenOn:Z
    :cond_e
    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    .line 2628
    if-eqz v8, :cond_f

    .line 2629
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2633
    :cond_f
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2634
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    .line 2635
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    .line 2636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v3

    .line 2639
    .restart local v3       #identity:J
    :try_start_6
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteScreenOff()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2643
    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2645
    :goto_7
    iget v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v9, v9, -0x2

    iput v9, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2646
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v9}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_10

    .line 2647
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    .restart local v2       #err:I
    goto :goto_6

    .line 2640
    .end local v2           #err:I
    :catch_1
    move-exception v1

    .line 2641
    .restart local v1       #e:Landroid/os/RemoteException;
    :try_start_8
    const-string v9, "PowerManagerService"

    const-string v11, "RemoteException calling noteScreenOff on BatteryStatsService"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2643
    :try_start_9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_2
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 2649
    :cond_10
    const/4 v2, 0x0

    .line 2650
    .restart local v2       #err:I
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    goto :goto_6

    .line 2653
    .end local v2           #err:I
    .end local v3           #identity:J
    :cond_11
    if-eqz v8, :cond_c

    .line 2655
    const/4 v9, 0x0

    move/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6
.end method

.method private setScreenBrightnessMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4389
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 4390
    if-ne p1, v1, :cond_1

    move v0, v1

    .line 4391
    .local v0, enabled:Z
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eq v3, v0, :cond_0

    .line 4392
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    .line 4393
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v3, v3

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->sendBrightnessModeBySysfs(I)V

    .line 4396
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 4398
    :cond_0
    monitor-exit v4

    .line 4399
    return-void

    .end local v0           #enabled:Z
    :cond_1
    move v0, v2

    .line 4390
    goto :goto_0

    .restart local v0       #enabled:Z
    :cond_2
    move v3, v2

    .line 4393
    goto :goto_1

    :cond_3
    move v1, v2

    .line 4396
    goto :goto_2

    .line 4398
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setScreenOffTimeoutsLocked()V
    .locals 7

    .prologue
    const/16 v6, 0x1770

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4407
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 4408
    iget v1, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4409
    iput v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4410
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 4465
    :goto_0
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenOffTimeouts mKeylightDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mScreenOffDelay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    return-void

    .line 4411
    :cond_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 4412
    const/16 v1, 0x3a98

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4413
    iput v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4414
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 4415
    :cond_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 4416
    iput v6, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4417
    const/16 v1, 0xfa0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4418
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_0

    .line 4421
    :cond_2
    const/4 v0, 0x0

    .line 4423
    .local v0, totalDelay:I
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/android/server/PowerManagerService;->mIsSecuredLock:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 4424
    iget v1, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    iget v2, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4425
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ATT: setScreenOffTimeouts mDeviceLockTimeoutSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    :goto_1
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-le v0, v1, :cond_3

    .line 4431
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 4434
    :cond_3
    iput v6, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    .line 4435
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-ne v1, v4, :cond_6

    .line 4446
    :cond_4
    :goto_2
    if-gez v0, :cond_7

    .line 4448
    iget v1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    .line 4457
    :goto_3
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    add-int/lit16 v1, v1, 0x1b58

    if-lt v0, v1, :cond_9

    .line 4458
    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    add-int/lit16 v1, v1, -0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    .line 4459
    const/16 v1, 0x1b58

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto/16 :goto_0

    .line 4428
    :cond_5
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    goto :goto_1

    .line 4437
    :cond_6
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    .line 4439
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_4

    .line 4443
    iget v1, p0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    iput v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    goto :goto_2

    .line 4449
    :cond_7
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    if-ge v1, v0, :cond_8

    .line 4453
    iget v1, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_3

    .line 4455
    :cond_8
    iput v5, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    goto :goto_3

    .line 4461
    :cond_9
    iput v4, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    goto/16 :goto_0
.end method

.method private setScreenStateLocked(Z)I
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 2428
    if-eqz p1, :cond_1

    .line 2429
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v1, :cond_1

    .line 2444
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 2449
    :cond_1
    if-nez p1, :cond_3

    iget v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsFakeOff:Z

    if-nez v1, :cond_3

    .line 2450
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->nativeSetScreenState(Z)I

    move-result v0

    .line 2451
    .local v0, err:I
    invoke-static {}, Lcom/android/server/PowerManagerService;->nativeFakeOff()I

    move-result v0

    .line 2452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsFakeOff:Z

    .line 2459
    :goto_0
    if-nez v0, :cond_2

    .line 2460
    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :goto_1
    iput-wide v1, p0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    .line 2461
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 2462
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 2463
    if-eqz p1, :cond_5

    .line 2466
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    .line 2474
    :cond_2
    :goto_2
    return v0

    .line 2455
    .end local v0           #err:I
    :cond_3
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->nativeSetScreenState(Z)I

    move-result v0

    .line 2456
    .restart local v0       #err:I
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mIsFakeOff:Z

    goto :goto_0

    .line 2460
    :cond_4
    const-wide/16 v1, 0x0

    goto :goto_1

    .line 2469
    :cond_5
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 2470
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_2
.end method

.method private setTimeoutLocked(JI)V
    .locals 6
    .parameter "now"
    .parameter "nextState"

    .prologue
    .line 1747
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 1748
    return-void
.end method

.method private setTimeoutLocked(JJI)V
    .locals 15
    .parameter "now"
    .parameter "originalTimeoutOverride"
    .parameter "nextState"

    .prologue
    .line 1754
    move-wide/from16 v1, p3

    .line 1755
    .local v1, timeoutOverride:J
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    if-eqz v10, :cond_4

    .line 1756
    iget-object v12, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v12

    .line 1757
    const-wide/16 v4, 0x0

    .line 1758
    .local v4, when:J
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-gtz v10, :cond_6

    .line 1759
    packed-switch p5, :pswitch_data_0

    .line 1777
    :pswitch_0
    move-wide/from16 v4, p1

    .line 1813
    :goto_0
    const/4 v3, 0x1

    .line 1814
    .local v3, top_most_need_intelligent_sleep:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mSmartSleepTask:Lcom/android/server/PowerManagerService$SmartSleepTask;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1817
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v10, :cond_0

    .line 1818
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationTask:Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1821
    :cond_0
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepEnabled:Z

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    move/from16 v0, p5

    if-eq v0, v10, :cond_1

    if-nez p5, :cond_3

    :cond_1
    if-eqz v3, :cond_3

    .line 1823
    iget-boolean v10, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_2

    .line 1824
    iget v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationDelay:I

    int-to-long v10, v10

    sub-long v8, v4, v10

    .line 1825
    .local v8, whenSmartSleepNotification:J
    cmp-long v10, v8, p1

    if-lez v10, :cond_a

    .line 1826
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationTask:Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

    invoke-virtual {v10, v11, v8, v9}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1827
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setTimeoutLocked::SmartSleepNotification : after "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v13, v8, p1

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    .end local v8           #whenSmartSleepNotification:J
    :cond_2
    :goto_1
    iget v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepDelay:I

    int-to-long v10, v10

    sub-long v6, v4, v10

    .line 1835
    .local v6, whenSmartSleep:J
    cmp-long v10, v6, p1

    if-lez v10, :cond_b

    .line 1836
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mSmartSleepTask:Lcom/android/server/PowerManagerService$SmartSleepTask;

    invoke-virtual {v10, v11, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1837
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setTimeoutLocked::SmartSleep : after "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v13, v6, p1

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    .end local v6           #whenSmartSleep:J
    :cond_3
    :goto_2
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1846
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    move/from16 v0, p5

    iput v0, v10, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    .line 1847
    iget-object v13, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-lez v10, :cond_c

    sub-long v10, p3, v1

    :goto_3
    iput-wide v10, v13, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    .line 1850
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    invoke-virtual {v10, v11, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1851
    iput-wide v4, p0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    .line 1852
    monitor-exit v12

    .line 1854
    .end local v3           #top_most_need_intelligent_sleep:Z
    .end local v4           #when:J
    :cond_4
    return-void

    .line 1762
    .restart local v4       #when:J
    :pswitch_1
    iget v10, p0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    int-to-long v10, v10

    add-long v4, p1, v10

    .line 1763
    goto/16 :goto_0

    .line 1765
    :pswitch_2
    iget v10, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v10, :cond_5

    .line 1766
    iget v10, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v10, v10

    add-long v4, p1, v10

    .line 1767
    goto/16 :goto_0

    .line 1769
    :cond_5
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mDimDelay="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " while trying to dim"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :pswitch_3
    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1773
    :try_start_1
    iget v10, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v13, v10

    add-long v4, p1, v13

    .line 1774
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v10

    .line 1852
    :catchall_1
    move-exception v10

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v10

    .line 1782
    :cond_6
    :try_start_3
    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setTimeoutLocked :  override : timeoutOverride : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget v10, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v10, v10

    cmp-long v10, v1, v10

    if-gtz v10, :cond_7

    .line 1784
    add-long v4, p1, v1

    .line 1785
    const/16 p5, 0x0

    .line 1786
    goto/16 :goto_0

    .line 1788
    :cond_7
    iget v10, p0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    int-to-long v10, v10

    sub-long/2addr v1, v10

    .line 1790
    iget v10, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    if-ltz v10, :cond_9

    .line 1791
    iget v10, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v10, v10

    cmp-long v10, v1, v10

    if-gtz v10, :cond_8

    .line 1792
    add-long v4, p1, v1

    .line 1793
    const/16 p5, 0x1

    .line 1794
    goto/16 :goto_0

    .line 1796
    :cond_8
    iget v10, p0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    int-to-long v10, v10

    sub-long/2addr v1, v10

    .line 1799
    :cond_9
    add-long v4, p1, v1

    .line 1800
    const/16 p5, 0x3

    goto/16 :goto_0

    .line 1829
    .restart local v3       #top_most_need_intelligent_sleep:Z
    .restart local v8       #whenSmartSleepNotification:J
    :cond_a
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationTask:Lcom/android/server/PowerManagerService$SmartSleepNotificationTask;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1830
    const-string v10, "PowerManagerService"

    const-string v11, "setTimeoutLocked::SmartSleepNotification : now"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1839
    .end local v8           #whenSmartSleepNotification:J
    .restart local v6       #whenSmartSleep:J
    :cond_b
    iget-object v10, p0, Lcom/android/server/PowerManagerService;->mSmartSleepHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/PowerManagerService;->mSmartSleepTask:Lcom/android/server/PowerManagerService$SmartSleepTask;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1840
    const-string v10, "PowerManagerService"

    const-string v11, "setTimeoutLocked::SmartSleep : now"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .line 1847
    .end local v6           #whenSmartSleep:J
    :cond_c
    const-wide/16 v10, -0x1

    goto/16 :goto_3

    .line 1759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldDeferScreenOnLocked()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2695
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    if-eqz v2, :cond_1

    .line 2714
    :cond_0
    :goto_0
    return v1

    .line 2706
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2707
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_0

    .line 2706
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2714
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldLog(J)Z
    .locals 7
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3256
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 3257
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 3258
    iput-wide p1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleTime:J

    .line 3259
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 3260
    monitor-exit v2

    .line 3265
    :goto_0
    return v0

    .line 3261
    :cond_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    const/16 v4, 0x1e

    if-ge v3, v4, :cond_1

    .line 3262
    iget v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mWarningSpewThrottleCount:I

    .line 3263
    monitor-exit v2

    goto :goto_0

    .line 3267
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3265
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private shutdown(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 4241
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4242
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Too early to call shutdown()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4244
    :cond_1
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdown. reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4245
    move-object v0, p1

    .line 4247
    .local v0, finalReason:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/PowerManagerService$15;

    invoke-direct {v2, p0, v0}, Lcom/android/server/PowerManagerService$15;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4266
    return-void
.end method

.method private testAutoBrightnessSpec()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 3593
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0xc8

    if-gt v0, v3, :cond_1

    .line 3594
    invoke-virtual {p0, v0}, Lcom/android/server/PowerManagerService;->setRatioOfAutoBrightness(I)V

    .line 3595
    const/16 v3, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 3597
    .local v2, luxArray:[I
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------------------------- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mSignedSettingsRatio:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ---------------------------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3599
    iput v6, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 3600
    iput v6, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 3601
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3602
    aget v3, v2, v1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 3598
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3593
    :cond_0
    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    .line 3605
    .end local v1           #j:I
    .end local v2           #luxArray:[I
    :cond_1
    return-void

    .line 3595
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x58t 0x1bt 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x28t 0x23t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
        0x97t 0x3at 0x0t 0x0t
        0x98t 0x3at 0x0t 0x0t
    .end array-data
.end method

.method private updateLightsLocked(II)V
    .locals 23
    .parameter "newState"
    .parameter "forceState"

    .prologue
    .line 2718
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    .line 2722
    .local v11, oldState:I
    and-int/lit8 v20, v11, 0x1

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2726
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->shouldDeferScreenOnLocked()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    if-eqz v20, :cond_1

    .line 2727
    and-int/lit8 p1, p1, -0x4

    .line 2741
    :cond_1
    xor-int v16, p1, v11

    .line 2742
    .local v16, realDifference:I
    or-int v4, v16, p2

    .line 2743
    .local v4, difference:I
    if-nez v4, :cond_3

    .line 2904
    :cond_2
    :goto_0
    return-void

    .line 2747
    :cond_3
    const/4 v10, 0x0

    .line 2748
    .local v10, offMask:I
    const/4 v5, 0x0

    .line 2749
    .local v5, dimMask:I
    const/4 v12, 0x0

    .line 2751
    .local v12, onMask:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v14

    .line 2753
    .local v14, preferredBrightness:I
    const-string v20, "PowerManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ulight 0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "->0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "|0x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    and-int/lit8 v20, v4, 0x8

    if-eqz v20, :cond_4

    .line 2756
    and-int/lit8 v20, p1, 0x8

    if-nez v20, :cond_11

    .line 2757
    or-int/lit8 v10, v10, 0x8

    .line 2763
    :cond_4
    :goto_1
    and-int/lit8 v20, v4, 0x4

    if-eqz v20, :cond_5

    .line 2764
    and-int/lit8 v20, p1, 0x4

    if-nez v20, :cond_12

    .line 2765
    or-int/lit8 v10, v10, 0x4

    .line 2771
    :cond_5
    :goto_2
    and-int/lit8 v20, v4, 0x3

    if-eqz v20, :cond_c

    .line 2772
    const/4 v9, -0x1

    .line 2778
    .local v9, nominalCurrentValue:I
    and-int/lit8 v20, v16, 0x3

    if-eqz v20, :cond_6

    .line 2779
    and-int/lit8 v20, v11, 0x3

    packed-switch v20, :pswitch_data_0

    .line 2792
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->getCurrentBrightness()I

    move-result v9

    .line 2796
    :cond_6
    :goto_3
    move v3, v14

    .line 2797
    .local v3, brightness:I
    const/16 v19, 0xa

    .line 2798
    .local v19, steps:I
    and-int/lit8 v20, p1, 0x2

    if-nez v20, :cond_8

    .line 2802
    const/high16 v17, 0x3fc0

    .line 2803
    .local v17, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 2804
    .local v15, ratio:F
    const/high16 v20, 0x3f80

    cmpl-float v20, v15, v20

    if-lez v20, :cond_7

    const/high16 v15, 0x3f80

    .line 2805
    :cond_7
    and-int/lit8 v20, p1, 0x1

    if-nez v20, :cond_14

    .line 2806
    and-int/lit8 v20, v11, 0x2

    if-eqz v20, :cond_13

    .line 2808
    const/16 v19, 0xa

    .line 2813
    :goto_4
    const/4 v3, 0x0

    .line 2834
    .end local v15           #ratio:F
    .end local v17           #scale:F
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    and-int/lit8 v20, p1, 0x1

    if-eqz v20, :cond_9

    .line 2835
    const/16 v19, 0x4

    .line 2838
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2840
    .local v7, identity:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2844
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2848
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 2849
    sget v20, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v13, v3, v20

    .line 2850
    .local v13, powerSaveModeBrightness:I
    if-lez v3, :cond_a

    .line 2851
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2852
    const-string v20, "PowerManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateLightsLocked : mSystemPowerSaveModeEnabled:: brightness:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    .end local v13           #powerSaveModeBrightness:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v20, v0

    if-ltz v20, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v3, v0, :cond_b

    .line 2857
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 2858
    const-string v20, "PowerManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateLightsLocked : brightness is changed to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " because of temperature"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 2862
    mul-int/lit8 v6, v19, 0x10

    .line 2863
    .local v6, dt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1, v6}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 2882
    .end local v3           #brightness:I
    .end local v6           #dt:I
    .end local v7           #identity:J
    .end local v9           #nominalCurrentValue:I
    .end local v19           #steps:I
    :cond_c
    if-eqz v10, :cond_d

    .line 2884
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v10, v1}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2886
    :cond_d
    if-eqz v5, :cond_f

    .line 2887
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2888
    .restart local v3       #brightness:I
    and-int/lit8 v20, p1, 0x10

    if-eqz v20, :cond_e

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v3, v0, :cond_e

    .line 2890
    const/16 v3, 0xa

    .line 2893
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    .line 2895
    .end local v3           #brightness:I
    :cond_f
    if-eqz v12, :cond_2

    .line 2896
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v3

    .line 2897
    .restart local v3       #brightness:I
    and-int/lit8 v20, p1, 0x10

    if-eqz v20, :cond_10

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v3, v0, :cond_10

    .line 2899
    const/16 v3, 0xa

    .line 2902
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/android/server/PowerManagerService;->setLightBrightness(II)V

    goto/16 :goto_0

    .line 2759
    .end local v3           #brightness:I
    :cond_11
    or-int/lit8 v12, v12, 0x8

    goto/16 :goto_1

    .line 2767
    :cond_12
    or-int/lit8 v12, v12, 0x4

    goto/16 :goto_2

    .line 2781
    .restart local v9       #nominalCurrentValue:I
    :pswitch_1
    move v9, v14

    .line 2782
    goto/16 :goto_3

    .line 2784
    :pswitch_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 2785
    goto/16 :goto_3

    .line 2787
    :pswitch_3
    const/4 v9, 0x0

    .line 2788
    goto/16 :goto_3

    .line 2811
    .restart local v3       #brightness:I
    .restart local v15       #ratio:F
    .restart local v17       #scale:F
    .restart local v19       #steps:I
    :cond_13
    const/high16 v20, 0x4120

    mul-float v20, v20, v15

    const/high16 v21, 0x3fc0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_4

    .line 2815
    :cond_14
    and-int/lit8 v20, v11, 0x1

    if-eqz v20, :cond_16

    .line 2817
    const/high16 v20, 0x4120

    const/high16 v21, 0x3f80

    sub-float v21, v21, v15

    mul-float v20, v20, v21

    const/high16 v21, 0x3fc0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 2822
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->getStayOnConditionsLocked()I

    move-result v18

    .line 2823
    .local v18, stayOnConditions:I
    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 2829
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    .line 2831
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    goto/16 :goto_5

    .line 2820
    .end local v18           #stayOnConditions:I
    :cond_16
    const/high16 v20, 0x4120

    mul-float v20, v20, v15

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    goto :goto_7

    .line 2841
    .end local v15           #ratio:F
    .end local v17           #scale:F
    .restart local v7       #identity:J
    :catch_0
    move-exception v20

    .line 2844
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    :catchall_0
    move-exception v20

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 2779
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNativePowerStateLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2665
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    if-nez v0, :cond_0

    .line 2666
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->nativeSetPowerState(ZZ)V

    .line 2670
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2666
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateSettingsValues()V
    .locals 3

    .prologue
    .line 4476
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "short_keylight_delay_ms"

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mShortKeylightDelay:I

    .line 4483
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    if-eqz v0, :cond_0

    .line 4484
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    .line 4486
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATT: updateSettingsValues : update : mDeviceLockTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 4491
    :cond_0
    return-void
.end method

.method private updateWakeLockLocked()V
    .locals 2

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->getStayOnConditionsLocked()I

    move-result v0

    .line 1131
    .local v0, stayOnConditions:I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    invoke-virtual {v1, v0}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1134
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 1139
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 1137
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0
.end method

.method private userActivity(JJZIZZ)V
    .locals 18
    .parameter "time"
    .parameter "timeoutOverride"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"
    .parameter "ignoreIfScreenOff"

    .prologue
    .line 3416
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    move/from16 v0, p6

    if-ne v0, v3, :cond_1

    .line 3418
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropping touch mPokey=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3420
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 3563
    :cond_0
    :goto_0
    return-void

    .line 3424
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3437
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-lez v3, :cond_3

    .line 3438
    if-nez p6, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z

    if-eqz v3, :cond_3

    .line 3439
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3440
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z

    .line 3441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long v15, v3, v5

    .line 3442
    .local v15, when:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    move-wide v0, v15

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 3443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 3448
    .end local v15           #when:J
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3449
    const-string v3, "PowerManagerService"

    const-string v4, "ignoring user activity while turning off screen"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    monitor-exit v17

    goto :goto_0

    .line 3558
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3454
    :cond_4
    if-eqz p8, :cond_5

    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_5

    .line 3455
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userActivity : ignoreIfScreenOff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mPowerState 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    monitor-exit v17

    goto/16 :goto_0

    .line 3460
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v3, :cond_6

    .line 3461
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 3463
    :cond_6
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    cmp-long v3, v3, p1

    if-lez v3, :cond_7

    if-eqz p7, :cond_1b

    .line 3464
    :cond_7
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    .line 3465
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v3, :cond_9

    :cond_8
    if-eqz p7, :cond_10

    .line 3466
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3471
    .local v13, prevUserState:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_11

    :cond_a
    const/4 v9, 0x1

    .line 3476
    .local v9, byApplyButtonState:Z
    :goto_1
    const/4 v3, 0x2

    move/from16 v0, p6

    if-ne v0, v3, :cond_14

    if-nez v9, :cond_14

    .line 3477
    sget-boolean v3, Lcom/android/server/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    if-eqz v3, :cond_13

    .line 3478
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v3, :cond_12

    const/16 v3, 0xf

    :goto_2
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3496
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_b

    if-nez v9, :cond_b

    .line 3497
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v3, v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    .line 3502
    :cond_b
    sget-boolean v3, Lcom/android/server/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    if-eqz v3, :cond_19

    .line 3503
    if-nez v9, :cond_c

    .line 3504
    const/4 v3, 0x3

    move/from16 v0, p6

    if-eq v0, v3, :cond_c

    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_18

    .line 3521
    :cond_c
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 3522
    .local v14, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 3524
    .local v10, ident:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move/from16 v0, p6

    invoke-interface {v3, v14, v0}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3528
    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3531
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3532
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 3533
    .local v12, pid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 3534
    if-eqz p6, :cond_1a

    .line 3535
    const-string v3, "input"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 3541
    :cond_d
    :goto_6
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen__On : userActivity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    .end local v12           #pid:I
    :cond_e
    if-nez v13, :cond_f

    .line 3544
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userActivity : mUserState 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 3548
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/PowerManagerService;->printCurLock(I)V

    .line 3549
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/PowerManagerService;->setPowerState(IZI)V

    .line 3551
    const/4 v8, 0x3

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V

    .line 3557
    .end local v9           #byApplyButtonState:Z
    .end local v10           #ident:J
    .end local v13           #prevUserState:I
    .end local v14           #uid:I
    :cond_10
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 3558
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v3, :cond_0

    .line 3561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto/16 :goto_0

    .line 3471
    .restart local v13       #prevUserState:I
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 3478
    .restart local v9       #byApplyButtonState:Z
    :cond_12
    const/4 v3, 0x7

    goto/16 :goto_2

    .line 3481
    :cond_13
    :try_start_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_3

    .line 3484
    :cond_14
    const/4 v3, 0x3

    move/from16 v0, p6

    if-ne v0, v3, :cond_15

    if-nez v9, :cond_15

    .line 3485
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v3, v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_3

    .line 3487
    :cond_15
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_17

    if-nez v9, :cond_17

    .line 3488
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eqz v3, :cond_16

    const/16 v3, 0xb

    :goto_8
    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_3

    :cond_16
    const/4 v3, 0x3

    goto :goto_8

    .line 3492
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_3

    .line 3506
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    if-eqz v3, :cond_c

    .line 3507
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    and-int/lit8 v3, v3, -0xd

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_4

    .line 3512
    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    const/16 v4, 0x5dc

    if-ne v3, v4, :cond_c

    .line 3513
    const/4 v3, 0x3

    move/from16 v0, p6

    if-eq v0, v3, :cond_c

    const/4 v3, 0x1

    move/from16 v0, p6

    if-eq v0, v3, :cond_c

    .line 3515
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    if-eqz v3, :cond_c

    .line 3516
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    and-int/lit8 v3, v3, -0xd

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    goto/16 :goto_4

    .line 3525
    .restart local v10       #ident:J
    .restart local v14       #uid:I
    :catch_0
    move-exception v3

    .line 3528
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_1
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3538
    .restart local v12       #pid:I
    :cond_1a
    const-string v3, "other"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    goto/16 :goto_6

    .line 3555
    .end local v9           #byApplyButtonState:Z
    .end local v10           #ident:J
    .end local v12           #pid:I
    .end local v13           #prevUserState:I
    .end local v14           #uid:I
    :cond_1b
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userActivity : not excuted : mLastEventTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/PowerManagerService;->mLastEventTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  force : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7
.end method


# virtual methods
.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .parameter "type"
    .parameter "frequency"
    .parameter "lock"
    .parameter "tag"

    .prologue
    .line 5381
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5382
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 5384
    .local v5, pid:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5388
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 5389
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 5390
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5392
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5394
    return-void

    .line 5390
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5392
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .locals 10
    .parameter "type"
    .parameter "frequency"
    .parameter "callingId"
    .parameter "tag"

    .prologue
    .line 5485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5486
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 5488
    .local v5, pid:I
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5492
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5493
    :try_start_1
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 5494
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 5495
    .local v3, token:Landroid/os/IBinder;
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callingId : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    .line 5497
    invoke-direct/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 5498
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 5503
    .end local v3           #token:Landroid/os/IBinder;
    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5505
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5507
    return-void

    .line 5501
    :cond_0
    :try_start_2
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : this callingId already acquired PersistentDVFSLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5503
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5505
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 10
    .parameter "flags"
    .parameter "lock"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1160
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1161
    .local v4, pid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq v3, v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_0
    if-eqz p4, :cond_1

    .line 1165
    invoke-virtual {p0, v3, v4}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1167
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1169
    .local v7, ident:J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 1170
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V

    .line 1171
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1173
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1175
    return-void

    .line 1171
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1173
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V
    .locals 14
    .parameter "flags"
    .parameter "lock"
    .parameter "uid"
    .parameter "pid"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1219
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1220
    const/16 p6, 0x0

    .line 1223
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v10

    .line 1228
    .local v10, index:I
    if-gez v10, :cond_7

    .line 1229
    new-instance v1, Lcom/android/server/PowerManagerService$WakeLock;

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/PowerManagerService$WakeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1230
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    and-int/lit8 v2, v2, 0x3f

    sparse-switch v2, :sswitch_data_0

    .line 1253
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad wakelock type for lock \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_1
    :goto_0
    return-void

    .line 1238
    :sswitch_0
    const/16 v2, 0xf

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    .line 1257
    :goto_1
    :sswitch_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v1}, Lcom/android/server/PowerManagerService$LockList;->addLock(Lcom/android/server/PowerManagerService$WakeLock;)V

    .line 1258
    if-eqz p6, :cond_2

    .line 1259
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1261
    :cond_2
    const/4 v11, 0x1

    .line 1262
    .local v11, newlock:Z
    const/4 v9, 0x0

    .line 1263
    .local v9, diffsource:Z
    const/4 v13, 0x0

    .line 1264
    .local v13, oldsource:Landroid/os/WorkSource;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    .line 1286
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->isScreenLock(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1291
    and-int/lit8 v2, p1, 0x3f

    const/16 v3, 0x20

    if-ne v2, v3, :cond_b

    .line 1292
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    .line 1293
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWakeLock : PROXIMITY_SCREEN_OFF_WAKE_LOCK : mProximityWakeLockCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1296
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->enableProximityLockLocked()V

    .line 1351
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 1354
    invoke-virtual {p0, v1, v13}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1356
    :cond_5
    if-nez v11, :cond_6

    if-eqz v9, :cond_1

    .line 1357
    :cond_6
    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    goto/16 :goto_0

    .line 1242
    .end local v9           #diffsource:Z
    .end local v11           #newlock:Z
    .end local v13           #oldsource:Landroid/os/WorkSource;
    :sswitch_2
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto/16 :goto_1

    .line 1245
    :sswitch_3
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    goto/16 :goto_1

    .line 1266
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_7
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v10}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1267
    .restart local v1       #wl:Lcom/android/server/PowerManagerService$WakeLock;
    const/4 v11, 0x0

    .line 1268
    .restart local v11       #newlock:Z
    iget-object v13, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1269
    .restart local v13       #oldsource:Landroid/os/WorkSource;
    if-eqz v13, :cond_9

    .line 1270
    if-nez p6, :cond_8

    .line 1271
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1272
    const/4 v9, 0x1

    .line 1281
    .restart local v9       #diffsource:Z
    :goto_4
    if-eqz v9, :cond_3

    .line 1282
    new-instance v2, Landroid/os/WorkSource;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    goto/16 :goto_2

    .line 1274
    .end local v9           #diffsource:Z
    :cond_8
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v9

    .restart local v9       #diffsource:Z
    goto :goto_4

    .line 1276
    .end local v9           #diffsource:Z
    :cond_9
    if-eqz p6, :cond_a

    .line 1277
    const/4 v9, 0x1

    .restart local v9       #diffsource:Z
    goto :goto_4

    .line 1279
    .end local v9           #diffsource:Z
    :cond_a
    const/4 v9, 0x0

    .restart local v9       #diffsource:Z
    goto :goto_4

    .line 1299
    :cond_b
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    .line 1300
    iget v12, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1301
    .local v12, oldWakeLockState:I
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->reactivateScreenLocksLocked()I

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    .line 1305
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    if-nez v2, :cond_c

    .line 1307
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    .line 1326
    .end local v12           #oldWakeLockState:I
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    if-eqz v2, :cond_e

    const/4 v8, 0x1

    .line 1327
    .local v8, bGoOn:Z
    :goto_6
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_f

    const-string v2, "Screen__On : "

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "acquireWakeLock flags=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " tag="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto/16 :goto_3

    .line 1324
    .end local v8           #bGoOn:Z
    :cond_d
    iget v2, p0, Lcom/android/server/PowerManagerService;->mUserState:I

    iget v3, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v3}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    goto :goto_5

    .line 1326
    :cond_e
    const/4 v8, 0x0

    goto :goto_6

    .line 1327
    .restart local v8       #bGoOn:Z
    :cond_f
    const-string v2, ""

    goto :goto_7

    .line 1332
    .end local v8           #bGoOn:Z
    :cond_10
    and-int/lit8 v2, p1, 0x3f

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1333
    if-eqz v11, :cond_11

    .line 1334
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    .line 1336
    const/16 v2, 0xaa9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1339
    iget v2, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 1343
    :cond_11
    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    if-nez v2, :cond_12

    .line 1344
    const/4 v2, 0x1

    const-string v3, "PowerManagerService"

    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->nativeAcquireWakeLock(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1347
    :cond_12
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireWakeLockLocked : mForceDisableWakeLock : NOT acquired : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1230
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_3
        0xa -> :sswitch_2
        0x1a -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method bootCompleted()V
    .locals 7

    .prologue
    .line 4625
    const-string v0, "PowerManagerService"

    const-string v1, "bootCompleted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 4627
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mBootCompleted:Z

    .line 4628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 4629
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V

    .line 4630
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4632
    const-string v0, "ctl.stop"

    const-string v1, "powersnd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4634
    monitor-exit v6

    .line 4635
    return-void

    .line 4634
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearUserActivityTimeout(JJ)V
    .locals 9
    .parameter "now"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    .line 3314
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserActivity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms from now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    const-string v0, "clearUserActivityTimeout"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, v5

    move v7, v5

    move v8, v5

    .line 3317
    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 3318
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 4274
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4275
    new-instance v1, Lcom/android/server/PowerManagerService$16;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/PowerManagerService$16;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 4279
    .local v1, t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 4280
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4284
    :goto_0
    return-void

    .line 4281
    :catch_0
    move-exception v0

    .line 4282
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 28
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    .line 1605
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", uid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    :goto_0
    return-void

    .line 1611
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 1613
    .local v17, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1614
    :try_start_0
    const-string v22, "Power Manager State:"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1615
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsPowered="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsPowered:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mPowerState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mScreenOffTime="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " ms"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1619
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPartialCount="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1620
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mWakeLockState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mWakeLockState:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mUserState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPowerState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLocks.gather="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/PowerManagerService$LockList;->gatherState()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1624
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mNextTimeout="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " now="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mNextTimeout:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v17

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "s from now"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mDimScreen="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mDimScreen:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mStayOnConditions="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mPreparingForScreenOn="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mSkippedScreenOn="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mSkippedScreenOn:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mScreenOffReason="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffReason:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mUserState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mUserState:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mBroadcastQueue={"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastQueue:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "}"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mBroadcastWhy={"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x2c

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWhy:[I

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "}"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPokey="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mPokeAwakeonSet="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mKeyboardVisible="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mUserActivityAllowed="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mKeylightDelay="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mKeylightDelay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mDimDelay="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mDimDelay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mScreenOffDelay="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffDelay:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPreventScreenOn="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  mScreenBrightnessOverride="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  mButtonBrightnessOverride="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1644
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mScreenOffTimeoutSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mScreenOffTimeoutSetting:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mMaximumScreenOffTimeout="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mButtonOffTimeoutSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mButtonOffTimeoutSetting:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsSipVisible="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsSipVisible:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1648
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsNorthAmericaSalesCode="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v24, Lcom/android/server/PowerManagerService;->mIsNorthAmericaSalesCode:Z

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1649
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLastScreenOnTime="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1650
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mBroadcastWakeLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1651
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStayOnWhilePluggedInScreenDimLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mStayOnWhilePluggedInPartialLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1653
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPreventScreenOnPartialLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1654
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximityPartialLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1655
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximityWakeLockCount="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityWakeLockCount:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1656
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximitySensorEnabled="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximitySensorActive="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mProximityPendingValue="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mProximityPendingValue:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1659
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLastProximityEventTime="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1660
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorEnabled="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorAdjustSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1662
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorValue="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorPendingValue="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1664
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mHighestLightSensorValue="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mWaitingForFirstLightSensor="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1666
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorPendingDecrease="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorPendingIncrease="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1668
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorScreenBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightness:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorButtonBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorButtonBrightness:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " mLightSensorKeyboardBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorScreenBrightnessUpperLimit="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mLightSensorScreenBrightnessLowerLimit="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mUseSoftwareAutoBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mAutoBrightessEnabled="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-object/from16 v22, v0

    const-string v24, "mScreenBrightnessAnimator: "

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1676
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mMaxBrightness="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsTablet="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mIsDeviceLockTime="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mIsDeviceLockTime:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mDeviceLockTimeoutSetting="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mDeviceLockTimeoutSetting:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v5

    .line 1684
    .local v5, N:I
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1685
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mLocks.size="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1687
    .local v8, cTime:J
    const-wide/16 v11, 0x0

    .line 1688
    .local v11, eTime:J
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v5, :cond_3

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1690
    .local v21, wl:Lcom/android/server/PowerManagerService$WakeLock;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x3f

    invoke-static/range {v22 .. v22}, Lcom/android/server/PowerManagerService;->lockType(I)Ljava/lang/String;

    move-result-object v20

    .line 1691
    .local v20, type:Ljava/lang/String;
    const-string v6, ""

    .line 1692
    .local v6, acquireCausesWakeup:Ljava/lang/String;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    move/from16 v22, v0

    const/high16 v24, 0x1000

    and-int v22, v22, v24

    if-eqz v22, :cond_1

    .line 1693
    const-string v6, "ACQUIRE_CAUSES_WAKEUP "

    .line 1695
    :cond_1
    const-string v7, ""

    .line 1696
    .local v7, activated:Ljava/lang/String;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1697
    const-string v7, " activated"

    .line 1699
    :cond_2
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->acqTime:J

    move-wide/from16 v24, v0

    sub-long v11, v8, v24

    .line 1700
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " \'"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "\'"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " (minState="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->minState:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", uid="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ", pid="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ")"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "activeT="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1705
    .end local v6           #acquireCausesWakeup:Ljava/lang/String;
    .end local v7           #activated:Ljava/lang/String;
    .end local v20           #type:Ljava/lang/String;
    .end local v21           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1706
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mForceDisableWakeLock="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1708
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1709
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mPokeLocks.size="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1711
    .local v19, p:Lcom/android/server/PowerManagerService$PokeLock;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    poke lock \'"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "\':"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_4

    const-string v22, " POKE_LOCK_IGNORE_TOUCH_EVENTS"

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_5

    const-string v22, " POKE_LOCK_SHORT_TIMEOUT"

    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x4

    if-eqz v22, :cond_6

    const-string v22, " POKE_LOCK_MEDIUM_TIMEOUT"

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1743
    .end local v5           #N:I
    .end local v8           #cTime:J
    .end local v11           #eTime:J
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 1711
    .restart local v5       #N:I
    .restart local v8       #cTime:J
    .restart local v11       #eTime:J
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_4
    :try_start_1
    const-string v22, ""

    goto :goto_3

    :cond_5
    const-string v22, ""

    goto :goto_4

    :cond_6
    const-string v22, ""

    goto :goto_5

    .line 1720
    .end local v19           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/PowerManagerService$DVFSLockList;->size()I

    move-result v4

    .line 1723
    .local v4, M:I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mDVFSLocks.size="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v4, :cond_a

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/PowerManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PowerManagerService$DVFSLock;

    .line 1726
    .local v3, DVFSWl:Lcom/android/server/PowerManagerService$DVFSLock;
    iget v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->type:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/PowerManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v20

    .line 1727
    .restart local v20       #type:Ljava/lang/String;
    const-string v10, ""

    .line 1728
    .local v10, currentDVFSLock:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    iget-wide v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->acqTime:J

    move-wide/from16 v26, v0

    sub-long v13, v24, v26

    .line 1730
    .local v13, elapsedTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMinLock:Lcom/android/server/PowerManagerService$DVFSLock;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_9

    .line 1731
    const-string v10, " <--- mCurrentDVFSMinLock"

    .line 1737
    :cond_8
    :goto_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  type : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  freq : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->frequency:I

    move/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  elapsed time : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "  tag : "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v3, Lcom/android/server/PowerManagerService$DVFSLock;->tag:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1733
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/PowerManagerService$DVFSLock;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_8

    .line 1734
    const-string v10, " <--- mCurrentDVFSMaxLock"

    goto :goto_7

    .line 1741
    .end local v3           #DVFSWl:Lcom/android/server/PowerManagerService$DVFSLock;
    .end local v10           #currentDVFSLock:Ljava/lang/String;
    .end local v13           #elapsedTime:J
    .end local v20           #type:Ljava/lang/String;
    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  mPersistentDVFSLocksInfo=0x"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1743
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public enableUserActivity(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 4377
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUserActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4380
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mUserActivityAllowed:Z

    .line 4381
    if-nez p1, :cond_0

    .line 4383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 4385
    :cond_0
    monitor-exit v1

    .line 4386
    return-void

    .line 4385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 1151
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public forceDisableWakeLock(Z)V
    .locals 3
    .parameter "disabled"

    .prologue
    .line 5618
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceDisableWakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (mForceDisableWakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5620
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 5621
    if-eqz p1, :cond_1

    .line 5622
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    .line 5623
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-lez v0, :cond_0

    .line 5624
    const-string v0, "PowerManagerService"

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->nativeReleaseWakeLock(Ljava/lang/String;)V

    .line 5633
    :cond_0
    :goto_0
    monitor-exit v1

    .line 5634
    return-void

    .line 5628
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService;->mForceDisableWakeLock:Z

    .line 5629
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPartialCount:I

    if-lez v0, :cond_0

    .line 5630
    const/4 v0, 0x1

    const-string v2, "PowerManagerService"

    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->nativeAcquireWakeLock(ILjava/lang/String;)V

    goto :goto_0

    .line 5633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentBrightness(Z)F
    .locals 6
    .parameter "ratio"

    .prologue
    .line 3136
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    monitor-enter v3

    .line 3137
    const/high16 v1, -0x4080

    .line 3138
    .local v1, retValue:F
    const/high16 v0, -0x4080

    .line 3140
    .local v0, curBrightness:F
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3141
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v2, v2, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    int-to-float v0, v2

    .line 3147
    :goto_0
    if-eqz p1, :cond_1

    .line 3148
    const/high16 v2, 0x437f

    div-float v1, v0, v2

    .line 3154
    :goto_1
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentBrightness : ratio : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  retValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    monitor-exit v3

    return v1

    .line 3144
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget v2, v2, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    int-to-float v0, v2

    goto :goto_0

    .line 3151
    :cond_1
    float-to-int v2, v0

    int-to-float v1, v2

    goto :goto_1

    .line 3157
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getPolicyLocked()Landroid/view/WindowManagerPolicy;
    .locals 1

    .prologue
    .line 4567
    :goto_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    if-nez v0, :cond_1

    .line 4569
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4570
    :catch_0
    move-exception v0

    goto :goto_0

    .line 4574
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method getStayOnConditionsLocked()I
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mStayOnConditions:I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedFrequency()[I
    .locals 1

    .prologue
    .line 5198
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    return-object v0
.end method

.method public getSupportedWakeLockFlags()I
    .locals 2

    .prologue
    .line 4643
    const/16 v0, 0x1f

    .line 4647
    .local v0, result:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 4648
    or-int/lit8 v0, v0, 0x20

    .line 4651
    :cond_0
    return v0
.end method

.method public goToSleep(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 4187
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/PowerManagerService;->goToSleepWithReason(JI)V

    .line 4188
    return-void
.end method

.method public goToSleepWithReason(JI)V
    .locals 3
    .parameter "time"
    .parameter "reason"

    .prologue
    .line 4196
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToSleepWithReason : time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4197
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4198
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4199
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService;->goToSleepLocked(JI)V

    .line 4200
    monitor-exit v1

    .line 4201
    return-void

    .line 4200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V
    .locals 5
    .parameter "context"
    .parameter "lights"
    .parameter "activity"
    .parameter "battery"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 809
    iput-object p2, p0, Lcom/android/server/PowerManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 810
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    .line 811
    iput-object p3, p0, Lcom/android/server/PowerManagerService;->mActivityService:Landroid/app/IActivityManager;

    .line 812
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 813
    iput-object p4, p0, Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;

    .line 815
    invoke-virtual {p2, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    .line 816
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;

    .line 817
    invoke-virtual {p2, v2}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;

    .line 818
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 819
    const-string v1, "1"

    const-string v2, "ro.config.headless"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mHeadless:Z

    .line 824
    const-string v1, "3200"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 825
    .local v0, delayVal:I
    iget v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepDelay:I

    if-ge v1, v0, :cond_0

    .line 826
    iput v0, p0, Lcom/android/server/PowerManagerService;->mSmartSleepDelay:I

    .line 827
    iget v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepDelay:I

    iget v2, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepNotificationDelay:I

    .line 830
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 831
    new-instance v1, Lcom/android/server/PowerManagerService$2;

    const-string v2, "PowerManagerService.mSmartSleepThread"

    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerManagerService$2;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepThread:Landroid/os/HandlerThread;

    .line 841
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 843
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSmartSleepThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 844
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 846
    :try_start_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v1

    goto :goto_0

    .line 851
    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 855
    new-instance v1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const-string v2, "mScreenBrightnessUpdaterThread"

    const/4 v3, -0x4

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    .line 857
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->start()V

    .line 859
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    monitor-enter v2

    .line 860
    :goto_1
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_2

    .line 862
    :try_start_4
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 863
    :catch_1
    move-exception v1

    goto :goto_1

    .line 851
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 867
    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 869
    iput-boolean v4, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 870
    new-instance v1, Lcom/android/server/PowerManagerService$3;

    const-string v2, "PowerManagerService"

    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerManagerService$3;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 877
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 879
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 880
    :goto_2
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v1, :cond_3

    .line 882
    :try_start_8
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 883
    :catch_2
    move-exception v1

    goto :goto_2

    .line 867
    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1

    .line 887
    :cond_3
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 889
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 890
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateNativePowerStateLocked()V

    .line 893
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V

    .line 894
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitialized:Z

    .line 895
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 896
    return-void

    .line 887
    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v1

    .line 895
    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v1
.end method

.method initInThread()V
    .locals 14

    .prologue
    const v5, 0x1070032

    const/4 v13, 0x6

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 899
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    .line 901
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "sleep_broadcast"

    invoke-direct {v1, p0, v10, v3, v10}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 903
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Screen Dim"

    invoke-direct {v1, p0, v13, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInScreenDimLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 905
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "StayOnWhilePluggedIn Partial"

    invoke-direct {v1, p0, v10, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mStayOnWhilePluggedInPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 907
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "PreventScreenOn Partial"

    invoke-direct {v1, p0, v10, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 909
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "Proximity Partial"

    invoke-direct {v1, p0, v10, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 913
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    const-string v3, "AutoPowerOff Partial"

    invoke-direct {v1, p0, v10, v3, v11}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;-><init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    .line 916
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    .line 917
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOnIntent:Landroid/content/Intent;

    const/high16 v3, 0x5000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 919
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    .line 920
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mScreenOffIntent:Landroid/content/Intent;

    const/high16 v3, 0x5000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSmartSleepIntent:Landroid/content/Intent;

    .line 925
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    .line 927
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 929
    .local v7, resources:Landroid/content/res/Resources;
    const v1, 0x1110014

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 932
    const v1, 0x1110013

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    .line 935
    const v1, 0x10e0023

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    .line 939
    const v1, 0x1110011

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    .line 941
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v1, :cond_2

    .line 942
    const v1, 0x107002b

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessLevels:[I

    .line 944
    const v1, 0x107002d

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLcdBacklightValues:[I

    .line 946
    const v1, 0x107002e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mButtonBacklightValues:[I

    .line 948
    const v1, 0x107002f

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mKeyboardBacklightValues:[I

    .line 950
    const v1, 0x10e0026

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I

    .line 952
    const v1, 0x107002c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightnessHysteresisLevels:[I

    .line 956
    const v1, 0x1110023

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    .line 960
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v1, :cond_1

    .line 961
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dynamic AutoBrightness is Enabled. mDynamicAutoBrightnessEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const v1, 0x10e0024

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLowLimitAtHighestAutoBrightnessLevel:I

    .line 965
    const v1, 0x10e0025

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PowerManagerService;->mValueOfVirtualZeroCandela:I

    .line 967
    const v1, 0x1070031

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLevels:[I

    .line 969
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValuesOrg:[I

    .line 971
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisValues:[I

    .line 973
    const v1, 0x1070033

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBrightnessLevels:[I

    .line 975
    const v1, 0x1070034

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBrightnessValuesOrg:[I

    .line 977
    const v1, 0x1070034

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mBrightnessValues:[I

    .line 979
    const v1, 0x1070035

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLevels:[I

    .line 981
    const v1, 0x1070036

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValuesOrg:[I

    .line 983
    const v1, 0x1070036

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisValues:[I

    .line 985
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 986
    const v1, 0x1070030

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mMinimumExpressiveBrightnessValues:[I

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setDynamicAutoBrightnessSlopeTables()V

    .line 992
    :cond_1
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->printAutoBrightnessTables()V

    .line 994
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v1, :cond_4

    move v1, v10

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->sendBrightnessModeBySysfs(I)V

    .line 997
    :cond_2
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 998
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "stay_on_while_plugged_in"

    aput-object v5, v4, v11

    const-string v5, "screen_off_timeout"

    aput-object v5, v4, v10

    const/4 v5, 0x2

    const-string v12, "dim_screen"

    aput-object v12, v4, v5

    const/4 v5, 0x3

    const-string v12, "screen_brightness"

    aput-object v12, v4, v5

    const/4 v5, 0x4

    const-string v12, "screen_brightness_mode"

    aput-object v12, v4, v5

    const/4 v5, 0x5

    const-string v12, "window_animation_scale"

    aput-object v12, v4, v5

    const-string v5, "transition_animation_scale"

    aput-object v5, v4, v13

    const/4 v5, 0x7

    const-string v12, "button_key_light"

    aput-object v12, v4, v5

    const/16 v5, 0x8

    const-string v12, "is_secured_lock"

    aput-object v12, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1012
    .local v8, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v8, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 1013
    new-instance v9, Lcom/android/server/PowerManagerService$SettingsObserver;

    invoke-direct {v9, p0, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    .line 1014
    .local v9, settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v9}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 1017
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v9, v1, v2}, Lcom/android/server/PowerManagerService$SettingsObserver;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1020
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1021
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BatteryReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1023
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1024
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$BootCompletedReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1026
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1027
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1028
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$DockReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1031
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1032
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1033
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1036
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "ResponseAxT9Info"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1038
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #filter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1039
    .restart local v6       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PROXIMITY_CP"

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1042
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->initSupportedFrequency()V

    .line 1045
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    if-eqz v1, :cond_3

    .line 1046
    new-instance v1, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mSupportedFrequency:[I

    aget v2, v2, v11

    const-string v3, "AMOLED_Animation"

    invoke-direct {v1, p0, v10, v2, v3}, Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;-><init>(Lcom/android/server/PowerManagerService;IILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/PowerManagerService;->mAMOLEDAnimationDVFSLock:Lcom/android/server/PowerManagerService$UnsynchronizedDVFSLock;

    .line 1051
    :cond_3
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/server/PowerManagerService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/PowerManagerService$4;-><init>(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v10, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1058
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->updateSettingsValues()V

    .line 1060
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v2

    .line 1061
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mInitComplete:Z

    .line 1062
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1063
    monitor-exit v2

    .line 1064
    return-void

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #filter:Landroid/content/IntentFilter;
    .end local v8           #settingsCursor:Landroid/database/Cursor;
    .end local v9           #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :cond_4
    move v1, v11

    .line 994
    goto/16 :goto_0

    .line 1063
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #filter:Landroid/content/IntentFilter;
    .restart local v8       #settingsCursor:Landroid/database/Cursor;
    .restart local v9       #settingsObserver:Lcom/android/server/PowerManagerService$SettingsObserver;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isScreenBright()Z
    .locals 3

    .prologue
    .line 3244
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3245
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScreenOn()Z
    .locals 2

    .prologue
    .line 3238
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 3239
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method logPointerDownEvent()V
    .locals 4

    .prologue
    .line 2241
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2243
    iget v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/PowerManagerService;->mTouchCycles:I

    .line 2246
    :cond_0
    return-void
.end method

.method logPointerUpEvent()V
    .locals 6

    .prologue
    .line 2233
    iget-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mTotalTouchDownTime:J

    .line 2234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/PowerManagerService;->mLastTouchDown:J

    .line 2236
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 4639
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 4640
    return-void

    .line 4639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 1178
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 1179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1181
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 1182
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1193
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 1185
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v2

    .line 1190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V
    .locals 7
    .parameter "wl"
    .parameter "ws"

    .prologue
    .line 1196
    iget v2, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    if-ltz v2, :cond_0

    .line 1197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1199
    .local v0, origId:J
    if-eqz p2, :cond_1

    .line 1200
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, p2, v3, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1211
    .end local v0           #origId:J
    :cond_0
    :goto_1
    return-void

    .line 1203
    .restart local v0       #origId:J
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    iget v4, p1, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    iget-object v5, p1, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v2

    .line 1208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public preventAutoPowerOff(IZ)V
    .locals 5
    .parameter "who"
    .parameter "bPrevent"

    .prologue
    .line 3349
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventAutoPowerOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  bPrevent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3352
    .local v1, rawCurrentCount:Ljava/lang/Integer;
    const/4 v0, -0x1

    .line 3354
    .local v0, currentCount:I
    if-nez v1, :cond_1

    .line 3355
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventAutoPowerOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  bPrevent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3357
    const/4 v0, 0x0

    .line 3363
    :goto_0
    if-eqz p2, :cond_2

    .line 3364
    add-int/lit8 v0, v0, 0x1

    .line 3374
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mMapPreventAutoPowerOff:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    const-string v2, "PowerManagerService"

    const-string v3, "preventAutoPowerOff : resetAutoPowerOffTimer()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->resetAutoPowerOffTimer()V

    .line 3378
    return-void

    .line 3360
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 3367
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 3368
    if-gez v0, :cond_0

    .line 3369
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentCount < 0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public preventScreenOn(Z)V
    .locals 6
    .parameter "prevent"

    .prologue
    .line 2278
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2281
    :try_start_0
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    if-eqz p1, :cond_0

    .line 2286
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 2291
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2292
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2297
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 2324
    :goto_0
    monitor-exit v2

    .line 2325
    return-void

    .line 2300
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOn:Z

    .line 2304
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mForceReenableScreenTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2309
    iget-boolean v1, p0, Lcom/android/server/PowerManagerService;->mProximitySensorActive:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2314
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/PowerManagerService;->setScreenStateLocked(Z)I

    move-result v0

    .line 2315
    .local v0, err:I
    if-eqz v0, :cond_1

    .line 2316
    const-string v1, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preventScreenOn: error from setScreenStateLocked(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    .end local v0           #err:I
    :cond_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mPreventScreenOnPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    goto :goto_0

    .line 2324
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 4209
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4211
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4212
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4215
    :cond_1
    move-object v0, p1

    .line 4216
    .local v0, finalReason:Ljava/lang/String;
    new-instance v1, Lcom/android/server/PowerManagerService$14;

    invoke-direct {v1, p0, v0}, Lcom/android/server/PowerManagerService$14;-><init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    .line 4225
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4228
    monitor-enter v1

    .line 4231
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4232
    :catch_0
    move-exception v2

    goto :goto_0

    .line 4235
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;)V
    .locals 6
    .parameter "lock"

    .prologue
    .line 5426
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5428
    .local v2, uid:I
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5432
    .local v0, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5433
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    .line 5434
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5436
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5438
    return-void

    .line 5434
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5436
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public releasePersistentDVFSLock(I)V
    .locals 8
    .parameter "callingId"

    .prologue
    .line 5510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5512
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DEVICE_POWER"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5514
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5516
    .local v0, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mDVFSLocks:Lcom/android/server/PowerManagerService$DVFSLockList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5517
    :try_start_1
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v4, p1

    if-eqz v4, :cond_1

    .line 5518
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 5519
    .local v2, lock:Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 5520
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  callingId : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5521
    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;)V

    .line 5522
    iget v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/PowerManagerService;->mPersistentDVFSLocksInfo:I

    .line 5532
    .end local v2           #lock:Landroid/os/IBinder;
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5534
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5536
    return-void

    .line 5525
    .restart local v2       #lock:Landroid/os/IBinder;
    :cond_0
    :try_start_2
    const-string v4, "PowerManagerService"

    const-string v6, "releasePersistentDVFSLock : there is no persistentDVFSLock to release"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WakeLock under-locked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5532
    .end local v2           #lock:Landroid/os/IBinder;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5534
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5530
    :cond_1
    :try_start_4
    const-string v4, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasePersistentDVFSLock : this callingId already released PersistentDVFSLock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 4
    .parameter "lock"
    .parameter "flags"

    .prologue
    .line 1408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1409
    .local v0, uid:I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1410
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :cond_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 1414
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1415
    monitor-exit v2

    .line 1416
    return-void

    .line 1415
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetAutoPowerOffTimer()V
    .locals 3

    .prologue
    .line 3321
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetAutoPowerOffTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    iget v0, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffTimeoutSetting:I

    if-lez v0, :cond_0

    .line 3323
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3324
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mUpdateAutoPowerOffTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3326
    :cond_0
    return-void
.end method

.method public setAttentionLight(ZI)V
    .locals 4
    .parameter "on"
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 4731
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4732
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, p2, v3, v0, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 4733
    return-void

    :cond_0
    move v0, v1

    .line 4732
    goto :goto_0
.end method

.method public setAutoBrightnessAdjustment(F)V
    .locals 6
    .parameter "adj"

    .prologue
    .line 4710
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4711
    iget-object v4, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v4

    .line 4712
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorAdjustSetting:F

    .line 4713
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z

    if-eqz v3, :cond_1

    .line 4715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 4718
    .local v0, identity:J
    :try_start_1
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 4719
    iget v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v2, v3

    .line 4720
    .local v2, value:I
    const/high16 v3, -0x4080

    iput v3, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4721
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4724
    .end local v2           #value:I
    :cond_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4727
    .end local v0           #identity:J
    :cond_1
    monitor-exit v4

    .line 4728
    return-void

    .line 4724
    .restart local v0       #identity:J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4727
    .end local v0           #identity:J
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public setAutoBrightnessLimit(II)V
    .locals 4
    .parameter "lowerLimit"
    .parameter "upperLimit"

    .prologue
    .line 2373
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoBrightnessLimit : lowerLimit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   upperLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 2377
    :try_start_0
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    if-eq v1, p2, :cond_1

    .line 2378
    :cond_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessLowerLimit:I

    .line 2379
    iput p2, p0, Lcom/android/server/PowerManagerService;->mLightSensorScreenBrightnessUpperLimit:I

    .line 2381
    iget v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v0, v1

    .line 2382
    .local v0, value:I
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 2383
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 2385
    .end local v0           #value:I
    :cond_1
    monitor-exit v2

    .line 2386
    return-void

    .line 2385
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBacklightBrightness(I)V
    .locals 10
    .parameter "brightness"

    .prologue
    .line 4655
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DEVICE_POWER"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4657
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 4658
    .local v3, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 4660
    .local v5, uid:I
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBacklightBrightness "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  uid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4663
    const-string v6, "PowerManagerService"

    const-string v7, "but, isScreenTurningOffLocked : TRUE , so should be ignored"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    :goto_0
    return-void

    .line 4667
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4668
    const-string v6, "PowerManagerService"

    const-string v7, "but, isScreenOn : false , so should be ignored"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4673
    :cond_1
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 4674
    :try_start_0
    iget v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessDim:I

    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4677
    iget-boolean v6, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    if-eqz v6, :cond_2

    .line 4678
    sget v6, Lcom/android/server/PowerManagerService;->POWERSAVEMODE_BRIGHTNESS_OFFSET:I

    sub-int v4, p1, v6

    .line 4679
    .local v4, powerSaveModeBrightness:I
    if-lez p1, :cond_2

    .line 4680
    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4681
    const-string v6, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setBacklightBrightness : mSystemPowerSaveModeEnabled:: brightness:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4685
    .end local v4           #powerSaveModeBrightness:I
    :cond_2
    iget v6, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    if-le p1, v6, :cond_3

    .line 4686
    iget p1, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 4687
    const-string v6, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setBacklightBrightness : brightness is changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " because of temperature"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    :cond_3
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 4697
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 4699
    .local v1, identity:J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v6, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4703
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4705
    :goto_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, p1, v8, v9}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    .line 4706
    monitor-exit v7

    goto/16 :goto_0

    .end local v1           #identity:J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 4700
    .restart local v1       #identity:J
    :catch_0
    move-exception v0

    .line 4701
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "PowerManagerService"

    const-string v8, "RemoteException calling noteScreenBrightness on BatteryStatsService"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4703
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setButtonBrightnessOverride(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2347
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 2348
    iput p1, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    .line 2349
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setButtonBrightnessOverride : mButtonBrightnessOverride : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2354
    :cond_0
    monitor-exit v1

    .line 2355
    return-void

    .line 2354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setKeyboardVisibility(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    .line 4345
    iget-object v7, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v7

    .line 4349
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    if-eq v0, p1, :cond_1

    .line 4350
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z

    .line 4354
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 4355
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v0, :cond_0

    .line 4357
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 4358
    iget v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v6, v0

    .line 4359
    .local v6, value:I
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 4360
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 4363
    .end local v6           #value:I
    :cond_0
    const-string v0, "mKeyboardVisible"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 4364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 4367
    :cond_1
    monitor-exit v7

    .line 4368
    return-void

    .line 4367
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMasterBrightnessLimit(II)V
    .locals 4
    .parameter "reserved"
    .parameter "upperLimit"

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMasterBrightnessLimit : reserved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   upperLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2362
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-gez p2, :cond_0

    .line 2363
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "setMasterBrightnessLimit : invalid upperLimit"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2366
    :cond_0
    :try_start_1
    iput p2, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    .line 2367
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMasterBrightnessLimit : mMaxBrightness : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaxBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2369
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2370
    return-void
.end method

.method public setMaximumScreenOffTimeount(I)V
    .locals 4
    .parameter "timeMs"

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 646
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    .line 647
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaximumScreenOffTimeount : mMaximumScreenOffTimeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mMaximumScreenOffTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 650
    monitor-exit v1

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 18
    .parameter "pokey"
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 1512
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.DEVICE_POWER"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v14, "PowerManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPokeLock pokey="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " tag="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    if-nez p2, :cond_0

    .line 1515
    const-string v14, "PowerManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPokeLock got null token for tag=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :goto_0
    return-void

    .line 1519
    :cond_0
    and-int/lit8 v14, p1, 0x16

    const/16 v15, 0x16

    if-ne v14, v15, :cond_1

    .line 1520
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "setPokeLock can\'t have both POKE_LOCK_SHORT_TIMEOUT and POKE_LOCK_MEDIUM_TIMEOUT"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1524
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v15

    .line 1525
    if-eqz p1, :cond_5

    .line 1526
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1527
    .local v12, p:Lcom/android/server/PowerManagerService$PokeLock;
    const/4 v10, 0x0

    .line 1528
    .local v10, oldPokey:I
    if-eqz v12, :cond_4

    .line 1529
    iget v10, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1530
    move/from16 v0, p1

    iput v0, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    .line 1535
    :goto_1
    and-int/lit8 v11, v10, 0x16

    .line 1536
    .local v11, oldTimeout:I
    and-int/lit8 v8, p1, 0x16

    .line 1537
    .local v8, newTimeout:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_2

    if-eq v11, v8, :cond_2

    .line 1538
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    .line 1547
    .end local v8           #newTimeout:I
    .end local v10           #oldPokey:I
    .end local v11           #oldTimeout:I
    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1548
    .restart local v10       #oldPokey:I
    const/4 v5, 0x0

    .line 1549
    .local v5, cumulative:I
    const/4 v4, 0x0

    .line 1550
    .local v4, awakeOnSet:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1551
    .restart local v12       #p:Lcom/android/server/PowerManagerService$PokeLock;
    iget v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->pokey:I

    or-int/2addr v5, v14

    .line 1552
    iget-boolean v14, v12, Lcom/android/server/PowerManagerService$PokeLock;->awakeOnSet:Z

    if-eqz v14, :cond_3

    .line 1553
    const/4 v4, 0x1

    goto :goto_3

    .line 1532
    .end local v4           #awakeOnSet:Z
    .end local v5           #cumulative:I
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v12, Lcom/android/server/PowerManagerService$PokeLock;

    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/android/server/PowerManagerService$PokeLock;-><init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1533
    .restart local v12       #p:Lcom/android/server/PowerManagerService$PokeLock;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1568
    .end local v10           #oldPokey:I
    .end local v12           #p:Lcom/android/server/PowerManagerService$PokeLock;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1541
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mPokeLocks:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/PowerManagerService$PokeLock;

    .line 1542
    .local v13, rLock:Lcom/android/server/PowerManagerService$PokeLock;
    if-eqz v13, :cond_2

    .line 1543
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 1556
    .end local v13           #rLock:Lcom/android/server/PowerManagerService$PokeLock;
    .restart local v4       #awakeOnSet:Z
    .restart local v5       #cumulative:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v10       #oldPokey:I
    :cond_6
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/PowerManagerService;->mPokey:I

    .line 1557
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/PowerManagerService;->mPokeAwakeOnSet:Z

    .line 1559
    and-int/lit8 v9, v10, 0x16

    .line 1560
    .local v9, oldCumulativeTimeout:I
    and-int/lit8 v7, p1, 0x16

    .line 1562
    .local v7, newCumulativeTimeout:I
    if-eq v9, v7, :cond_7

    .line 1563
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V

    .line 1566
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/PowerManagerService;->mTimeoutTask:Lcom/android/server/PowerManagerService$TimeoutTask;

    iget v14, v14, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/PowerManagerService;->setTimeoutLocked(JI)V

    .line 1568
    :cond_7
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setPolicy(Landroid/view/WindowManagerPolicy;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 4560
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 4561
    :try_start_0
    iput-object p1, p0, Lcom/android/server/PowerManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 4562
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 4563
    monitor-exit v1

    .line 4564
    return-void

    .line 4563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRatioOfAutoBrightness(I)V
    .locals 6
    .parameter "ratioValue"

    .prologue
    .line 3678
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRatioOfAutoBrightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3683
    const-string v2, "PowerManagerService"

    const-string v3, "but, isScreenTurningOffLocked : TRUE , so should be ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    :goto_0
    return-void

    .line 3687
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3688
    const-string v2, "PowerManagerService"

    const-string v3, "but, isScreenOn : false , so should be ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3693
    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3

    .line 3694
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 3695
    .local v0, prevDynamicAutoBrightnessRatioValueSetting:I
    iput p1, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    .line 3696
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRatioOfAutoBrightness : mDynamicAutoBrightnessRatioValueSetting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    iget v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    if-eq v0, v2, :cond_2

    .line 3699
    iget v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatioValueSetting:I

    invoke-direct {p0, v2}, Lcom/android/server/PowerManagerService;->convertSettingsRatioToWeightedRatio(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    .line 3700
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRatioOfAutoBrightness : mDynamicAutoBrightnessRatio : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/PowerManagerService;->mDynamicAutoBrightnessRatio:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLowHysteresisLux:I

    .line 3704
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/PowerManagerService;->mHighHysteresisLux:I

    .line 3705
    iget v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    float-to-int v1, v2

    .line 3706
    .local v1, value:I
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/server/PowerManagerService;->mLightSensorValue:F

    .line 3707
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V

    .line 3709
    .end local v1           #value:I
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0           #prevDynamicAutoBrightnessRatioValueSetting:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setScreenBrightnessOverride(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    iget-object v1, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v1

    .line 2332
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    if-eq v0, p1, :cond_0

    .line 2333
    iput p1, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    .line 2334
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightnessOverride : mScreenBrightnessOverride : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/PowerManagerService;->mScreenBrightnessOverride:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2336
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 2339
    :cond_0
    monitor-exit v1

    .line 2340
    return-void

    .line 2339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStayOnSetting(I)V
    .locals 3
    .parameter "val"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 640
    return-void
.end method

.method public setSystemPowerSaveMode(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 5142
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemPowerSaveMode is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5143
    iput-boolean p1, p0, Lcom/android/server/PowerManagerService;->mSystemPowerSaveModeEnabled:Z

    .line 5144
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V

    .line 5145
    return-void
.end method

.method systemReady()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4578
    new-instance v3, Landroid/hardware/SystemSensorManager;

    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 4579
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;

    .line 4581
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_0

    .line 4582
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mLightSensor:Landroid/hardware/Sensor;

    .line 4586
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mTiltSensor:Landroid/hardware/Sensor;

    .line 4593
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_1

    .line 4595
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    .line 4602
    :goto_0
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 4603
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.PowerManagerService.action.AUTO_POWER_OFF"

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4604
    .local v0, autoPowerOffIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerManagerService;->mAutoPowerOffPendingIntent:Landroid/app/PendingIntent;

    .line 4606
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 4607
    :try_start_0
    const-string v3, "PowerManagerService"

    const-string v7, "system ready!"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/PowerManagerService;->mDoneBooting:Z

    .line 4610
    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->enableLightSensorLocked(Z)V

    .line 4612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 4614
    .local v1, identity:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {p0}, Lcom/android/server/PowerManagerService;->getPreferredBrightness()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 4615
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenOn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4619
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4621
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4622
    return-void

    .line 4598
    .end local v0           #autoPowerOffIntent:Landroid/content/Intent;
    .end local v1           #identity:J
    :cond_1
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/android/server/PowerManagerService;->setPowerState(I)V

    goto :goto_0

    .restart local v0       #autoPowerOffIntent:Landroid/content/Intent;
    :cond_2
    move v3, v5

    .line 4610
    goto :goto_1

    .line 4616
    .restart local v1       #identity:J
    :catch_0
    move-exception v3

    .line 4619
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 4621
    .end local v1           #identity:J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 4619
    .restart local v1       #identity:J
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public timeSinceScreenOn()J
    .locals 5

    .prologue
    .line 4336
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v2

    .line 4337
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService;->mPowerState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4338
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 4340
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/PowerManagerService;->mScreenOffTime:J

    sub-long/2addr v0, v3

    monitor-exit v2

    goto :goto_0

    .line 4341
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateBlockedUids(IZ)V
    .locals 6
    .parameter "uid"
    .parameter "isBlocked"

    .prologue
    .line 1387
    iget-object v3, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v3

    .line 1389
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$LockList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1390
    iget-object v2, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v2, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1391
    .local v1, wl:Lcom/android/server/PowerManagerService$WakeLock;
    if-eqz v1, :cond_1

    .line 1392
    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    if-eq v2, p1, :cond_0

    iget v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_1

    .line 1396
    :cond_0
    if-eqz p2, :cond_1

    .line 1397
    iget-object v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    iget v4, v1, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V

    .line 1398
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/PowerManagerService$WakeLock;->isReleasedInternal:Z

    .line 1389
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1404
    .end local v1           #wl:Lcom/android/server/PowerManagerService$WakeLock;
    :cond_2
    monitor-exit v3

    .line 1405
    return-void

    .line 1404
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 8
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1363
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1364
    .local v2, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1365
    const/4 p2, 0x0

    .line 1367
    :cond_0
    if-eqz p2, :cond_1

    .line 1368
    invoke-virtual {p0, v3, v2}, Lcom/android/server/PowerManagerService;->enforceWakeSourcePermission(II)V

    .line 1370
    :cond_1
    iget-object v6, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    monitor-enter v6

    .line 1371
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, p1}, Lcom/android/server/PowerManagerService$LockList;->getIndex(Landroid/os/IBinder;)I

    move-result v0

    .line 1372
    .local v0, index:I
    if-gez v0, :cond_2

    .line 1373
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock not active"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1380
    .end local v0           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1375
    .restart local v0       #index:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;

    invoke-virtual {v5, v0}, Lcom/android/server/PowerManagerService$LockList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PowerManagerService$WakeLock;

    .line 1376
    .local v4, wl:Lcom/android/server/PowerManagerService$WakeLock;
    iget-object v1, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1377
    .local v1, oldsource:Landroid/os/WorkSource;
    if-eqz p2, :cond_3

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    iput-object v5, v4, Lcom/android/server/PowerManagerService$WakeLock;->ws:Landroid/os/WorkSource;

    .line 1378
    invoke-virtual {p0, v4, v1}, Lcom/android/server/PowerManagerService;->noteStopWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1379
    invoke-virtual {p0, v4, p2}, Lcom/android/server/PowerManagerService;->noteStartWakeLocked(Lcom/android/server/PowerManagerService$WakeLock;Landroid/os/WorkSource;)V

    .line 1380
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1381
    return-void

    .line 1377
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"

    .prologue
    const/4 v6, 0x0

    .line 3289
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3291
    invoke-direct {p0, p1, p2}, Lcom/android/server/PowerManagerService;->shouldLog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3292
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not have DEVICE_POWER permission.  pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    :cond_0
    :goto_0
    return-void

    .line 3298
    :cond_1
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    goto :goto_0
.end method

.method public userActivity(JZI)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"

    .prologue
    const/4 v7, 0x0

    .line 3302
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 3303
    return-void
.end method

.method public userActivity(JZIZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "eventType"
    .parameter "force"

    .prologue
    .line 3306
    const-wide/16 v3, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 3307
    return-void
.end method

.method public userActivityWithForce(JZZ)V
    .locals 9
    .parameter "time"
    .parameter "noChangeLights"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    .line 3283
    iget-object v0, p0, Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    const-string v0, "userActivityWithForce"

    iput-object v0, p0, Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;

    .line 3285
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v7, p4

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PowerManagerService;->userActivity(JJZIZZ)V

    .line 3286
    return-void
.end method
