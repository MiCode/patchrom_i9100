.class public abstract Lcom/sec/android/app/camera/AbstractCameraActivity;
.super Landroid/app/Activity;
.source "AbstractCameraActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;
.implements Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;
    }
.end annotation


# static fields
.field protected static final AF_HIDE_RECT_TIMER:I = 0x3

.field private static final AF_HIDE_RECT_TIMER_DURATION:I = 0x1f4

.field public static final BACK_FROM_ACCEPT_DIALOG:I = 0x7d6

.field protected static final CAMERA_TEMPERATURE_SYS_PATH:Ljava/lang/String; = "DEVPATH=/devices/platform/sec-subthermistor"

.field protected static final CAMERA_TEMPERATURE_VALUE_PATH:Ljava/lang/String; = "/sys/devices/platform/sec-subthermistor/temperature"

.field protected static final CAM_AVAILABLE_LOW_TEMP:I = -0x64

.field protected static final CAM_FLASH_AVAILABLE_TEMP:I = -0x32

.field protected static final CHECK_CALL_DLG:I = 0x2

.field protected static final CHECK_CAMERA_USING:I = 0xb

.field protected static final DIALOG_ID_WIFI_DIRECT_NOTIFICATION:I = 0x4

.field protected static final DIALOG_ID_WIFI_NOTIFICATION:I = 0x3

.field protected static final DLG_HIDE:Z = false

.field protected static final DLG_SHOW:Z = true

.field protected static final ENABLE_AUTOSHARESHOT_DLG:I = 0xa

.field protected static final ENABLE_GPS_DLG:I = 0x9

.field protected static final FLIP_OPEN_DLG:I = 0x8

.field protected static final FOLDER_CLOSE:I = 0x2

.field protected static final FOLDER_OPEN:I = 0x1

.field protected static final INACTIVITY_TIMEOUT:I = 0x78

.field protected static final INACTIVITY_TIMER_EXPIRED:I = 0x1

.field public static final KEY_BLINK_DETECTION:Ljava/lang/String; = "blinkdetection"

.field public static final KEY_FROM_APP:Ljava/lang/String; = "from_app"

.field public static final KEY_QUICK_VIEW:Ljava/lang/String; = "quickview"

.field public static final KEY_REVIEW_ON:Ljava/lang/String; = "reviewon"

.field protected static LOW_BATTERY_THRESHOLD_VALUE:I = 0x0

.field protected static LOW_TEMP_FLASH_THRESHOLD_VALUE:I = 0x0

.field protected static final MDNIE_CAMERA_MODE:I = 0x4

.field protected static final MDNIE_UI_MODE:I = 0x0

.field protected static final MESSAGE_TYPE_MMS:I = 0x3

.field protected static final MESSAGE_TYPE_PUSH_SMS:I = 0x2

.field protected static final MESSAGE_TYPE_SMS:I = 0x1

.field protected static final MILLIS_IN_SEC:I = 0x3e8

.field protected static final MULTIWINDOW_TITLE_HEIGHT:I = 0x27

.field public static final NAME_WITH_DATA:I = 0x7d5

.field protected static final NUM_OF_DLG:I = 0xc

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field protected static final OVERHEAT_TIMEOUT:I = 0x5

.field protected static final OVERHEAT_TIMER_EXPIRED:I = 0x2

.field protected static final OVER_CURRENT_THRESHOLD:I = 0x0

.field public static final PHOTO_PICKED_WITH_DATA:I = 0x7d4

.field public static final REQUEST_ATTACH_IMAGE:I = 0x7d1

.field public static final REQUEST_ATTACH_VIDEO:I = 0x7d2

.field public static final REQUEST_BESTGROUPPOSE_IMAGE:I = 0x7d7

.field public static final REQUEST_BLINKDETECT_IMAGE:I = 0x7d3

.field public static final SELECT_PIC_DLG:I = 0x7

.field protected static final STORAGE_CHANGE_DLG:I = 0x1

.field protected static final STORAGE_STATUS_DLG:I = 0x0

.field protected static final STORAGE_STATUS_LOW:I = 0x1

.field protected static final STORAGE_STATUS_NONE:I = 0x2

.field protected static final STORAGE_STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbstractCameraActivity"

.field private static final TAG_BASE:Ljava/lang/String; = "Settings.Multimedia"

.field private static final TAG_CAMERA:Ljava/lang/String; = "Settings.Multimedia.Camera"

.field private static final TAG_CAMERA_SHUTTER:Ljava/lang/String; = "ShutterSound"

.field public static final USERPROFILE_DLG:I = 0x6

.field protected static mCameraActivitySwitching:Z

.field public static mIsCamcorderSelfIconLoaded:Z

.field public static mIsCameraSelfIconLoaded:Z

.field private static mIsEULAenabled:Z


# instance fields
.field private final DEFAULT_CSC_FILE:Ljava/lang/String;

.field private bAFTimerStarted:Z

.field protected bFlagOverheat:Z

.field protected bFromSecureSetting:Z

.field protected bIsCharging:Z

.field protected bTurnOnScrAB:Z

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mAutoRotation:Z

.field protected mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mBaseLayout:Landroid/view/ViewGroup;

.field protected mBatteryLevel:I

.field protected mBufferOverFlowPopup:Landroid/app/AlertDialog;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mChangeStoragetDialog:Landroid/app/AlertDialog;

.field protected mCheckCalling:Z

.field protected mCheckMemory:Lcom/sec/android/app/camera/CheckMemory;

.field protected mCheckVoIPCalling:Z

.field protected mCheckVtCalling:Z

.field protected mChkKeyFromApp:Ljava/lang/String;

.field protected mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

.field protected mDefaultLayoutPopup:Landroid/app/AlertDialog;

.field protected mDisplayBatteryPercentage:I

.field private mDlgStatus:[Z

.field protected mEULAPopup:Landroid/app/AlertDialog;

.field private mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

.field protected mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mEnableDuringCall:Z

.field protected mErrorPopup:Landroid/app/AlertDialog;

.field protected mGLContext:Lcom/sec/android/glview/TwGLContext;

.field protected mGLInitialized:Z

.field protected mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

.field protected mInactivityPopupHandler:Landroid/os/Handler;

.field private mIsDisplayed:Z

.field public mIsFromSNS:Z

.field protected mIsPinupMode:Z

.field public mLastElementView:Lcom/sec/android/app/camera/MenuBase;

.field protected mLowBatteryPopup:Landroid/app/AlertDialog;

.field protected mLowBatteryWarningLevel:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

.field protected mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field protected mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mOnDeviceHelpScreen:Landroid/app/Dialog;

.field protected mOnResumePending:Z

.field protected mOpenFailedPopup:Landroid/app/AlertDialog;

.field protected mOverheatPopup:Landroid/app/AlertDialog;

.field protected mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

.field protected mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mRecordingFailedPopup:Landroid/app/AlertDialog;

.field protected mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field protected mResetPopup:Landroid/app/AlertDialog;

.field private mSbeamHelpTextDialog:Landroid/app/AlertDialog;

.field protected mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

.field public mShowWifiDialog:Z

.field protected mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

.field protected mSpinnerDialog:Landroid/app/Dialog;

.field protected mStorageStatus:I

.field protected mUsbMassStorageEnabled:Z

.field protected mViewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field msgToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 199
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    .line 200
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    .line 227
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    .line 248
    sput-boolean v2, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 249
    sput-boolean v2, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    .line 299
    sput-boolean v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraActivitySwitching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 557
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    .line 130
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 146
    const/16 v0, 0xc

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    .line 159
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 160
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 162
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 164
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 166
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    .line 176
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 178
    new-instance v0, Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 179
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 184
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    .line 187
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 188
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 189
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 190
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 191
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 193
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 194
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 195
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 196
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 197
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 212
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 221
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 222
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckMemory:Lcom/sec/android/app/camera/CheckMemory;

    .line 224
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 225
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 226
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFromSecureSetting:Z

    .line 229
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    .line 232
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsPinupMode:Z

    .line 235
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 237
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 240
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 243
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 245
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 247
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 251
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    .line 253
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$1;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 267
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$2;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    .line 293
    new-instance v0, Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 296
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 298
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 563
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$3;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 573
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$4;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 2115
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 2628
    invoke-static {}, Lcom/sec/android/app/camera/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->DEFAULT_CSC_FILE:Ljava/lang/String;

    .line 2630
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    .line 558
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public CannotStartCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1448
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eqz v0, :cond_1

    .line 1449
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1453
    :goto_0
    return-void

    .line 1451
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected IsGpsEnableInSettings()V
    .locals 3

    .prologue
    .line 2550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090016

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$52;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$52;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900df

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$51;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$51;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2561
    return-void
.end method

.method public PauseGLSurface()V
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 2240
    :cond_0
    return-void
.end method

.method protected cameraDuringCall()Z
    .locals 1

    .prologue
    .line 2665
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    return v0
.end method

.method public abstract cancelShutterTimer()V
.end method

.method public abstract changeContrastPreview(I)V
.end method

.method public abstract changeEffectPreview(I)V
.end method

.method public abstract changeSaturationPreview(I)V
.end method

.method public abstract changeSceneModePreview(I)V
.end method

.method public abstract changeSharpnessPreview(I)V
.end method

.method public abstract changeWhiteBalancePreview(I)V
.end method

.method protected checkCameraDuringCall()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2633
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->enableDuringCallDefaultValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2634
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    .line 2636
    new-instance v0, Lcom/sec/android/app/camera/CscParser;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->DEFAULT_CSC_FILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/CscParser;-><init>(Ljava/lang/String;)V

    .line 2638
    .local v0, parser:Lcom/sec/android/app/camera/CscParser;
    if-eqz v0, :cond_0

    const-string v2, "Settings.Multimedia"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2654
    .end local v0           #parser:Lcom/sec/android/app/camera/CscParser;
    :cond_0
    :goto_0
    return-void

    .line 2641
    .restart local v0       #parser:Lcom/sec/android/app/camera/CscParser;
    :cond_1
    const-string v2, "Settings.Multimedia.Camera.ShutterSound"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2643
    .local v1, strValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2646
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2647
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    goto :goto_0

    .line 2652
    .end local v0           #parser:Lcom/sec/android/app/camera/CscParser;
    .end local v1           #strValue:Ljava/lang/String;
    :cond_2
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    goto :goto_0
.end method

.method public checkCameraStartCondition_Call()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1486
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1489
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1490
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 1491
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1493
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    if-nez v4, :cond_0

    .line 1494
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1496
    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v4, :cond_2

    .line 1497
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_VtCall()Z

    .line 1498
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1516
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return v3

    .line 1501
    .restart local v1       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    const-string v4, "phone2"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1502
    .local v2, phoneServ2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 1503
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 1505
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    if-nez v4, :cond_3

    .line 1506
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1508
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v4, :cond_1

    .line 1509
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkCameraStartCondition_VtCall()Z

    .line 1510
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1513
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v2           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1514
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "AbstractCameraActivity"

    const-string v5, "phoneServ.isOffhook() or phoneServ.isVoIPIdle() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCameraStartCondition_Security()Z
    .locals 2

    .prologue
    .line 1573
    const-string v1, "persist.sys.camera_lock"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1574
    .local v0, dev_camera_lock_state:Ljava/lang/String;
    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1575
    const/4 v1, 0x1

    .line 1577
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkCameraStartCondition_VoIPCall()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1520
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1523
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 1524
    .local v1, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_0

    .line 1525
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    .line 1527
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1528
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_0
    :goto_1
    return v2

    .restart local v1       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_1
    move v3, v2

    .line 1525
    goto :goto_0

    .line 1530
    .end local v1           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 1532
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method protected checkCameraStartCondition_VtCall()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1538
    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    .line 1540
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v3, :cond_1

    .line 1559
    :cond_0
    :goto_0
    return v2

    .line 1544
    :cond_1
    :try_start_0
    const-string v3, "phoneext"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 1546
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 1547
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isVideoCall()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    .line 1549
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEnableDuringCall:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    if-ne v3, v4, :cond_2

    .line 1550
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 1552
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z

    if-eqz v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVtCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1554
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v0

    .line 1555
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AbstractCameraActivity"

    const-string v4, "phoneServ.isVideoCall is failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1556
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1557
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v3, "AbstractCameraActivity"

    const-string v4, "phoneServ.isVideoCall is not defined"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkOpenFolderWarningPopUp(I)Z
    .locals 3
    .parameter "currentFolderStatus"

    .prologue
    const/4 v2, 0x1

    .line 2531
    const/4 v0, 0x0

    .line 2535
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2536
    if-ne p1, v2, :cond_1

    .line 2537
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleFlipClose(Z)V

    .line 2538
    const/4 v0, 0x0

    .line 2546
    :cond_0
    :goto_0
    return v0

    .line 2540
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2541
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleFlipClose(Z)V

    .line 2542
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkOutgoingCall()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1460
    const/4 v1, 0x1

    .line 1461
    .local v1, outgoingCall:Z
    const/4 v2, 0x1

    .line 1463
    .local v2, outgoingVoipCall:Z
    :try_start_0
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1464
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 1465
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v8

    if-nez v8, :cond_3

    move v1, v6

    .line 1467
    :cond_0
    :goto_0
    const-string v8, "phone2"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1468
    .local v4, phoneServ2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_1

    .line 1469
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v8

    if-nez v8, :cond_4

    move v1, v6

    .line 1471
    :cond_1
    :goto_1
    const-string v8, "voip"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v5

    .line 1472
    .local v5, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v5, :cond_2

    .line 1473
    invoke-interface {v5}, Landroid/os/IVoIPInterface;->isVoIPIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1479
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_2
    :goto_2
    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-nez v8, :cond_5

    .line 1482
    :goto_3
    return v6

    .restart local v3       #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    move v1, v7

    .line 1465
    goto :goto_0

    .restart local v4       #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    move v1, v7

    .line 1469
    goto :goto_1

    .line 1475
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    .end local v4           #phoneServ2:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 1476
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "AbstractCameraActivity"

    const-string v9, "phoneServ.isOffhook() or phoneServ.isVoIPIdle() failed"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1482
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v8, :cond_6

    if-nez v1, :cond_7

    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckVoIPCalling:Z

    if-eqz v8, :cond_8

    if-eqz v2, :cond_8

    :cond_7
    move v7, v6

    :cond_8
    move v6, v7

    goto :goto_3
.end method

.method public checkStorage(ZZ)V
    .locals 4
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1933
    if-eqz p1, :cond_3

    .line 1934
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1936
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1937
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1942
    :goto_0
    if-eqz p2, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 1944
    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1945
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-nez v0, :cond_1

    .line 1950
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getChangeStorageSettingDialog()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 1954
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showChangeStoragetDialog()V

    .line 1973
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainTime()V

    .line 1974
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->mediaStorageDialog()V

    .line 1975
    return-void

    .line 1939
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x75

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto :goto_0

    .line 1958
    :cond_3
    if-eqz p2, :cond_4

    .line 1959
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1961
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1963
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetStorageMedia()V

    .line 1964
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getChangeStorageSettingDialog()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1965
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setChangeStorageSettingDialog(I)V

    .line 1967
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1968
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public checkStorageLow(I)I
    .locals 6
    .parameter "storage"

    .prologue
    .line 1902
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1903
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1904
    const/4 v2, 0x2

    .line 1910
    :goto_0
    return v2

    .line 1906
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 1908
    const/4 v2, 0x1

    goto :goto_0

    .line 1910
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract checkStorageLow()V
.end method

.method protected clearGLSurfaceView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 822
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 824
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 825
    return-void
.end method

.method public dismissResetDialog()V
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2231
    return-void
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 5

    .prologue
    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 724
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v3

    .line 725
    .local v3, viewSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 726
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Lcom/sec/android/app/camera/MenuBase;
    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 727
    .restart local v2       #view:Lcom/sec/android/app/camera/MenuBase;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v4, "(Z:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    const-string v4, ",C:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 735
    const-string v4, ",P:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 737
    const-string v4, ")\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public enableDuringCallDefaultValue()Z
    .locals 1

    .prologue
    .line 2658
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->PauseGLSurface()V

    .line 664
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 666
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->overridePendingTransition(II)V

    .line 667
    return-void
.end method

.method public finishMultiCamera()V
    .locals 1

    .prologue
    .line 1456
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1457
    return-void
.end method

.method public finishOnError(I)V
    .locals 7
    .parameter "error"

    .prologue
    const v6, 0x7f090010

    const v5, 0x7f0900a5

    .line 1355
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishOnError [Error type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1358
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera is finished [Error type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :goto_0
    return-void

    .line 1362
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1363
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090004

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1364
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1365
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1367
    packed-switch p1, :pswitch_data_0

    .line 1427
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1432
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1433
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1434
    :catch_0
    move-exception v1

    .line 1435
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 1370
    .end local v1           #ex:Ljava/lang/Exception;
    :pswitch_0
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1371
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$5;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1378
    :pswitch_1
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1379
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$6;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1386
    :pswitch_2
    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1387
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$7;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1394
    :pswitch_3
    const v2, 0x7f090015

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1395
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$8;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1402
    :pswitch_4
    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1403
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$9;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1410
    :pswitch_5
    const-string v2, "The firmware is not latest.\nDo you want to continue?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1411
    const v2, 0x7f0900d1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1412
    const v2, 0x7f0900d2

    new-instance v3, Lcom/sec/android/app/camera/AbstractCameraActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$10;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1419
    :pswitch_6
    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1420
    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$11;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1367
    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAFTimerStarted()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    return v0
.end method

.method public getAutoRotation()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    return v0
.end method

.method public getAvailableStorage()J
    .locals 4

    .prologue
    .line 1915
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1917
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1918
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1920
    :cond_0
    return-wide v0
.end method

.method public getAvailableStorage(I)J
    .locals 4
    .parameter "storage"

    .prologue
    .line 1924
    invoke-static {p1}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 1926
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1927
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1929
    :cond_0
    return-wide v0
.end method

.method public final getBaseLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 2104
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    return v0
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method protected final getCameraTemperature()I
    .locals 12

    .prologue
    const/4 v8, -0x1

    .line 2564
    const/4 v3, 0x0

    .line 2565
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 2566
    .local v5, fileReader:Ljava/io/FileReader;
    const/16 v9, 0xa

    new-array v4, v9, [C

    .line 2568
    .local v4, fileBuffer:[C
    const/4 v1, 0x1

    .line 2571
    .local v1, currentTemp:I
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    const-string v9, "/sys/devices/platform/sec-subthermistor/temperature"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2573
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2574
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : Camera Temperature file not found"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_0
    :goto_0
    return v8

    .line 2579
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2580
    .end local v5           #fileReader:Ljava/io/FileReader;
    .local v6, fileReader:Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/io/FileReader;->read([C)I

    move-result v0

    .line 2582
    .local v0, count:I
    if-ne v8, v0, :cond_3

    .line 2583
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : Camera Temperature file is empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 2584
    const/4 v1, 0x1

    .line 2600
    :goto_1
    if-eqz v6, :cond_6

    .line 2602
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 2609
    .end local v0           #count:I
    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    :cond_2
    :goto_2
    const-string v8, "AbstractCameraActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCameraTemperature : currentTemp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v1

    .line 2611
    goto :goto_0

    .line 2586
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v0       #count:I
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :cond_3
    :try_start_3
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([C)V

    new-instance v10, Ljava/lang/String;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2587
    .local v7, splitString:[Ljava/lang/String;
    if-nez v7, :cond_4

    .line 2588
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : failed to split buffer"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const/4 v1, 0x1

    goto :goto_1

    .line 2591
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v1

    goto :goto_1

    .line 2603
    .end local v7           #splitString:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2604
    .local v2, exception:Ljava/io/IOException;
    const-string v8, "AbstractCameraActivity"

    const-string v9, "getCameraTemperature : failed to close Camera Temperature file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 2605
    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_2

    .line 2594
    .end local v0           #count:I
    .end local v2           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2595
    .local v2, exception:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : failed to open Camera Temperature file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2600
    if-eqz v5, :cond_0

    .line 2602
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 2603
    :catch_2
    move-exception v2

    .line 2604
    .local v2, exception:Ljava/io/IOException;
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : failed to close Camera Temperature file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2597
    .end local v2           #exception:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 2598
    .restart local v2       #exception:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v8, "AbstractCameraActivity"

    const-string v9, "getCameraTemperature : failed to read Camera Temperaturet file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2600
    if-eqz v5, :cond_2

    .line 2602
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 2603
    :catch_4
    move-exception v2

    .line 2604
    const-string v8, "AbstractCameraActivity"

    const-string v9, "getCameraTemperature : failed to close Camera Temperature file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2600
    .end local v2           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_5

    .line 2602
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 2605
    :cond_5
    :goto_6
    throw v8

    .line 2603
    :catch_5
    move-exception v2

    .line 2604
    .restart local v2       #exception:Ljava/io/IOException;
    const-string v9, "AbstractCameraActivity"

    const-string v10, "getCameraTemperature : failed to close Camera Temperature file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2600
    .end local v2           #exception:Ljava/io/IOException;
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_5

    .line 2597
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_4

    .line 2594
    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .end local v5           #fileReader:Ljava/io/FileReader;
    .restart local v0       #count:I
    .restart local v6       #fileReader:Ljava/io/FileReader;
    :cond_6
    move-object v5, v6

    .end local v6           #fileReader:Ljava/io/FileReader;
    .restart local v5       #fileReader:Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method public abstract getChkKeyFromApp()Ljava/lang/String;
.end method

.method public getCityId()J
    .locals 2

    .prologue
    .line 2672
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 697
    :goto_0
    return v0

    .line 694
    :catch_0
    move-exception v0

    .line 697
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayBatteryPercentageEnabled()I
    .locals 1

    .prologue
    .line 2112
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    return v0
.end method

.method public getEULAenable()Z
    .locals 1

    .prologue
    .line 2619
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    return v0
.end method

.method public final getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public getFolderStatus()I
    .locals 1

    .prologue
    .line 2523
    const/4 v0, 0x1

    .line 2527
    .local v0, ret:I
    return v0
.end method

.method public final getGLContext()Lcom/sec/android/glview/TwGLContext;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    return-object v0
.end method

.method public getGpsPopupDisplayed()Z
    .locals 1

    .prologue
    .line 1892
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    return v0
.end method

.method public abstract getIsLaunchGallery()Z
.end method

.method public getLastElementView()Lcom/sec/android/app/camera/MenuBase;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMemoryStatus()I
    .locals 1

    .prologue
    .line 2011
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    return v0
.end method

.method public getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    return-object v0
.end method

.method public getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method public final getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getPopupMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public abstract getRemainStorage()I
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getShootingmodeRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public final getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method public abstract getTouchAutoFocusActive()Z
.end method

.method public getUsbMassStorageEnabledStatus()V
    .locals 4

    .prologue
    .line 2247
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2248
    .local v0, mStorageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    .line 2249
    const-string v1, "AbstractCameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUsbMassStorageEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    return-void
.end method

.method protected getWeather()I
    .locals 1

    .prologue
    .line 2669
    const/4 v0, 0x0

    return v0
.end method

.method protected handleBatteryOverheat()V
    .locals 5

    .prologue
    .line 2058
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleBatteryOverheat"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2093
    :goto_0
    return-void

    .line 2064
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2065
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2066
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2067
    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2069
    const v1, 0x7f090018

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$33;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$33;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2076
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2077
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$34;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$34;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2090
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 2091
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2092
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public handleFlipClose(Z)V
    .locals 4
    .parameter "bClosed"

    .prologue
    const/16 v3, 0x8

    .line 2096
    const-string v0, "AbstractCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFlipClose "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    if-eqz p1, :cond_0

    .line 2098
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 2101
    :goto_0
    return-void

    .line 2100
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected handleLowBattery(Z)V
    .locals 3
    .parameter "temp"

    .prologue
    .line 2015
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2055
    :goto_0
    return-void

    .line 2020
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2021
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2022
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2023
    if-eqz p1, :cond_1

    .line 2024
    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2028
    :goto_1
    const v1, 0x7f090018

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$31;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$31;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2036
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2037
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$32;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$32;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2053
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2054
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 2026
    :cond_1
    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public hideAllDlg()V
    .locals 3

    .prologue
    .line 2002
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 2003
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2004
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 2005
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 2002
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2008
    :cond_1
    return-void
.end method

.method public hideDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 1991
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 1992
    if-ne v0, p1, :cond_0

    .line 1993
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1994
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1995
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 1991
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1999
    :cond_1
    return-void
.end method

.method public hideFaceRect()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public abstract hideFocusRect()V
.end method

.method public abstract hideSideMenu()V
.end method

.method public abstract hideSideMenuItems()V
.end method

.method public hideStatusIcon()V
    .locals 2

    .prologue
    .line 2253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2254
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2255
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2256
    return-void
.end method

.method public hideWaitingAnimation()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method protected inflateWaitingView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 606
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 607
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 608
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030012

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 609
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 610
    .local v1, pBar4:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 613
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 614
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 615
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f0201e6

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 616
    return-void
.end method

.method protected initializeGLSurfaceView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 762
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 763
    new-instance v0, Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, v2, p0, v3}, Lcom/sec/android/glview/TwGLContext;-><init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext$OnGLInitializeListener;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v6, 0x4

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;

    invoke-direct {v1, p0, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/AbstractCameraActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 784
    :cond_0
    :goto_0
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 785
    .local v7, glViewLayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 787
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 788
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLSurfaceCreate**StartU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void

    .line 779
    .end local v7           #glViewLayout:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isHoveringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;

    invoke-direct {v1, p0, v8}, Lcom/sec/android/app/camera/AbstractCameraActivity$hoverclass;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/AbstractCameraActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    const v1, 0x7f0b0007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setHoverBaseView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public invalidatePreview()V
    .locals 2

    .prologue
    .line 1345
    const v1, 0x7f0b0009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1346
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 1347
    return-void
.end method

.method public isAccuWeatherEnable()Z
    .locals 1

    .prologue
    .line 2675
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isActivityDestoying()Z
.end method

.method public abstract isAutoFocusing()Z
.end method

.method public isBatteryCharging()Z
    .locals 1

    .prologue
    .line 2108
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    return v0
.end method

.method public isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 711
    const/4 v0, 0x1

    .line 718
    :goto_0
    return v0

    .line 714
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 718
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isCapturing()Z
.end method

.method public isFirstSidemenuSelf()Z
    .locals 1

    .prologue
    .line 2273
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 2274
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 2276
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 4

    .prologue
    .line 944
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 945
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 946
    const-string v1, "AbstractCameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kgm.isKeyguardLocked()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isMediaScannerScanning()Z
.end method

.method public abstract isPreviewStarted()Z
.end method

.method public isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 706
    :goto_0
    return v0

    .line 703
    :catch_0
    move-exception v0

    .line 706
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResetDialogActive()Z
    .locals 1

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 2226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isShutterPressed()Z
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 1

    .prologue
    .line 2243
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mUsbMassStorageEnabled:Z

    return v0
.end method

.method protected makeToast(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 8
    .parameter "cls"
    .parameter "id"
    .parameter "str"

    .prologue
    const v6, 0x7f0201cf

    const/4 v7, 0x0

    .line 2118
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2119
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000c

    const v4, 0x7f0b001d

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2120
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b001e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2121
    .local v0, image:Landroid/widget/ImageView;
    const v4, 0x7f0b001f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2123
    .local v3, text:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    .line 2129
    :goto_0
    if-eqz p3, :cond_1

    .line 2130
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2134
    :goto_1
    const/high16 v4, 0x420c

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2135
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 2137
    packed-switch p2, :pswitch_data_0

    .line 2154
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    const/16 v5, 0x51

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v7, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 2155
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 2156
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 2157
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2158
    return-void

    .line 2126
    :cond_0
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    goto :goto_0

    .line 2132
    :cond_1
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 2139
    :pswitch_0
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2144
    :pswitch_1
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_PUSH_SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2149
    :pswitch_2
    const-string v4, "AbstractCameraActivity"

    const-string v5, "MESSAGE_TYPE_MMS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const v4, 0x7f0201ce

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 2137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mediaStorageDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1440
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 1445
    :goto_0
    return-void

    .line 1443
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected notifyOnPause()V
    .locals 1

    .prologue
    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1087
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onAntishakeSelect(I)V
    .locals 0
    .parameter "antishake"

    .prologue
    .line 472
    return-void
.end method

.method public onAudioRecordingSelect(I)V
    .locals 0
    .parameter "audiorecording"

    .prologue
    .line 518
    return-void
.end method

.method public onAutoShareShotModeSelectCommand(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 548
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 0
    .parameter "autocontrast"

    .prologue
    .line 475
    return-void
.end method

.method public onBlinkdetectionSelect(I)V
    .locals 0
    .parameter "blinkdetection"

    .prologue
    .line 478
    return-void
.end method

.method public onBurstModeSelectCommand(I)V
    .locals 0
    .parameter "mBurstMode"

    .prologue
    .line 539
    return-void
.end method

.method public onCamcorderQualityMenuSelect(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 484
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(I)V
    .locals 1
    .parameter "speed"

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderSpeedMenuSelect(IZZ)V

    .line 491
    return-void
.end method

.method public onCamcorderSpeedMenuSelect(IZZ)V
    .locals 0
    .parameter "speed"
    .parameter "isSubMenu"
    .parameter "fromResetSettings"

    .prologue
    .line 487
    return-void
.end method

.method public onCameraQualityMenuSelect(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 481
    return-void
.end method

.method public onContextualFilenameSelect(I)V
    .locals 0
    .parameter "contextualFilename"

    .prologue
    .line 542
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 0
    .parameter "contrast"

    .prologue
    .line 421
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 1212
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1213
    const-string v1, "AbstractCameraActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1216
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "AbstractCameraActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1217
    invoke-static {p0}, Lcom/sec/android/app/camera/CheckMemory;->setStorageVolume(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 1219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1222
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideStatusIcon()V

    .line 1225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsPinupMode:Z

    .line 1226
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .parameter "id"

    .prologue
    .line 1581
    const-string v11, "ro.csc.country_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1583
    .local v9, country_code:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1854
    :pswitch_0
    const/4 v11, 0x0

    :goto_0
    return-object v11

    .line 1585
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1586
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090004

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090005

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090018

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$12;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$12;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1606
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$13;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$13;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1629
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto :goto_0

    .line 1631
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1632
    .local v2, builder2:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0900e3

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900d1

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$15;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$15;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900d2

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$14;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$14;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1646
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto :goto_0

    .line 1648
    .end local v2           #builder2:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1650
    .local v3, builder3:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v11

    if-nez v11, :cond_0

    .line 1651
    const v11, 0x7f090019

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1655
    :goto_1
    const v11, 0x7f090004

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090018

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$16;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$16;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1662
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$17;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$17;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1672
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1653
    :cond_0
    const v11, 0x7f09001a

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1675
    .end local v3           #builder3:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1676
    .local v4, builder4:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090113

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1677
    const-string v11, "China"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "china"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "CHINA"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1678
    :cond_1
    const v11, 0x7f090115

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1682
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090119

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$18;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$18;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09011a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$19;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$19;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1704
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1680
    :cond_2
    const v11, 0x7f090114

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 1707
    .end local v4           #builder4:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1708
    .local v5, builder5:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f090116

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1709
    const-string v11, "China"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "china"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "CHINA"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1710
    :cond_3
    const v11, 0x7f090118

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1714
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090119

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$20;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$20;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09011a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$21;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$21;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1744
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$22;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$22;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1756
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1712
    :cond_4
    const v11, 0x7f090117

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 1759
    .end local v5           #builder5:Landroid/app/AlertDialog$Builder;
    :pswitch_6
    const-string v11, "AbstractCameraActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FLIP_OPEN_DLG, mCameraSettings.getShootingMode()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iget-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 1761
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1762
    .local v6, builder7:Landroid/app/AlertDialog$Builder;
    iget-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v11

    if-nez v11, :cond_5

    const v10, 0x7f090171

    .line 1764
    .local v10, msgId01:I
    :goto_4
    const v11, 0x7f090004

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1765
    const v11, 0x1010355

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1766
    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1767
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1768
    const v11, 0x7f0900a5

    new-instance v12, Lcom/sec/android/app/camera/AbstractCameraActivity$23;

    invoke-direct {v12, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$23;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v6, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1773
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$24;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$24;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1783
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1762
    .end local v10           #msgId01:I
    :cond_5
    const v10, 0x7f090172

    goto :goto_4

    .line 1786
    .end local v6           #builder7:Landroid/app/AlertDialog$Builder;
    :cond_6
    const-string v11, "AbstractCameraActivity"

    const-string v12, "It\'s not self-mode"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1790
    :pswitch_7
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 1791
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1792
    .local v7, builder8:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f09017a

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090174

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900a5

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$26;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$26;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900df

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$25;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$25;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1806
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1808
    .end local v7           #builder8:Landroid/app/AlertDialog$Builder;
    :pswitch_8
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 1809
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1810
    .local v8, builder9:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0900c1

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900dc

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900a5

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$28;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$28;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0900df

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$27;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$27;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1825
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1827
    .end local v8           #builder9:Landroid/app/AlertDialog$Builder;
    :pswitch_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1829
    .local v1, builder10:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v11

    if-nez v11, :cond_7

    .line 1830
    const v11, 0x7f09001b

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1834
    :goto_5
    const v11, 0x7f090004

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x1010355

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f090018

    new-instance v13, Lcom/sec/android/app/camera/AbstractCameraActivity$29;

    invoke-direct {v13, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$29;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1841
    new-instance v11, Lcom/sec/android/app/camera/AbstractCameraActivity$30;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$30;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1851
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    goto/16 :goto_0

    .line 1832
    :cond_7
    const v11, 0x7f09001c

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    .line 1583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1250
    const-string v0, "AbstractCameraActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1256
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 1257
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 1259
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1263
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSpinnerDialog:Landroid/app/Dialog;

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1267
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1268
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1271
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1273
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOpenFailedPopup:Landroid/app/AlertDialog;

    .line 1276
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1278
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingFailedPopup:Landroid/app/AlertDialog;

    .line 1281
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1283
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBufferOverFlowPopup:Landroid/app/AlertDialog;

    .line 1286
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_6

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->clear()V

    .line 1288
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 1291
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_7

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1293
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1296
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_8

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1298
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1301
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_9

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1303
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1306
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_a

    .line 1307
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1308
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1311
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_b

    .line 1312
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1313
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1316
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    if-eqz v0, :cond_c

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/CommandIdMap;->clear()V

    .line 1318
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCommandIdMap:Lcom/sec/android/app/camera/command/CommandIdMap;

    .line 1320
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_d

    .line 1321
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1322
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1325
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_e

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1327
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 1330
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 1331
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 1333
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1334
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    .line 1335
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    .line 1336
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    .line 1338
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1339
    return-void
.end method

.method public onDeviceListMenuSelect()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public onEffectMenuSelect(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 415
    return-void
.end method

.method public onEffectRecorderMenuSelectCommand(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 536
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 0
    .parameter "exposureValue"

    .prologue
    .line 451
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .locals 0
    .parameter "exposuremeter"

    .prologue
    .line 463
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 0
    .parameter "flashMode"

    .prologue
    .line 397
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 0
    .parameter "flip"

    .prologue
    .line 524
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 394
    return-void
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 13
    .parameter "rootView"

    .prologue
    const v12, 0x7f070097

    const v11, 0x7f07007e

    const/4 v2, 0x0

    .line 828
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v10, v0

    .line 829
    .local v10, SCREEN_WIDTH:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    .line 831
    .local v9, SCREEN_HEIGHT:I
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 833
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 834
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v8, v0

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 840
    new-instance v3, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v8, v0

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 843
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 844
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 845
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, v10

    int-to-float v5, v9

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseIndicatorsRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSideMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mRecordingMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 855
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 856
    return-void
.end method

.method public onGpsChanged(I)V
    .locals 0
    .parameter "gps"

    .prologue
    .line 497
    return-void
.end method

.method public onGuidelineSelect(I)V
    .locals 0
    .parameter "guideline"

    .prologue
    .line 494
    return-void
.end method

.method public onHdrMenuSelectCommand(I)V
    .locals 0
    .parameter "hdr"

    .prologue
    .line 527
    return-void
.end method

.method public onISOMenuSelect(I)V
    .locals 0
    .parameter "iso"

    .prologue
    .line 460
    return-void
.end method

.method public onModechanged()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public onObjecttrackingSelect(I)V
    .locals 0
    .parameter "objecttracking"

    .prologue
    .line 469
    return-void
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 512
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1093
    const-string v2, "AbstractCameraActivity"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1097
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v2, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 1101
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1102
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->onPause()V

    .line 1105
    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    .line 1107
    const-string v2, "AbstractCameraActivity"

    const-string v3, "GL Cleared!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1112
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause : SCREEN_BRIGHTNESS_MODE - bTurnOnScrAB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    if-eqz v2, :cond_2

    .line 1114
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1115
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1, v7, v7}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 1119
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_2
    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1122
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)Z

    .line 1124
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1139
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1140
    :cond_3
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1142
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1143
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1145
    :cond_4
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 1147
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1148
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1149
    :cond_5
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOverheatPopup:Landroid/app/AlertDialog;

    .line 1151
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1152
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1153
    :cond_6
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 1155
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1156
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1157
    :cond_7
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 1159
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1160
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1161
    :cond_8
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 1163
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1164
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1165
    :cond_9
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 1167
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1168
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1169
    :cond_a
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 1171
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1172
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1173
    :cond_b
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 1175
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1176
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1177
    :cond_c
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 1179
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1180
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1181
    :cond_d
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 1183
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1185
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 1187
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1188
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1191
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 1192
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1195
    :cond_f
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    if-eqz v2, :cond_10

    .line 1196
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1197
    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->msgToast:Landroid/widget/Toast;

    .line 1201
    :cond_10
    sget-boolean v2, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraActivitySwitching:Z

    if-nez v2, :cond_11

    .line 1202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1203
    .local v0, dvfsLockIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const-string v2, "RATE"

    const-string v3, "60"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1207
    .end local v0           #dvfsLockIntent:Landroid/content/Intent;
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1208
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 1209
    return-void

    .line 1125
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v5, 0x1

    .line 1858
    const-string v2, "AbstractCameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareDialog : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    packed-switch p1, :pswitch_data_0

    .line 1886
    :goto_0
    return-void

    .line 1861
    :pswitch_0
    const v2, 0x7f090005

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1862
    .local v1, message:Ljava/lang/String;
    iget v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-ne v2, v5, :cond_0

    .line 1863
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1866
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_card_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    move-object v0, p2

    .line 1883
    check-cast v0, Landroid/app/AlertDialog;

    .line 1884
    .local v0, builder:Landroid/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1874
    .end local v0           #builder:Landroid/app/AlertDialog;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorageLow(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 1876
    const-string v2, "AbstractCameraActivity"

    const-string v3, "change_to_phone_memory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1879
    :cond_2
    const-string v2, "AbstractCameraActivity"

    const-string v3, "not_enough_space"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const v2, 0x7f090006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1859
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreviewFileReceived(I)V
    .locals 0
    .parameter "preview"

    .prologue
    .line 442
    return-void
.end method

.method public onRecordingModeMenuSelect(I)V
    .locals 0
    .parameter "recordingMode"

    .prologue
    .line 457
    return-void
.end method

.method public onResolutionMenuSelect(I)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 412
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 955
    const-string v5, "AbstractCameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume hasWindowFocus()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hasWindowFocus()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 957
    const-string v5, "AbstractCameraActivity"

    const-string v6, "onResume. mOnResumePending=true"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iput-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 962
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 963
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuBase;->onResume()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 970
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 972
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 973
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 975
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 976
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 979
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 982
    .local v3, mAutomatic:I
    if-ne v3, v8, :cond_8

    .line 983
    iput-boolean v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 985
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 986
    .local v4, pm:Landroid/os/PowerManager;
    const-string v5, "persist.sys.default_brightness"

    const/16 v6, 0x78

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 987
    .local v0, defBrightness:I
    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Landroid/os/PowerManager;->setAutoBrightnessLimit(II)V

    .line 992
    .end local v0           #defBrightness:I
    .end local v4           #pm:Landroid/os/PowerManager;
    :goto_1
    const-string v5, "AbstractCameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume : SCREEN_BRIGHTNESS_MODE - mAutomatic:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bTurnOnScrAB:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 1005
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v5, :cond_4

    .line 1006
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v5}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1011
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v5, :cond_5

    .line 1012
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->onResume()V

    .line 1014
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    iget-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutoRotation:Z

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLContext;->enableOrientation(Z)V

    .line 1016
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLContext;->setScrollBarAutoHide(Z)V

    .line 1021
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getUsbMassStorageEnabledStatus()V

    .line 1023
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_battery_percentage"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDisplayBatteryPercentage:I

    .line 1026
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1027
    .local v1, dvfsLockIntent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.DVFS_LCD_FRAME_RATE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    const-string v5, "RATE"

    const-string v6, "40"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1031
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1032
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "from-camera"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "from-camcorder"

    invoke-virtual {v5, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1034
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1035
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V

    .line 1064
    :cond_6
    :goto_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1065
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_7

    .line 1066
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 1069
    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1070
    return-void

    .line 989
    .end local v1           #dvfsLockIntent:Landroid/content/Intent;
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iput-boolean v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    goto/16 :goto_1

    .line 1037
    .restart local v1       #dvfsLockIntent:Landroid/content/Intent;
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_6

    .line 1041
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_2

    .line 1048
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableOnDeviceHelp"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1049
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showOnDeviceHelpScreen()V

    goto :goto_2

    .line 1051
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_c

    .line 1056
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_2

    .line 1058
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showEditableShortcutHelpTextDialog()V

    goto :goto_2

    .line 965
    .end local v1           #dvfsLockIntent:Landroid/content/Intent;
    .end local v3           #mAutomatic:I
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public onReviewMenuSelect(I)V
    .locals 0
    .parameter "cameraReview"

    .prologue
    .line 430
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 0
    .parameter "sns"

    .prologue
    .line 445
    return-void
.end method

.method public onSaturationMenuSelect(I)V
    .locals 0
    .parameter "saturation"

    .prologue
    .line 424
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 454
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 0
    .parameter "sharpness"

    .prologue
    .line 427
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .locals 0
    .parameter "sns"

    .prologue
    .line 436
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .locals 0
    .parameter "shootingMode"

    .prologue
    .line 403
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .locals 0
    .parameter "shutterSound"

    .prologue
    .line 448
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 1238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopOverheatTimer()V

    .line 1239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 1240
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopAFHideRectTimer()V

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1246
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1247
    return-void

    .line 1233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStorageMenuSelect(I)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 500
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 503
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 406
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 913
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 914
    return-void
.end method

.method public onVintageMenuSelect(I)V
    .locals 0
    .parameter "vintage"

    .prologue
    .line 506
    return-void
.end method

.method public onVoiceCommandMenuSelect(I)V
    .locals 0
    .parameter "VoiceCommand"

    .prologue
    .line 433
    return-void
.end method

.method public onVolumeKeyMenuSelect(I)V
    .locals 0
    .parameter "volumeKey"

    .prologue
    .line 2679
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 0
    .parameter "whiteBalance"

    .prologue
    .line 418
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 1073
    const-string v0, "AbstractCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    if-eqz p1, :cond_0

    .line 1075
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 1076
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    if-eqz v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnResumePending:Z

    .line 1079
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1080
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 409
    return-void
.end method

.method public abstract playCameraSound(II)V
.end method

.method public abstract playFocusSound(I)V
.end method

.method public popMenu(I)V
    .locals 1
    .parameter "zOrder"

    .prologue
    .line 671
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 681
    :cond_0
    return-void
.end method

.method public processBack()V
    .locals 4

    .prologue
    .line 637
    const/4 v2, 0x0

    .line 640
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 648
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 649
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 652
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 653
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 659
    :cond_1
    :goto_1
    return-void

    .line 641
    :catch_0
    move-exception v1

    .line 643
    .local v1, e:Ljava/util/EmptyStackException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 655
    .end local v1           #e:Ljava/util/EmptyStackException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public pushMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 623
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLastElementView:Lcom/sec/android/app/camera/MenuBase;

    .line 624
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->popMenu(I)V

    .line 626
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    return-void

    .line 629
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract resetFocus(Landroid/view/View;)V
.end method

.method public abstract resetPosIndicator()V
.end method

.method public resetStorageMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1896
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1898
    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1899
    return-void
.end method

.method public abstract resetToDefaultSettings()V
.end method

.method public abstract resetTouchFocus()V
.end method

.method public abstract resizeForPreviewAspectRatio()Z
.end method

.method public restartInactivityTimer()V
    .locals 2

    .prologue
    .line 873
    const-string v0, "AbstractCameraActivity"

    const-string v1, "restarting inactivity timer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 875
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startInactivityTimer()V

    .line 876
    return-void
.end method

.method public setCamcorderSelfIconLoaded(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2269
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCamcorderSelfIconLoaded:Z

    .line 2270
    return-void
.end method

.method public setCameraSelfIconLoaded(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2265
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsCameraSelfIconLoaded:Z

    .line 2266
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 545
    return-void
.end method

.method public abstract setDefaultLayout()V
.end method

.method public setDefaultStorageStatus()V
    .locals 1

    .prologue
    .line 1978
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 1979
    return-void
.end method

.method public setEULAenable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2615
    sput-boolean p1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsEULAenabled:Z

    .line 2616
    return-void
.end method

.method protected setGpsPopupDisplayed(Z)V
    .locals 0
    .parameter "displayed"

    .prologue
    .line 1888
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsDisplayed:Z

    .line 1889
    return-void
.end method

.method public abstract setGuideLineSize(Landroid/view/View;)V
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 533
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 530
    return-void
.end method

.method public abstract setPinupMode(Z)V
.end method

.method public abstract setSelectedMenuId(I)V
.end method

.method public abstract setSurfaceTransparent()V
.end method

.method public abstract setTouchAutoFocusActive(Z)V
.end method

.method public setWeatherConnect(Z)V
    .locals 0
    .parameter "connect"

    .prologue
    .line 551
    return-void
.end method

.method protected showChangeStoragetDialog()V
    .locals 5

    .prologue
    .line 2402
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 2429
    :goto_0
    return-void

    .line 2405
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2411
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2414
    .local v1, dialogMsg:Ljava/lang/String;
    const v2, 0x7f090139

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900a5

    new-instance v4, Lcom/sec/android/app/camera/AbstractCameraActivity$45;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$45;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900df

    new-instance v4, Lcom/sec/android/app/camera/AbstractCameraActivity$44;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$44;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    .line 2428
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChangeStoragetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showDefaultLayoutPopup()V
    .locals 3

    .prologue
    .line 2162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2163
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2164
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2165
    const v1, 0x7f0900da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2167
    const v1, 0x7f0900a5

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$35;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$35;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2175
    const v1, 0x7f0900df

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$36;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$36;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2183
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2184
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 2187
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    .line 2188
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDefaultLayoutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2189
    return-void
.end method

.method public showDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 1982
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 1983
    if-ne v0, p1, :cond_0

    .line 1984
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 1985
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 1982
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1988
    :cond_1
    return-void
.end method

.method public abstract showEditBackground(Z)V
.end method

.method protected showEditableShortcutHelpTextDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2348
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    .line 2399
    :cond_0
    :goto_0
    return-void

    .line 2352
    :cond_1
    const-string v6, "AbstractCameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create showEditableShortcutHelpTextDialog - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getEditableShortcutHelpTextDialog()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getEditableShortcutHelpTextDialog()I

    move-result v6

    if-eq v6, v9, :cond_0

    .line 2354
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2355
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2357
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2358
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b0003

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2359
    .local v2, img:Landroid/widget/ImageView;
    const v6, 0x7f0b0004

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2360
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b0006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2362
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v6, 0x7f090134

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2364
    const v6, 0x7f020031

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2369
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2370
    const v6, 0x7f090133

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2371
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2372
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2374
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$41;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$41;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2381
    const v6, 0x7f0900a5

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$42;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$42;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2387
    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$43;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$43;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2396
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    .line 2397
    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEditableShortcutHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showOnDeviceHelpScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2281
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 2344
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    const-string v7, "AbstractCameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create mOnDeviceHelpScreen - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getOnDeviceHelpScreen()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getOnDeviceHelpScreen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2289
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 2290
    .local v5, lp:Landroid/view/WindowManager$LayoutParams;
    new-instance v2, Landroid/app/Dialog;

    const v7, 0x7f0a0003

    invoke-direct {v2, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2292
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2293
    .local v3, inflater:Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .line 2295
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f03000e

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2296
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isFirstSidemenuSelf()Z

    move-result v7

    if-nez v7, :cond_2

    .line 2297
    const v7, 0x7f0b0023

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2298
    .local v6, message:Landroid/widget/TextView;
    const v7, 0x7f09014f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 2301
    .end local v6           #message:Landroid/widget/TextView;
    :cond_2
    const v7, 0x7f0b0006

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2302
    .local v1, checkBox:Landroid/widget/CheckBox;
    const v7, 0x7f0b0025

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2304
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2305
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 2306
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2307
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2309
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$39;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$39;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2316
    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$40;

    invoke-direct {v7, p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity$40;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2335
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2336
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070079

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07007a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2338
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2339
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2341
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    .line 2342
    iget-object v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mOnDeviceHelpScreen:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public showResetPopup()V
    .locals 3

    .prologue
    .line 2192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2193
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2194
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2195
    const v1, 0x7f0900e2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2197
    const v1, 0x7f0900d1

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$37;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$37;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2206
    const v1, 0x7f0900d2

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$38;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$38;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2214
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 2218
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    .line 2219
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mResetPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2220
    return-void
.end method

.method protected showSbeamHelpTextDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2433
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    .line 2466
    :cond_0
    :goto_0
    return-void

    .line 2436
    :cond_1
    const-string v5, "AbstractCameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showSbeamHelpTextDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSbeamHelpTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSbeamHelpTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 2438
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2439
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2441
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000f

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2442
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2443
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2445
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090138

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2446
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2447
    const v5, 0x7f090116

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2448
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2449
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2451
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$46;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$46;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2458
    const v5, 0x7f0900a5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$47;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$47;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2463
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    .line 2464
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSbeamHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public abstract showSideMenu()V
.end method

.method public abstract showSideMenuItems()V
.end method

.method protected showSingleShotBurstHelpTextDialog()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 2470
    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_1

    .line 2520
    :cond_0
    :goto_0
    return-void

    .line 2473
    :cond_1
    const-string v9, "AbstractCameraActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "create showSingleShotBurstHelpTextDialog - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getSingleShotBurstHelpTextDialog()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getSingleShotBurstHelpTextDialog()I

    move-result v9

    if-eq v9, v12, :cond_0

    .line 2475
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2476
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2478
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030001

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2479
    .local v6, layout:Landroid/view/View;
    const v9, 0x7f0b0003

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2480
    .local v4, img:Landroid/widget/ImageView;
    const v9, 0x7f0b0004

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2481
    .local v7, message:Landroid/widget/TextView;
    const v9, 0x7f0b0005

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2482
    .local v8, message2:Landroid/widget/TextView;
    const v9, 0x7f0b0006

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2483
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v9, 0x7f090136

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2484
    .local v2, helptext:Ljava/lang/String;
    const v9, 0x7f090137

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2485
    .local v3, helptext2:Ljava/lang/String;
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2486
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2488
    const v9, 0x7f020032

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2490
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2491
    const v9, 0x7f090133

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2492
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2493
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2495
    new-instance v9, Lcom/sec/android/app/camera/AbstractCameraActivity$48;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$48;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2502
    const v9, 0x7f0900a5

    new-instance v10, Lcom/sec/android/app/camera/AbstractCameraActivity$49;

    invoke-direct {v10, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$49;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2508
    new-instance v9, Lcom/sec/android/app/camera/AbstractCameraActivity$50;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$50;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2517
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    .line 2518
    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSingleShotBurstHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showStatusIcon()V
    .locals 2

    .prologue
    .line 2259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2260
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 2261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2262
    return-void
.end method

.method public showWaitingAnimation()V
    .locals 4

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1450

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 592
    return-void
.end method

.method public showWaitingAnimation_direct()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mHideWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWaitingAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    return-void
.end method

.method public startAFHideRectTimer()V
    .locals 4

    .prologue
    .line 894
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 895
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 896
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 897
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 898
    return-void
.end method

.method public abstract startContinuousAF()V
.end method

.method public startInactivityTimer()V
    .locals 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 870
    :cond_0
    return-void
.end method

.method protected startOverheatTimer()V
    .locals 4

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 887
    return-void
.end method

.method public stopAFHideRectTimer()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bAFTimerStarted:Z

    .line 905
    return-void
.end method

.method public abstract stopContinuousAF()V
.end method

.method public stopInactivityTimer()V
    .locals 2

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    :cond_0
    return-void
.end method

.method protected stopOverheatTimer()V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityPopupHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    return-void
.end method

.method public abstract updateRemainTime()V
.end method

.method public abstract updateUIWhenDefaultLayout()V
.end method

.method public abstract updateUIWhenResetSettings()V
.end method

.method public abstract updateUIWhenSwitchCamera()V
.end method
