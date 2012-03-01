.class public Lcom/android/phone/InVTCallScreen;
.super Landroid/app/Activity;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InVTCallScreen$61;,
        Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;,
        Lcom/android/phone/InVTCallScreen$BrightZoomTimer;,
        Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;,
        Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z

.field protected static disconnectDueToLowBattery:Z

.field private static farend_pressed:Z

.field private static isVTManagerAlreadyStarted:Z

.field private static mBackPressed:Z

.field private static mHomePressed:Z

.field protected static mImageSelectedFromGalary:Landroid/net/Uri;

.field private static mLongPressMenuEnabled:Z

.field private static mLongPressMoveCount:I

.field protected static mVideoSelectedFromGalary:Landroid/net/Uri;

.field private static mXMoveStart:I

.field private static mYMoveStart:I

.field private static nearend_pressed:Z


# instance fields
.field private final COUNTDOWN_INTERVAL:I

.field private CallStopLayoutImage:Landroid/widget/LinearLayout;

.field private final DURINGCALL:I

.field private final DURINGCALL_LOCK:I

.field private final DURINGCALL_UNLOCK:I

.field private final INCOMING_CALL:I

.field private final INCOMING_LOCK:I

.field private final INCOMING_UNLOCK:I

.field private ImgProj:[Ljava/lang/String;

.field private KeyGuard:Z

.field private final MILLIS_IN_FUTURE:I

.field private final OUTGOING_CALL:I

.field private final OUTGOING_LOCK:I

.field private final OUTGOING_UNLOCK:I

.field private final PROGRESS_MAX:I

.field private SeekBarLayout:Landroid/widget/LinearLayout;

.field private VideoProj:[Ljava/lang/String;

.field private bLowBat:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

.field private dialpadLayout:Landroid/widget/LinearLayout;

.field private disconnectMsg:Landroid/os/Message;

.field private duringEndCalllayout:Landroid/widget/LinearLayout;

.field private farEndImage:Landroid/widget/ImageView;

.field protected far_endsurhldr:Landroid/view/SurfaceHolder;

.field protected far_endsurview:Landroid/view/SurfaceView;

.field private filePath:Ljava/lang/String;

.field protected incomingContactImage:Landroid/widget/ImageView;

.field private isCallConnected:Z

.field public isCameraStarted:Z

.field private isCaptureFarEnd:Z

.field private isFarEndCapture:Z

.field private isFarEndRecord:Z

.field private isFrontCameraEnabled:Z

.field private isMO_Disconnect:Z

.field private isNearEndRecord:Z

.field private isPresetImageEnabled:Z

.field private isPresetImageSelectedFromOption:Z

.field private isSurfaceViewSwipe:Z

.field public isSwitchCameraClicked:Z

.field private isVTCallAlreadyStop:Z

.field private isWXGADevice:Z

.field private keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAuxiDialogCameraPopup:Z

.field private mAuxiDialogList:Z

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBeforeMakingCall:Z

.field private mBirthRemainedDays:Landroid/widget/TextView;

.field private mBirthdayIcon:Landroid/widget/ImageView;

.field private mBirthdayLayout:Landroid/widget/LinearLayout;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBlurPosition:I

.field private mBlur_Off:Z

.field protected mBrightSB:Landroid/widget/SeekBar;

.field mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBrightSBPosition:I

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCalendarIcon:Landroid/widget/ImageView;

.field private mCalendarInfo:Landroid/widget/TextView;

.field private mCalendarLayout:Landroid/widget/LinearLayout;

.field private mCallEndTime:Ljava/lang/String;

.field private mCallEndTimeBlinkCount:I

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTimer:Landroid/widget/TextView;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNumber:Landroid/widget/TextView;

.field private mCallerUppos:[Ljava/lang/String;

.field private mCancel:Landroid/view/MenuItem;

.field private mCapture:Landroid/view/MenuItem;

.field private mCaptureButton:Landroid/widget/Button;

.field private mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContextMenuDailog:Landroid/app/Dialog;

.field private mContextMenuStrArrayId:[Ljava/lang/String;

.field mCreateButton:Landroid/widget/Button;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDesableOutGoingMenu:Z

.field private final mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

.field public mDialerEditText:Landroid/widget/EditText;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field private mDialogVoiceCall:Landroid/app/Dialog;

.field private mDisp_Small:Z

.field private mDownUppos:[Ljava/lang/String;

.field private mDownUpposBlurOff:[Ljava/lang/String;

.field private mEndCall:Landroid/widget/Button;

.field private mEndCallButtonFrame:Landroid/view/View;

.field private mEndCallDisabled:Landroid/widget/Button;

.field protected mFaceBookIcon:Landroid/widget/ImageView;

.field private mFaceBookStatus:Landroid/widget/TextView;

.field private mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

.field private mFarEndRecordStopped:I

.field private mFirstFarEndViewClicked:Z

.field private mFirstNearEndViewClicked:Z

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHide:Landroid/widget/Button;

.field private mHideCheck:Z

.field private mHideDialPad:Landroid/widget/Button;

.field private mHideMe:Landroid/view/MenuItem;

.field protected mImageCaptureAnimationImageView:Landroid/widget/ImageView;

.field private mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field private mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

.field private mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

.field private mIsBatteryLow:Z

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsShowMenu:Z

.field private mIsplayVideo:Z

.field private mKeyLockStatus:I

.field private mKeyPad:Landroid/view/MenuItem;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mLowMemoryStopRecording:Z

.field private mMenuSelected:I

.field protected mMinusBright:Landroid/widget/ImageView;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mMute:Landroid/widget/ToggleButton;

.field private mNearEndRecordStopped:I

.field private mNeedShowCallLostDialog:Z

.field private mOrientation:I

.field private mOutGoingImage:[Ljava/lang/String;

.field private mOutGoingImageHideMe:[Ljava/lang/String;

.field private mOutGoingWithPresetImage:[Ljava/lang/String;

.field private mOutImg:Landroid/view/MenuItem;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPlusBright:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProviderOverlayVisible:Z

.field private mRP:Landroid/app/enterprise/RestrictionPolicy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRecordFarEndView:Landroid/widget/ImageView;

.field protected mRecordNearEndView:Landroid/widget/ImageView;

.field private mRecordTimeFarEnd:J

.field private mRecordTimeNearEnd:J

.field private mRecord_stop:Z

.field private mRecording:Landroid/view/MenuItem;

.field private mRecordingAlert:Z

.field private mRecordingFileName:Ljava/lang/String;

.field private mRegisteredForPhoneStates:Z

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private final mRingingCallAnimationDuration:I

.field private mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mSC:Landroid/widget/Button;

.field private final mSDCardReceiver:Landroid/content/BroadcastReceiver;

.field mSaveButtonFrame:Landroid/view/View;

.field private mSeekBarSelection:I

.field mSendMsgButton:Landroid/widget/Button;

.field private mShowCallLogAfterDisconnect:Z

.field private mShowMe:Landroid/view/MenuItem;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpeaker:Landroid/view/MenuItem;

.field private mStartRecordingButton:Landroid/widget/Button;

.field private mStop:Landroid/view/MenuItem;

.field private mStopRecording:Landroid/widget/Button;

.field private mSuccessToastNotRequired:Z

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSwitchHDSet:Landroid/view/MenuItem;

.field private mSwitchPHSet:Landroid/view/MenuItem;

.field private mSwitchRecording:I

.field private mToast:Landroid/widget/Toast;

.field private mToastExecuteOnceForDevicePolicyManager:Z

.field mUpdateButton:Landroid/widget/Button;

.field private mUpperTitleText:Landroid/widget/TextView;

.field private mVTManager:Lsiso/vt/VTManager;

.field private mVTStatusText:Landroid/widget/TextView;

.field private mVTcalltype:I

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVideoCallType:Z

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field private mVideoRecordTime:Landroid/widget/TextView;

.field private mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

.field private mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

.field private mVideoRecordTimeNearEnd:Landroid/widget/TextView;

.field private mVideofilePath:Ljava/lang/String;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallMessage:Ljava/lang/String;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field protected mZoomSB:Landroid/widget/SeekBar;

.field private mZoomSBPosition:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field private muteFrame:Landroid/widget/FrameLayout;

.field myListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private nearEndImage:Landroid/widget/ImageView;

.field nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

.field protected near_endsurhldr:Landroid/view/SurfaceHolder;

.field protected near_endsurview:Landroid/view/SurfaceView;

.field private nvBottomYPos:I

.field private nvTopYPos:I

.field protected outgoingContactImage:Landroid/widget/ImageView;

.field private phoneForCallNumber:Ljava/lang/String;

.field private previousFilePath:Ljava/lang/String;

.field private previousSelectedType:I

.field private rightVerticalLayout:Landroid/widget/LinearLayout;

.field private sdcardState:Ljava/lang/String;

.field private selectImg:Z

.field private selectVideo:Z

.field private showcamera:Z

.field private stopRecordingLayout:Landroid/widget/LinearLayout;

.field private svBottomYPos:I

.field private svTopYPos:I

.field private timerHandler:Landroid/os/Handler;

.field whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

.field whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    .line 223
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    .line 528
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 529
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    .line 711
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    .line 837
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->farend_pressed:Z

    .line 845
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    .line 1422
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 3347
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 3348
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 8368
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    .line 8369
    sput v2, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    .line 8372
    sput v2, Lcom/android/phone/InVTCallScreen;->mXMoveStart:I

    .line 8373
    sput v2, Lcom/android/phone/InVTCallScreen;->mYMoveStart:I

    return-void

    :cond_0
    move v0, v2

    .line 221
    goto :goto_0

    :cond_1
    move v0, v2

    .line 223
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 209
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 229
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 230
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    .line 234
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    .line 244
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    .line 247
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    .line 251
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 253
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    .line 254
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    .line 256
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 257
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 261
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 264
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallAnimationDuration:I

    .line 270
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->MILLIS_IN_FUTURE:I

    .line 271
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->COUNTDOWN_INTERVAL:I

    .line 272
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->PROGRESS_MAX:I

    .line 273
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 432
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    .line 478
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    .line 524
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 526
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 553
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    .line 603
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    .line 604
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 608
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mPauseInProgress:Z

    .line 627
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

    .line 631
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_CALL:I

    .line 632
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_CALL:I

    .line 633
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_LOCK:I

    .line 634
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_UNLOCK:I

    .line 635
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_LOCK:I

    .line 636
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_UNLOCK:I

    .line 637
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL:I

    .line 638
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_LOCK:I

    .line 639
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_UNLOCK:I

    .line 642
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 643
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 644
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 646
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 647
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 652
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->CallStopLayoutImage:Landroid/widget/LinearLayout;

    .line 653
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    .line 657
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    .line 675
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 679
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 681
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 682
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 683
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 685
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    .line 687
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mZoomSBPosition:I

    .line 689
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 691
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    .line 693
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    .line 695
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 697
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 713
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 777
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    .line 779
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mZoomSB:Landroid/widget/SeekBar;

    .line 781
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    .line 786
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    .line 791
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    .line 792
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarIcon:Landroid/widget/ImageView;

    .line 793
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    .line 796
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 800
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    .line 805
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 807
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 812
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;

    .line 813
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    .line 814
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    .line 815
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 816
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    .line 819
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 820
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    .line 821
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 822
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->sdcardState:Ljava/lang/String;

    .line 823
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 824
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 825
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 826
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 827
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 828
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 831
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I

    .line 832
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I

    .line 833
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I

    .line 842
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    .line 843
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 844
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 854
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 855
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 856
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 857
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoFileName:Ljava/lang/String;

    .line 858
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    .line 860
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 863
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    .line 864
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    .line 867
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    .line 870
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 873
    new-instance v0, Lcom/android/phone/InVTCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$1;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 898
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    .line 900
    new-instance v0, Lcom/android/phone/InVTCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$2;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    .line 1330
    new-instance v0, Lcom/android/phone/InVTCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$3;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1353
    new-instance v0, Lcom/android/phone/InVTCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$4;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    .line 1368
    new-instance v0, Lcom/android/phone/InVTCallScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$5;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1386
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    .line 1387
    new-instance v0, Lcom/android/phone/InVTCallScreen$6;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$6;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 2172
    new-instance v0, Lcom/android/phone/InVTCallScreen$7;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$7;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 2940
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 8729
    new-instance v0, Lcom/android/phone/InVTCallScreen$31;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$31;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 8963
    new-instance v0, Lcom/android/phone/InVTCallScreen$32;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$32;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 9897
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isCaptureFarEnd:Z

    .line 10815
    new-instance v0, Lcom/android/phone/InVTCallScreen$57;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$57;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 11684
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    .line 11692
    new-instance v0, Lcom/android/phone/InVTCallScreen$60;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$60;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 0

    .prologue
    .line 6750
    return-void
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 9

    .prologue
    const v7, 0x7f0e02eb

    .line 6755
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6756
    const-string v0, "InVTCallScreen: Waiting Call Dialog 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6759
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6761
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e02f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6764
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6766
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6767
    if-nez v1, :cond_6

    .line 6768
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_0
    move-object v1, v2

    .line 6794
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6796
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 6797
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 6799
    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 6801
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e02f0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 6802
    new-instance v0, Lcom/android/phone/InVTCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$25;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6822
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040042

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6824
    const v0, 0x7f09018a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6826
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6828
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6829
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6830
    return-void

    .line 6770
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6772
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6774
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6775
    if-nez v1, :cond_5

    .line 6776
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6777
    :goto_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6778
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 6781
    goto/16 :goto_1

    .line 6783
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6785
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 6787
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6788
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6789
    if-nez v3, :cond_3

    .line 6790
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6791
    :cond_3
    if-nez v2, :cond_4

    .line 6792
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v1, v3

    goto/16 :goto_1

    :cond_4
    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private GetValidFileName(Z)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 11182
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 11183
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 11185
    if-eqz p1, :cond_1

    .line 11186
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11189
    :goto_0
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11190
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11188
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    return v0
.end method

.method static synthetic access$10000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return v0
.end method

.method static synthetic access$10002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return p1
.end method

.method static synthetic access$10100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return v0
.end method

.method static synthetic access$10102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$10302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$10400(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->previousFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10500(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return v0
.end method

.method static synthetic access$10602(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return p1
.end method

.method static synthetic access$10700(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I

    return v0
.end method

.method static synthetic access$10702(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mSwitchRecording:I

    return p1
.end method

.method static synthetic access$10800(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mFarEndRecordStopped:I

    return v0
.end method

.method static synthetic access$10900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mNearEndRecordStopped:I

    return v0
.end method

.method static synthetic access$11100(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/phone/InVTCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->contextMenuSelected(I)V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return v0
.end method

.method static synthetic access$11502(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return p1
.end method

.method static synthetic access$11600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->brightOwnImage()V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->switchCamera()V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$12102(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return p1
.end method

.method static synthetic access$12108(Lcom/android/phone/InVTCallScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$12200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    return-void
.end method

.method static synthetic access$2002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return v0
.end method

.method static synthetic access$2402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$3400()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedVideoFromGallery()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/phone/InVTCallScreen;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/phone/InVTCallScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/android/phone/InVTCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/phone/InVTCallScreen;)Landroid/app/enterprise/RestrictionPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    return-void
.end method

.method static synthetic access$6302(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->performBatteryLowProcess()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/android/phone/InVTCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->getCurrentHeadsetDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showRadioOnDialog()V

    return-void
.end method

.method static synthetic access$6802(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    return v0
.end method

.method static synthetic access$7400()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/phone/InVTCallScreen;->mXMoveStart:I

    return v0
.end method

.method static synthetic access$7402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput p0, Lcom/android/phone/InVTCallScreen;->mXMoveStart:I

    return p0
.end method

.method static synthetic access$7500()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/phone/InVTCallScreen;->mYMoveStart:I

    return v0
.end method

.method static synthetic access$7502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput p0, Lcom/android/phone/InVTCallScreen;->mYMoveStart:I

    return p0
.end method

.method static synthetic access$7600()I
    .locals 1

    .prologue
    .line 209
    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$7602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput p0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return p0
.end method

.method static synthetic access$7608()I
    .locals 2

    .prologue
    .line 209
    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$7700()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return v0
.end method

.method static synthetic access$7702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return p0
.end method

.method static synthetic access$7800(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return v0
.end method

.method static synthetic access$7802(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return p1
.end method

.method static synthetic access$7900(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return v0
.end method

.method static synthetic access$7902(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return v0
.end method

.method static synthetic access$8002(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return p1
.end method

.method static synthetic access$8100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return v0
.end method

.method static synthetic access$8102(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return p1
.end method

.method static synthetic access$8200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    return p0
.end method

.method static synthetic access$8800(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    return v0
.end method

.method static synthetic access$8900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9800(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 6544
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 6545
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6546
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6547
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6550
    :cond_1
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 6551
    const-string v0, "bailOutAfterErrorDialog(): end InVTCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6552
    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_3

    .line 6553
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6559
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 6560
    return-void

    .line 6555
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6557
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_0
.end method

.method private batteryCheck()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1899
    .line 1900
    const-string v2, "/sys/class/power_supply/battery/charging_source"

    .line 1903
    const/16 v2, 0xa

    new-array v5, v2, [B

    .line 1907
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "batteryCheck !!!"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1910
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v2, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1911
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 1918
    if-eqz v3, :cond_1

    .line 1919
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1925
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 1926
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v4, v5, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1931
    :cond_2
    :goto_1
    if-nez v4, :cond_7

    .line 1965
    :cond_3
    :goto_2
    return v0

    .line 1912
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 1913
    :goto_3
    :try_start_2
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "charging_source FileNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1915
    :cond_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1918
    if-eqz v3, :cond_e

    .line 1919
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    move v2, v1

    goto :goto_0

    .line 1918
    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_5

    .line 1919
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    .line 1928
    :cond_6
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "batteryCheck : read in length is 0.."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1934
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1936
    if-nez v2, :cond_d

    .line 1937
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "Charging source is a battery"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_8
    move v2, v1

    move v3, v1

    .line 1940
    :goto_5
    const/4 v4, 0x5

    if-ge v2, v4, :cond_a

    .line 1941
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->getVoltage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    add-int/2addr v3, v4

    .line 1940
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1943
    :catch_1
    move-exception v2

    .line 1944
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "IOException error"

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1946
    :cond_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1949
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0014

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1952
    div-int/lit8 v3, v3, 0x5

    if-gt v3, v2, :cond_c

    .line 1953
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "Low battery"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_b
    move v0, v1

    .line 1954
    goto/16 :goto_2

    .line 1957
    :cond_c
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "It\'s an enough battery to use a VT"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1963
    :cond_d
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Charging source is a TA or USB"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1918
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1912
    :catch_2
    move-exception v2

    goto/16 :goto_3

    :cond_e
    move v2, v1

    goto/16 :goto_0
.end method

.method private brightOwnImage()V
    .locals 3

    .prologue
    .line 10588
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside brightOwnImage and brightening by factor -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10592
    :cond_0
    return-void
.end method

.method private button_initialize()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const v3, 0x7f0900b8

    const v2, 0x7f0900b7

    const/4 v7, 0x0

    const/4 v4, 0x4

    .line 8037
    const-string v0, "InVTCallScreen"

    const-string v1, "Enter button_initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8038
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    sparse-switch v0, :sswitch_data_0

    .line 8363
    :cond_0
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Exit button_initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8364
    return-void

    .line 8041
    :sswitch_0
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 8042
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setRingingCallFrameAni()V

    .line 8044
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 8045
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e032c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8050
    const v0, 0x7f09017e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 8051
    const v0, 0x7f09017f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    .line 8052
    const v0, 0x7f09017d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    .line 8055
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    .line 8056
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 8057
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 8058
    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    .line 8062
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 8063
    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    .line 8064
    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarIcon:Landroid/widget/ImageView;

    .line 8065
    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    .line 8084
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8085
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8088
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 8089
    if-eqz v0, :cond_4

    .line 8090
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 8092
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 8094
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 8096
    if-eqz v1, :cond_6

    .line 8098
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v2, :cond_2

    const-string v2, "display_calendar_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 8099
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 8100
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->GetMeeting(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 8101
    const-string v3, ""

    if-eq v2, v3, :cond_5

    .line 8102
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8103
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8109
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const v5, 0x7f020154

    invoke-static {v2, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 8115
    const-string v2, "display_sns_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "display_birthday_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v2, :cond_4

    .line 8118
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2, p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V

    .line 8129
    :cond_4
    :goto_2
    const-string v0, "InVTCallScreen"

    const-string v1, "Incomming Lock Screen Draw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8130
    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 8131
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    .line 8134
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/IncomingSlidingWidget;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 8135
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, v7}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    goto/16 :goto_0

    .line 8105
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 8122
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8123
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    .line 8141
    :sswitch_1
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 8142
    const v0, 0x7f0900dd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    .line 8143
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    .line 8146
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 8147
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 8149
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-nez v0, :cond_7

    .line 8150
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0e033e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8152
    :cond_7
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    .line 8153
    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    .line 8157
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_8

    .line 8158
    const v0, 0x7f090184

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    .line 8159
    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarIcon:Landroid/widget/ImageView;

    .line 8160
    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    .line 8163
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 8164
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 8166
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8167
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8168
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 8169
    const-string v0, "InVTCallScreen"

    const-string v1, "In Locked outgoing condn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8213
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 8214
    if-eqz v0, :cond_0

    .line 8216
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 8218
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 8221
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v2, :cond_a

    const-string v2, "display_calendar_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    .line 8222
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 8223
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->GetMeeting(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v2

    .line 8224
    const-string v3, ""

    if-eq v2, v3, :cond_11

    .line 8225
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8226
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCalendarInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8234
    :cond_a
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 8236
    if-eqz v1, :cond_0

    .line 8237
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const v5, 0x7f020154

    invoke-static {v2, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 8243
    const-string v2, "display_sns_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "display_birthday_info"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_b
    iget-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v2, :cond_0

    .line 8246
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2, p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V

    goto/16 :goto_0

    .line 8176
    :cond_c
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 8178
    const-string v0, "InVTCallScreen"

    const-string v1, "In unLocked outgoing condn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8179
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_d

    .line 8180
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 8182
    :cond_d
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    .line 8183
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-eqz v0, :cond_f

    .line 8185
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8186
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8187
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-nez v0, :cond_e

    .line 8189
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0e030c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 8191
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 8194
    :cond_f
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    .line 8195
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_10

    .line 8197
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8198
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8201
    :cond_10
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    .line 8202
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 8204
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8205
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8206
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 8207
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_3

    .line 8228
    :cond_11
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCalendarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 8259
    :sswitch_2
    iput v7, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 8260
    const-string v0, "InVTCallScreen"

    const-string v1, "In DURINGCALL condn button initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8261
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    .line 8263
    const v0, 0x7f090173

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    .line 8264
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    .line 8266
    const v0, 0x7f090174

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallDisabled:Landroid/widget/Button;

    .line 8267
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    .line 8268
    const v0, 0x7f0900d3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    .line 8269
    const v0, 0x7f0900c9

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    .line 8272
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1a

    .line 8273
    const v0, 0x7f090177

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    .line 8274
    const v0, 0x7f090178

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    .line 8275
    const v0, 0x7f090179

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    .line 8281
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 8282
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 8283
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    .line 8285
    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    .line 8287
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8288
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8292
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 8293
    if-eqz v0, :cond_12

    .line 8294
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 8298
    :cond_12
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    .line 8300
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    .line 8301
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8303
    const v0, 0x7f0900b1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    .line 8304
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8309
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    .line 8310
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    .line 8311
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8312
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8313
    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    .line 8314
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8315
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    .line 8316
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8318
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_13

    .line 8319
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 8323
    :cond_13
    const v0, 0x7f0900c2

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    .line 8324
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8325
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8328
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_14

    .line 8329
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8330
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8332
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8333
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_15

    .line 8334
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8335
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8340
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_16

    .line 8341
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8342
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8344
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 8345
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 8347
    :cond_16
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_17

    .line 8348
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8349
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8351
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 8353
    :cond_17
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_18

    .line 8354
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 8356
    :cond_18
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_19

    .line 8357
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUIForNearEnd()V

    .line 8359
    :cond_19
    const-string v0, "InVTCallScreen"

    const-string v1, "Exit DURINGCALL condn button initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8278
    :cond_1a
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    goto/16 :goto_5

    .line 8038
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method private cancelRecordingFarEndView()V
    .locals 3

    .prologue
    const/16 v2, 0x7e

    .line 11322
    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11323
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11324
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    .line 11326
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    .line 11327
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11328
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11329
    const v0, 0x7f0e0351

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 11330
    return-void
.end method

.method private cancelRecordingNearEndView()V
    .locals 2

    .prologue
    .line 11377
    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingNearEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11378
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11379
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    .line 11380
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11381
    return-void
.end method

.method private capture_farend_view(J)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x7e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11237
    const-string v0, "InVTCallScreen"

    const-string v1, "In capture_farend_view method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11238
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11239
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 11241
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->imageCaptureAnimation()V

    .line 11242
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11243
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11244
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 11245
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11246
    const v0, 0x7f0e0329

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 11247
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 11248
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture File Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11250
    :cond_0
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 11251
    const-string v0, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11252
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 11253
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11256
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 11257
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    .line 11260
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    .line 11261
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 11262
    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$59;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$59;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 11271
    :goto_0
    return-void

    .line 11269
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private capture_nearend_view(J)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11200
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11201
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 11202
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 11203
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 11204
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->imageCaptureAnimation()V

    .line 11205
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11206
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11207
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 11208
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11209
    const-string v0, "InVTCallScreen"

    const-string v1, "In capture_nearend_view method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11210
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 11211
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11212
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 11213
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 11214
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 11215
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    .line 11216
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 11218
    new-array v0, v5, [Ljava/lang/String;

    .line 11219
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 11220
    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$58;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$58;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 11227
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    .line 11228
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11234
    :goto_0
    return-void

    .line 11230
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private changeImgSize(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 10595
    packed-switch p1, :pswitch_data_0

    .line 10634
    :cond_0
    :goto_0
    return-void

    .line 10597
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 10598
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside ChangeImage for Caller Image with Small size -- "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10602
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10603
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 10604
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10612
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 10613
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside ChangeImage for Caller Image with Large size --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10616
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10617
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10618
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 10619
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x16b

    const/16 v3, 0x110

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10623
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10624
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 10625
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1b4

    const/16 v3, 0x146

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10595
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkForCleanupState()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5573
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2

    .line 5575
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5588
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 5578
    goto :goto_0

    .line 5580
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_3

    .line 5582
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 5585
    goto :goto_0

    :cond_3
    move v0, v1

    .line 5588
    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 3
    .parameter "state"

    .prologue
    .line 5549
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 5550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5552
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5568
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5555
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5566
    :goto_0
    return-object v0

    .line 5559
    :pswitch_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5566
    :pswitch_2
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5552
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11146
    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11147
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 11148
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 11149
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v6, v2

    .line 11150
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 11151
    mul-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    .line 11152
    const-string v4, "InVTCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory Size Avialable is in Kb : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11153
    if-eqz p1, :cond_2

    .line 11154
    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 11176
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 11164
    goto :goto_0

    .line 11167
    :cond_2
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 11176
    goto :goto_0
.end method

.method private checkWXGADevice()Z
    .locals 5

    .prologue
    const/16 v4, 0x500

    const/4 v0, 0x1

    .line 11764
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 11765
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 11767
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11768
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 11769
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_0

    if-ne v1, v4, :cond_0

    .line 11770
    const-string v1, "InVTCallScreen"

    const-string v2, "This is WXGA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11777
    :goto_0
    return v0

    .line 11773
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    if-ne v2, v4, :cond_1

    .line 11774
    const-string v1, "InVTCallScreen"

    const-string v2, "This is WXGA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11777
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private contextMenuSelected(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9899
    const-string v0, "InVTCallScreen"

    const-string v1, "In CallVtScreen contextMenuSelected method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9900
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9901
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9903
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this is inside contextMenuSelected and selected item is -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9926
    :cond_0
    aget-object v2, v1, p1

    const v3, 0x7f0e031a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9928
    iput v6, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9929
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    .line 10075
    :cond_1
    :goto_0
    return-void

    .line 9930
    :cond_2
    aget-object v2, v1, p1

    const v3, 0x7f0e031b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9932
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v2, :cond_4

    .line 9935
    add-int/lit8 v2, p1, 0x1

    aget-object v2, v1, v2

    const v3, 0x7f0e031c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9937
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9938
    iput v9, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9939
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 9940
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 9941
    :cond_3
    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    const v2, 0x7f0e031d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9944
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9945
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9946
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 9947
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v5}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 9950
    :cond_4
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9951
    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 9953
    :cond_5
    aget-object v2, v1, p1

    const v3, 0x7f0e031c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9955
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_1

    .line 9956
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9957
    iput v9, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9958
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 9959
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 9964
    :cond_6
    aget-object v2, v1, p1

    const v3, 0x7f0e031d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9966
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9967
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9968
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 9969
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v5}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 9970
    :cond_7
    aget-object v2, v1, p1

    const v3, 0x7f0e031f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    aget-object v2, v1, p1

    const v3, 0x7f0e0320

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9974
    :cond_8
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 9975
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 9976
    :cond_9
    aget-object v2, v1, p1

    const v3, 0x7f0e0321

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    aget-object v2, v1, p1

    const v3, 0x7f0e0322

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 9980
    :cond_a
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 9981
    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 9982
    :cond_b
    aget-object v2, v1, p1

    const v3, 0x7f0e0323

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-nez v2, :cond_c

    .line 9984
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside capture context menu selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9988
    const-string v0, "InVTCallScreen"

    const-string v1, "Capture Image called for Farend view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_farend_view(J)V

    goto/16 :goto_0

    .line 9996
    :cond_c
    aget-object v2, v1, p1

    const v3, 0x7f0e0324

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 9998
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside record video for far end or near end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10000
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-eqz v0, :cond_d

    .line 10001
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 10003
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 10007
    :cond_e
    aget-object v2, v1, p1

    const v3, 0x7f0e0340

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 10009
    const-string v0, "InVTCallScreen"

    const-string v1, "In image option item"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10010
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 10012
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V

    goto/16 :goto_0

    .line 10016
    :cond_f
    aget-object v2, v1, p1

    const v3, 0x7f0e0341

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 10018
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    .line 10019
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 10021
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "videoAlertShowNeverAgain"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 10022
    if-nez v0, :cond_10

    .line 10023
    const-string v0, "InVTCallScreen"

    const-string v1, "selectVideoFromMyFiles:: Video Dialog Shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10024
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 10026
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    goto/16 :goto_0

    .line 10029
    :cond_11
    aget-object v2, v1, p1

    const v3, 0x7f0e0342

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-eqz v2, :cond_12

    .line 10031
    const-string v0, "InVTCallScreen"

    const-string v1, "Capture Image called for Nearend view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10032
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_nearend_view(J)V

    goto/16 :goto_0

    .line 10033
    :cond_12
    aget-object v2, v1, p1

    const v3, 0x7f0e0343

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 10035
    iput v6, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10036
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    goto/16 :goto_0

    .line 10038
    :cond_13
    aget-object v2, v1, p1

    const v3, 0x7f0e0344

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 10040
    const-string v0, "InVTCallScreen"

    const-string v1, "Preset Image is being called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10041
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 10044
    :cond_14
    aget-object v2, v1, p1

    const v3, 0x7f0e0345

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 10047
    const-string v0, "InVTCallScreen"

    const-string v1, "Show camera is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10048
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 10049
    const-string v0, "InVTCallScreen"

    const-string v1, "Calling surfaceview_init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10050
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0

    .line 10055
    :cond_15
    aget-object v2, v1, p1

    const v3, 0x7f0e0319

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 10056
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 10057
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10060
    :cond_16
    aget-object v1, v1, p1

    const v2, 0x7f0e0315

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10061
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_17

    .line 10062
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 10070
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 10064
    :cond_17
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_18

    .line 10065
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 10067
    :cond_18
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1
.end method

.method private continueOnDisconnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1469
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1472
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    .line 1474
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1483
    return-void
.end method

.method private createDefaultImages()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1793
    .line 1799
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1801
    const v0, 0x7f02038c

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v2

    .line 1803
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v4, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1807
    const-string v0, "video_call_recording_start.jpg"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1810
    if-eqz v2, :cond_0

    .line 1815
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 1817
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 1819
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1833
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1837
    :cond_1
    const v0, 0x7f020389

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1839
    new-instance v0, Ljava/io/File;

    const-string v3, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1843
    const-string v0, "video_call_capture.jpg"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    .line 1846
    if-eqz v1, :cond_2

    .line 1851
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 1853
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 1855
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1869
    :cond_2
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1883
    :cond_3
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1885
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 1895
    :cond_5
    :goto_2
    return-void

    .line 1821
    :catch_0
    move-exception v0

    .line 1823
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 1873
    :catch_1
    move-exception v0

    .line 1875
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1883
    if-eqz v2, :cond_6

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1885
    :cond_6
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 1887
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1825
    :catch_3
    move-exception v0

    .line 1827
    :try_start_a
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_0

    .line 1881
    :catchall_0
    move-exception v0

    .line 1883
    :goto_4
    if-eqz v2, :cond_7

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1885
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 1891
    :cond_8
    :goto_5
    throw v0

    .line 1857
    :catch_4
    move-exception v0

    .line 1859
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1861
    :catch_5
    move-exception v0

    .line 1863
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_1

    .line 1887
    :catch_6
    move-exception v1

    goto :goto_5

    .line 1881
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 1873
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1887
    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 4

    .prologue
    const/16 v3, 0x6c

    const/4 v2, 0x0

    .line 5609
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5612
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5613
    const-string v0, "InVTCallScreen"

    const-string v1, "delayedCleanupAfterDisconnect(): remove unnecessary messages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5627
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 5629
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5631
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 5632
    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5657
    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    .line 5658
    const-string v0, "After internalHangup call the calllog -Exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5659
    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 5660
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 5661
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 5672
    :cond_4
    :goto_0
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 5673
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 5677
    return-void

    .line 5665
    :cond_5
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_6

    .line 5666
    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5667
    :cond_6
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    .line 5668
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method private disableControls()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8028
    const-string v0, "InVTCallScreen"

    const-string v1, "Disable the Controls during Disconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8029
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 8030
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8031
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8032
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8034
    :cond_0
    return-void
.end method

.method private dismissAllDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6569
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6570
    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6577
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 6578
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    .line 6579
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6580
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6581
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 6583
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 6584
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_3

    .line 6585
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6586
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6587
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 6589
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 6590
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    .line 6591
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6592
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6593
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6595
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 6596
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_7

    .line 6597
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6598
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6599
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 6601
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 6602
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_9

    .line 6603
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6604
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6605
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 6607
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 6608
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_b

    .line 6609
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6610
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6611
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 6613
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    .line 6614
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_d

    .line 6615
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6616
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6617
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 6624
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 6625
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    .line 6626
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6627
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6628
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 6630
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    .line 6631
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6632
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 6636
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    if-eqz v0, :cond_12

    .line 6637
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6638
    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    .line 6640
    :cond_12
    return-void
.end method

.method private dismissContextDailogBox()V
    .locals 1

    .prologue
    .line 3845
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3846
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 3849
    :cond_0
    return-void
.end method

.method private displayToast(I)V
    .locals 1
    .parameter "aResId"

    .prologue
    .line 9413
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 9414
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 9415
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9417
    :cond_0
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 4

    .prologue
    .line 7480
    const-string v2, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7487
    const-string v2, "="

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7488
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_2

    .line 7489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7491
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 7492
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 7494
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 7495
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 7496
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7505
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    return-void

    .line 7500
    :cond_1
    const-string v2, "= mBluetoothHeadset is null"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 7503
    :cond_2
    const-string v2, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableHideMeState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 11621
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 11622
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    .line 11623
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11627
    .local v1, preset_Name:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v5, "photo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 11629
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_path"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11632
    .local v0, presetImageSrc:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableHideMeState ::preset_Name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11633
    :cond_1
    if-eqz v0, :cond_2

    .line 11635
    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 11636
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11678
    .end local v0           #presetImageSrc:Ljava/lang/String;
    :goto_0
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 11679
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 11680
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 11681
    iget-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 11683
    return-void

    .line 11638
    .restart local v0       #presetImageSrc:Ljava/lang/String;
    :cond_2
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11640
    .end local v0           #presetImageSrc:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_7

    const-string v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 11641
    const-string v5, "enableHideMeState ::preset_Name is video"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11643
    const/4 v4, 0x0

    .line 11644
    .local v4, videoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_video_path"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11645
    .local v2, uriString:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 11647
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 11648
    if-eqz v4, :cond_5

    .line 11650
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 11651
    .local v3, videoPath:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 11654
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 11655
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 11659
    :cond_4
    const-string v5, "enableHideMeState :: video path is null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11660
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11665
    .end local v3           #videoPath:Ljava/lang/String;
    :cond_5
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11666
    const-string v5, "enableHideMeState :: video Uri for video file is Null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 11669
    :cond_6
    const-string v5, "enableHideMeState :: uri String for video file is Null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11670
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11674
    .end local v2           #uriString:Ljava/lang/String;
    .end local v4           #videoUri:Landroid/net/Uri;
    :cond_7
    const-string v5, "enableHideMeState ::preset_Name is Null "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11675
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fillMenuArrayList()V
    .locals 9

    .prologue
    const v8, 0x7f0e0340

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1741
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1742
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0e0323

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0324

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    .line 1747
    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f0e0319

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0315

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    .line 1752
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0342

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0e0341

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const v2, 0x7f0e0344

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const v3, 0x7f0e0324

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    .line 1759
    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0341

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0e0344

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 1765
    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0e0344

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0e0341

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    .line 1771
    return-void
.end method

.method private formatTimeString(J)Ljava/lang/String;
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0xe10

    const-wide/16 v9, 0x3c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 11112
    .line 11113
    const-string v0, "%%0%dd"

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11114
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    .line 11115
    new-array v3, v8, [Ljava/lang/Object;

    rem-long v4, v1, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 11117
    new-array v4, v8, [Ljava/lang/Object;

    rem-long v5, v1, v11

    div-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 11119
    new-array v5, v8, [Ljava/lang/Object;

    div-long/2addr v1, v11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11122
    return-object v0
.end method

.method private getCurrentHeadsetDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .prologue
    .line 7635
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 7636
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 7637
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 7640
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    .line 5283
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5285
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5286
    const/4 v1, 0x0

    .line 5294
    :goto_0
    return-object v1

    .line 5289
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5291
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5294
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 11586
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside getVideoFileNameFromUri condition and file Uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11589
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 11593
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 11594
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 11596
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11597
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 11598
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getVideoFileNameFromUri condition and file path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 11611
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 11612
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11615
    :cond_2
    :goto_1
    return-object v0

    .line 11601
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 11611
    :goto_2
    if-eqz v0, :cond_3

    .line 11612
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_1

    .line 11605
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 11611
    :goto_3
    if-eqz v1, :cond_4

    .line 11612
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_1

    .line 11611
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_5

    .line 11612
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 11611
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 11605
    :catch_2
    move-exception v0

    goto :goto_3

    .line 11601
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v6

    goto :goto_0
.end method

.method private getVoltage()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1969
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 1970
    .local v0, BATT_FILE:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1971
    .local v3, in:Ljava/io/InputStream;
    const/16 v7, 0xa

    new-array v1, v7, [B

    .line 1972
    .local v1, buffer:[B
    const/4 v6, 0x0

    .line 1973
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1976
    .local v5, length:I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1986
    if-eqz v4, :cond_5

    .line 1987
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    move-object v3, v4

    .line 1991
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 1992
    new-instance v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    const/4 v7, 0x0

    add-int/lit8 v8, v5, -0x1

    invoke-direct {v6, v1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 1995
    .restart local v6       #value:Ljava/lang/String;
    :cond_1
    sget-boolean v7, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v7, :cond_2

    .line 1996
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVoltage value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1998
    :cond_2
    return-object v6

    .line 1979
    :catch_0
    move-exception v2

    .line 1980
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1982
    sget-boolean v7, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v7, :cond_3

    .line 1983
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1986
    :cond_3
    if-eqz v3, :cond_0

    .line 1987
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 1986
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_4

    .line 1987
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v7

    .line 1986
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_2

    .line 1979
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_1

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :cond_5
    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_0
.end method

.method private handleCallKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3433
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 3434
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 3435
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 3437
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3438
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 3443
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3444
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 3446
    if-eqz v0, :cond_2

    .line 3449
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3450
    const-string v0, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3451
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    .line 3523
    :cond_1
    :goto_0
    return v5

    .line 3454
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_4

    if-eqz v1, :cond_4

    .line 3457
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    .line 3458
    const-string v0, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3460
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3461
    :cond_4
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_1

    .line 3465
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 3466
    const-string v0, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3469
    :cond_5
    if-ne v3, v5, :cond_a

    .line 3470
    if-eqz v0, :cond_6

    .line 3481
    const-string v0, "InVTCallScreen"

    const-string v1, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3491
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 3493
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 3494
    const-string v0, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3496
    :cond_7
    if-eqz v2, :cond_9

    .line 3499
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    .line 3500
    const-string v0, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3501
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3512
    :cond_9
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    .line 3513
    const-string v0, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3517
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3326
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 3327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3331
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 4893
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4895
    if-eqz v0, :cond_1

    .line 4896
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4898
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    .line 4899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostOnDialChar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4901
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    .line 4902
    sget-object v2, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4954
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4919
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    goto :goto_0

    .line 4902
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0e01a9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 6256
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6271
    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6361
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartupError: unexpected status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6363
    invoke-direct {p0, v4, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    .line 6369
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne p1, v0, :cond_2

    .line 6372
    :cond_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 6374
    :cond_2
    return-void

    .line 6288
    :pswitch_1
    const v0, 0x7f0e01a4

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 6295
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "EMERGENCY_ONLY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6296
    :cond_3
    const v0, 0x7f0e01a5

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 6302
    :pswitch_3
    const-string v0, "InVTCallScreen"

    const-string v1, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6310
    :pswitch_4
    const v0, 0x7f0e01a8

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 6323
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_4

    .line 6324
    const v0, 0x7f0e01aa

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6327
    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_5

    .line 6328
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6334
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    goto :goto_0

    .line 6330
    :cond_5
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6332
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_1

    .line 6342
    :pswitch_6
    invoke-direct {p0, v4, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 6347
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usecall_fail_option"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6350
    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_6

    .line 6351
    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 6352
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 6353
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 6356
    :cond_6
    const v0, 0x7f0e0348

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 6271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private hideEndcallbuttonlayout()V
    .locals 3

    .prologue
    .line 10699
    const-string v0, "InVTCallScreen"

    const-string v1, "Inside hideEndcallbuttonlayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10700
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of duringEndCalllayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10701
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10703
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of SeekBarLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10704
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10705
    const-string v0, "InVTCallScreen"

    const-string v1, "Outside hideEndcallbuttonlayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10706
    return-void
.end method

.method private imageCaptureAnimation()V
    .locals 2

    .prologue
    .line 10925
    const-string v0, "InVTCallScreen"

    const-string v1, "imageCaptureAnimation() :: Inside capture image animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10927
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-eqz v0, :cond_3

    .line 10930
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "imageCaptureAnimation : : capturing near end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10931
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    .line 10943
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 10944
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->prepareCaptureAnimation()V

    .line 10946
    return-void

    .line 10933
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_2

    .line 10935
    :cond_5
    const-string v0, "InVTCallScreen"

    const-string v1, "imageCaptureAnimation : : capturing far end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10937
    const v0, 0x7f0900ae

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private initInVTCallScreen()V
    .locals 2

    .prologue
    .line 3216
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 3217
    const-string v0, "initInVTCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3218
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Inside initInVTCallScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_1

    .line 3220
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 3221
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 3224
    :cond_1
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3225
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 3248
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 3249
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 3251
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3252
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 3253
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    .line 3314
    :goto_0
    return-void

    .line 3258
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3259
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    .line 3313
    :cond_3
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Exit initInVTCallScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3260
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_5

    .line 3261
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    goto :goto_1

    .line 3262
    :cond_5
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 3264
    const-string v0, "InVTCallScreen"

    const-string v1, "In vtoutgoing_main_unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3266
    const-string v0, "InVTCallScreen"

    const-string v1, "In vtoutgoing_main_unlock : After Inflating screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3270
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3271
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    .line 3279
    :cond_6
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 3287
    const-string v0, "InVTCallScreen"

    const-string v1, "In vtincoming_main_lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3289
    const-string v0, "InVTCallScreen"

    const-string v1, "In vtincoming_main_lock : After Inflating screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3291
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3292
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    .line 3296
    :cond_7
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 3298
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3299
    const-string v0, "InVTCallScreen"

    const-string v1, "In vtduringcall_main"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    const v0, 0x7f04003e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3301
    const-string v0, "InVTCallScreen"

    const-string v1, "In vtduringcall_main : After Inflating screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3303
    const-string v0, "After SurfaceView_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3304
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    .line 3305
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setupDTMFDialer()V

    .line 3306
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startDialerSession()V

    .line 3307
    const-string v0, "After Button_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3308
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    .line 3309
    const-string v0, "After StartVTCall "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initvtstack()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2364
    const-string v0, "Init VT Stack get called "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2365
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 2366
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 2369
    const-string v0, "Init VT Stack State Listener Registered"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2371
    const-string v1, "Videocalltype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    .line 2373
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    if-ne v3, v0, :cond_1

    .line 2374
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming VideoCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 2382
    :goto_0
    return-void

    .line 2378
    :cond_1
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outgoing VideoCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    goto :goto_0
.end method

.method private is2GNetwork()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 4165
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 4166
    .local v0, currnetRadioTech:I
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently connected netwokr Tech. type is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4167
    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 4174
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchBrightSB(I)V
    .locals 6
    .parameter

    .prologue
    .line 10788
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside launchBrightSB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10789
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->hideEndcallbuttonlayout()V

    .line 10790
    new-instance v0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;-><init>(Lcom/android/phone/InVTCallScreen;JJ)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    .line 10791
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    .line 10792
    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    .line 10793
    const v0, 0x7f0900cc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    .line 10794
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    .line 10796
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 10797
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10798
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10799
    if-nez p1, :cond_1

    .line 10800
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10801
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10802
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10803
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10811
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 10813
    :cond_0
    return-void

    .line 10805
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10806
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10807
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10808
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 10913
    const-string v0, "InVTCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10914
    return-void
.end method

.method private onBluetoothClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6109
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 6110
    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6112
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6113
    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6115
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6116
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    .line 6117
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6150
    :goto_0
    return-void

    .line 6125
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6130
    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 6131
    const-string v0, "BT: turnOnSpeaker()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6133
    :cond_2
    const-string v0, "BT: connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6134
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 6139
    :cond_3
    const-string v0, "InVTCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6143
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6147
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6148
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x4

    const-wide/16 v11, 0x1194

    const/4 v3, 0x1

    const/16 v10, 0x6c

    const/4 v4, 0x0

    .line 4194
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4195
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    .line 4196
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    .line 4197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4198
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 4199
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    .line 4201
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    move v1, v3

    .line 4202
    :goto_1
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v3

    .line 4226
    :goto_2
    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4228
    iget-object v8, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v8, :cond_1

    .line 4229
    iget-object v8, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v8}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 4232
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 4233
    iget-object v8, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v9, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v8, v9, :cond_6

    .line 4235
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 4236
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4819
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v4

    .line 4199
    goto :goto_0

    :cond_4
    move v1, v4

    .line 4201
    goto :goto_1

    :cond_5
    move v5, v4

    .line 4202
    goto :goto_2

    .line 4238
    :cond_6
    iget-object v8, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v9, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v8, v9, :cond_7

    .line 4240
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 4241
    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 4256
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getNetworkType()V

    .line 4298
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "usecall_fail_option"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 4302
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 4304
    if-eqz v8, :cond_8

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_8

    .line 4305
    const v0, 0x7f0e0332

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4306
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 4807
    :goto_4
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    .line 4811
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_56

    .line 4812
    const-string v0, "InVTCallScreen"

    const-string v1, "In Foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4308
    :cond_8
    const v0, 0x7f0e0348

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4309
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 4310
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4312
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 4317
    :cond_a
    iget-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_b

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_b

    .line 4319
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 4322
    :cond_b
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_e

    .line 4324
    if-eqz v8, :cond_c

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_c

    .line 4325
    const v0, 0x7f0e0330

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4326
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_4

    .line 4328
    :cond_c
    const v0, 0x7f0e0346

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4329
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 4330
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4333
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 4338
    :cond_e
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_11

    .line 4342
    if-eqz v8, :cond_f

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_f

    .line 4343
    const v0, 0x7f0e032e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4344
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4347
    :cond_f
    const v0, 0x7f0e0349

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4348
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 4349
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4351
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4356
    :cond_11
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_14

    .line 4358
    if-eqz v8, :cond_12

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_12

    .line 4359
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4360
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4362
    :cond_12
    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4363
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 4364
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4366
    :cond_13
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4372
    :cond_14
    const-string v9, "XEC"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v3, :cond_18

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_CAPABILITY_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_15

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_18

    .line 4376
    :cond_15
    if-eqz v8, :cond_16

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_16

    .line 4377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e0470

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e032d

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4379
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4382
    :cond_16
    const v0, 0x7f0e0470

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4383
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 4384
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4386
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4392
    :cond_18
    const-string v9, "XEC"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v3, :cond_1c

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_19

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->REQUESTED_FACILITY_NOT_IMPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_1c

    .line 4396
    :cond_19
    if-eqz v8, :cond_1a

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1a

    .line 4397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e0471

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e032d

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4399
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4402
    :cond_1a
    const v0, 0x7f0e0471

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4403
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 4404
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4406
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4411
    :cond_1c
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_1f

    .line 4413
    if-eqz v8, :cond_1d

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1d

    .line 4414
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4415
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4417
    :cond_1d
    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4418
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    .line 4419
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4421
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4426
    :cond_1f
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_22

    .line 4428
    if-eqz v8, :cond_20

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_20

    .line 4429
    const v0, 0x7f0e032f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4430
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4433
    :cond_20
    const v0, 0x7f0e034a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4434
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 4435
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4437
    :cond_21
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4441
    :cond_22
    iget-boolean v9, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-nez v9, :cond_25

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_25

    .line 4444
    if-eqz v8, :cond_23

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_23

    .line 4445
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4446
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4448
    :cond_23
    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4449
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 4450
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4452
    :cond_24
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4456
    :cond_25
    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_26

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_26

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v9, :cond_26

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_2a

    .line 4460
    :cond_26
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_27

    .line 4461
    const-string v0, "onDisconnect: Call failed Voice call dialog shown"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4462
    :cond_27
    if-eqz v8, :cond_28

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_28

    .line 4463
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4464
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4466
    :cond_28
    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4467
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    .line 4468
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4470
    :cond_29
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4476
    :cond_2a
    const-string v9, "VAU"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v3, :cond_2e

    sget-object v9, Lcom/android/internal/telephony/Connection$DisconnectCause;->UAVAILABLE_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v9, :cond_2e

    .line 4478
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2b

    .line 4479
    const-string v0, "onDisconnect: VAU sales code UAVAILABLE_CHANNEL."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4480
    :cond_2b
    if-eqz v8, :cond_2c

    .line 4481
    const v0, 0x7f0e0331

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4482
    invoke-virtual {p0, v13}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4484
    :cond_2c
    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4485
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_2d

    .line 4486
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4488
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4493
    :cond_2e
    sget-boolean v8, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v8, :cond_2f

    .line 4494
    const-string v8, "onDisconnect: do normal operation."

    invoke-direct {p0, v8}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4495
    :cond_2f
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_30

    .line 4496
    const v0, 0x7f0e001a

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4498
    :cond_30
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_31

    .line 4499
    const v0, 0x7f0e0019

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4501
    :cond_31
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_32

    .line 4502
    const v0, 0x7f0e001b

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4505
    :cond_32
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_33

    .line 4506
    const v0, 0x7f0e001c

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4509
    :cond_33
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_34

    .line 4510
    const v0, 0x7f0e001d

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4515
    :cond_34
    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v8, :cond_35

    const-string v8, "XEC"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v3, :cond_35

    .line 4516
    const v0, 0x7f0e0027

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4521
    :cond_35
    if-eqz v1, :cond_36

    .line 4522
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4524
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_3e

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_3e

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_3e

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_3e

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_3e

    .line 4529
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4559
    :cond_36
    :goto_5
    if-eqz v5, :cond_37

    .line 4560
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousGsmCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4562
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_41

    .line 4569
    const v1, 0x7f0e0029

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4621
    :cond_37
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 4622
    if-eqz v5, :cond_3a

    .line 4631
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4632
    if-eqz v1, :cond_39

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_39

    .line 4633
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 4634
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v8, :cond_38

    .line 4644
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_39

    .line 4645
    const-string v1, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4657
    :cond_39
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    .line 4662
    :cond_3a
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "emergency_call_retry_count"

    const/4 v7, -0x1

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4673
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_46

    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 4679
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v0, :cond_3b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v0, :cond_3b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_47

    if-lez v1, :cond_47

    :cond_3b
    if-eqz v2, :cond_47

    .line 4683
    :goto_8
    if-eqz v3, :cond_48

    .line 4684
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_3c

    .line 4685
    const-string v0, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4690
    :cond_3c
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    .line 4694
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_3d

    if-lez v1, :cond_3d

    .line 4696
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4804
    :cond_3d
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4

    .line 4530
    :cond_3e
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v7, :cond_3f

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_36

    :cond_3f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_36

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_36

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_36

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_36

    .line 4536
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_40

    .line 4540
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4541
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 4547
    :cond_40
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4548
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 4572
    :cond_41
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_42

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_44

    :cond_42
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v1, :cond_44

    .line 4580
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_43

    .line 4584
    const v1, 0x7f0e0029

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4586
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 4592
    :cond_43
    const v1, 0x7f0e0029

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4594
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 4603
    :cond_44
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v1, :cond_45

    .line 4604
    const v1, 0x7f0e000c

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 4606
    :cond_45
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v1, :cond_37

    .line 4607
    const v1, 0x7f0e000d

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_46
    move v0, v4

    .line 4673
    goto/16 :goto_7

    :cond_47
    move v3, v4

    .line 4679
    goto/16 :goto_8

    .line 4700
    :cond_48
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_49

    .line 4701
    const-string v0, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4709
    :cond_49
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4713
    if-eqz v2, :cond_4b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 4715
    :cond_4a
    const-string v0, "- onDisconnect: switching to \'Call ended\' state..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4716
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 4721
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4722
    if-nez v0, :cond_52

    .line 4723
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_4c

    .line 4724
    const-string v0, "- onDisconnect: cleaning up after FG call disconnect..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4728
    :cond_4c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4e

    .line 4729
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_4d

    .line 4730
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4731
    :cond_4d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4735
    :cond_4e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_50

    .line 4736
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_4f

    .line 4737
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4738
    :cond_4f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4742
    :cond_50
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_52

    .line 4743
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_51

    .line 4744
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4745
    :cond_51
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 4770
    :cond_52
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_54

    .line 4771
    if-nez v2, :cond_54

    .line 4778
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4782
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_53

    .line 4783
    const-string v0, "onDisconnect: Call Collision case - staying on InVTCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4785
    :cond_53
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_3

    .line 4794
    :cond_54
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_55

    const/16 v0, 0xdac

    .line 4796
    :goto_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 4797
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 4794
    :cond_55
    const/16 v0, 0xdac

    goto :goto_a

    .line 4815
    :cond_56
    const-string v0, "InVTCallScreen"

    const-string v1, "In Background"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 4817
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    goto/16 :goto_3
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 4862
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 4863
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4866
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 4877
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 4878
    const-string v0, "onMMICancel: finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4879
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 4881
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter

    .prologue
    .line 4825
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 4826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4833
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 4834
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    .line 4835
    const-string v0, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4852
    :cond_1
    :goto_0
    return-void

    .line 4843
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 4845
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 4846
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_3

    .line 4847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - MmiCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4849
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4850
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    .prologue
    .line 6099
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    .line 6100
    const-string v1, "onMuteClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6101
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 6102
    .local v0, newMuteState:Z
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 6103
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 6104
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6106
    :cond_1
    return-void

    .line 6101
    .end local v0           #newMuteState:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x1

    .line 4075
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 4076
    const-string v0, "onPhoneStateChanged()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4079
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4103
    :goto_0
    return-void

    .line 4086
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_2

    .line 4087
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 4093
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 4094
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 4096
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method private onShowHideDialpad()V
    .locals 1

    .prologue
    .line 6153
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 6154
    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6160
    :cond_0
    return-void
.end method

.method private onSpeakerClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 6070
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    .line 6071
    const-string v2, "onSpeakerClick()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6076
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 6077
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6079
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    .line 6081
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 6096
    return-void

    .line 6076
    .end local v0           #newSpeakerState:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performBatteryLowProcess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1424
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    if-eqz v0, :cond_0

    .line 1425
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and phone is in use"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 1428
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 1429
    const v0, 0x7f0e0353

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1434
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1436
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_1

    .line 1437
    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and VT Already started, so calling stopVT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 1439
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and VT not started so calling internal hangup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1446
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1448
    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and incomming call rejected so calling internal hangup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    const-string v0, "InVTCallScreen"

    const-string v1, "Low battery and during or MO call rejected  so calling internal hangup "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1455
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 5
    .parameter

    .prologue
    .line 5307
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 5308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()...  intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5315
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 5319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 5320
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 5321
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 5330
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5347
    if-nez v1, :cond_6

    .line 5348
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    :cond_2
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5530
    :cond_3
    :goto_0
    return-object v0

    .line 5332
    :catch_0
    move-exception v1

    .line 5337
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_4

    .line 5338
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    .line 5339
    const-string v1, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5342
    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    .line 5343
    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5344
    :cond_5
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5354
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 5355
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5358
    if-eqz v2, :cond_8

    if-nez v3, :cond_8

    .line 5359
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempted to call emergency number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5361
    :cond_7
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5362
    :cond_8
    if-nez v2, :cond_a

    if-eqz v3, :cond_a

    .line 5363
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with non-emergency number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- failing call."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5366
    :cond_9
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5372
    :cond_a
    if-eqz v2, :cond_b

    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v3, :cond_b

    .line 5374
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5375
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_b

    .line 5376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency number detected, changing state to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5380
    :cond_b
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v3, :cond_d

    .line 5386
    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v1, :cond_3

    .line 5388
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 5390
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    .line 5391
    const-string v0, "placeCall: starting EmergencyCallHandler, finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5392
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 5393
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5404
    :cond_d
    if-nez v2, :cond_f

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5405
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "The current connected network may not be able to support video call..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5406
    :cond_e
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5408
    :cond_f
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "The current connected network may be able to support video call..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5410
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 5411
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 5423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    .line 5430
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5446
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v1, v0}, Lcom/android/phone/PhoneUtils;->dialVideoCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    .line 5453
    packed-switch v0, :pswitch_data_0

    .line 5527
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "placeCall: unknown callStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    :cond_11
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5455
    :pswitch_0
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_12

    .line 5456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5504
    :cond_12
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5506
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_13

    .line 5507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5518
    :cond_13
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5520
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5525
    :cond_14
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareCaptureAnimation()V
    .locals 7

    .prologue
    const v6, 0x7f020390

    const v5, 0x7f02038f

    const v4, 0x7f02038e

    const/16 v3, 0x32

    const/16 v2, 0x64

    .line 10954
    const-string v0, "InVTCallScreen"

    const-string v1, "prepareCaptureAnimation() :: Inside prepare image animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10955
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 10956
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10958
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10960
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10962
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10964
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10966
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10968
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 10969
    return-void
.end method

.method private registerBatteryListener()V
    .locals 2

    .prologue
    .line 1773
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1774
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1775
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1776
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1777
    return-void
.end method

.method private registerDevicePolicyManagerReceiver()V
    .locals 2

    .prologue
    .line 1780
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1781
    .local v0, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1782
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1783
    return-void
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2989
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 2990
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2991
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2992
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2998
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2999
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3000
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3001
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3002
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    .line 3005
    :cond_0
    return-void
.end method

.method private registerSDCardListener()V
    .locals 3

    .prologue
    .line 1786
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1787
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1788
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1790
    return-void
.end method

.method private removesurfaceview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11384
    const-string v0, "InVTCallScreen"

    const-string v1, "In removesurfaceview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11387
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallDisabled:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 11389
    const-string v0, "InVTCallScreen"

    const-string v1, "In  not null condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11390
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 11391
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 11394
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 11395
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallDisabled:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 11396
    const-string v0, "InVTCallScreen"

    const-string v1, "Out not null condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11398
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out removesurfaceview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11399
    return-void
.end method

.method private selectImageFromMyFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10637
    const-string v0, "InVTCallScreen"

    const-string v1, "In selectImageFromMyFiles method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 10643
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    .line 10644
    const-string v0, "InVTCallScreen"

    const-string v1, "External Media is present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10645
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10646
    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10647
    const-string v1, "imageSelected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10648
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 10650
    return-void
.end method

.method private selectVideoFromMyFiles()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 10660
    const-string v0, "InVTCallScreen"

    const-string v1, "In selectVideoFromMyFiles method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10661
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 10662
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    .line 10663
    const-string v0, "InVTCallScreen"

    const-string v1, "External Media is present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10664
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10665
    const-string v1, "senderIsVideoCall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10666
    const-string v1, "imageSelected"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10667
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 10668
    const-string v0, "InVTCallScreen"

    const-string v1, "Out selectMyVideofile method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10670
    return-void
.end method

.method private setHideOrShowMeState()V
    .locals 5

    .prologue
    const v4, 0x7f0e030c

    const v3, 0x7f020365

    const/4 v2, 0x0

    .line 10319
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 10320
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 10321
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    .line 10323
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 10349
    :goto_0
    return-void

    .line 10327
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10329
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 10333
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10334
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    goto :goto_0

    .line 10337
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_4

    .line 10339
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f020296

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10340
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0e030b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 10344
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 10345
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 6918
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInVTCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6920
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    .line 6921
    sget-object v0, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 7055
    :cond_1
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    .line 7056
    :pswitch_1
    return-void

    .line 7028
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-nez v0, :cond_1

    .line 7029
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 7033
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 7038
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6921
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setRingingCallFrameAni()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 11016
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 11017
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11019
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11021
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11023
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11025
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11027
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11029
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11031
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 11033
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 11034
    return-void
.end method

.method private setupDTMFDialer()V
    .locals 4

    .prologue
    .line 2209
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2210
    const v0, 0x7f09012a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 2215
    :goto_0
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Full touch device!  Found dialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2217
    :cond_0
    const/4 v0, 0x0

    .line 2230
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-nez v1, :cond_2

    .line 2231
    const-string v1, "InVTCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2237
    :goto_1
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 2239
    return-void

    .line 2212
    :cond_1
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    goto :goto_0

    .line 2234
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 6520
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6521
    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6524
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 6525
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 6526
    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6541
    :cond_1
    :goto_0
    return-void

    .line 6531
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 6532
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 6533
    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6537
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 6540
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showEndCallScreen(Z)V
    .locals 4
    .parameter

    .prologue
    .line 3851
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    .line 3852
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    .line 3853
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3858
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3859
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    .line 3862
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_0

    .line 3863
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    .line 3864
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    const v1, 0x7f0e0194

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3865
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpperTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3866
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3890
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_1

    .line 3891
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 3893
    :cond_1
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 3894
    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    .line 3895
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 3896
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3897
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3899
    :cond_2
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    .line 3900
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 3901
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3902
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3904
    :cond_3
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    .line 3905
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 3906
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3907
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3912
    :cond_4
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    .line 3913
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3914
    const v0, 0x7f090095

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    .line 3915
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3917
    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    .line 3918
    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    .line 3919
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 3920
    const v0, 0x7f0900b7

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 3921
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    .line 3922
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    .line 3923
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0e003d

    const/4 v6, 0x2

    .line 6381
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6382
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGenericErrorDialog(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6385
    :cond_0
    const v0, 0x7f0e01a4

    if-ne p1, v0, :cond_1

    .line 6391
    new-instance v0, Lcom/android/phone/InVTCallScreen$14;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$14;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6406
    new-instance v1, Lcom/android/phone/InVTCallScreen$15;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$15;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6412
    new-instance v3, Lcom/android/phone/InVTCallScreen$16;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$16;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6418
    new-instance v4, Lcom/android/phone/InVTCallScreen$17;

    invoke-direct {v4, p0}, Lcom/android/phone/InVTCallScreen$17;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6425
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e002f

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6431
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 6432
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6433
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0e02d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 6434
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 6487
    :goto_0
    return-void

    .line 6443
    :cond_1
    if-eqz p2, :cond_2

    .line 6444
    new-instance v1, Lcom/android/phone/InVTCallScreen$18;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$18;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6449
    new-instance v0, Lcom/android/phone/InVTCallScreen$19;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$19;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6467
    :goto_1
    new-instance v3, Lcom/android/phone/InVTCallScreen$22;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$22;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6476
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6479
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6483
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 6486
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 6455
    :cond_2
    new-instance v1, Lcom/android/phone/InVTCallScreen$20;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$20;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6460
    new-instance v0, Lcom/android/phone/InVTCallScreen$21;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$21;-><init>(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_1
.end method

.method private showImage(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 11580
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside showImage condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11581
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 11582
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 11584
    :cond_1
    return-void
.end method

.method private showRadioOnDialog()V
    .locals 4

    .prologue
    .line 6490
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 6492
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6493
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 6495
    new-instance v0, Lcom/android/phone/InVTCallScreen$23;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$23;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6502
    new-instance v1, Lcom/android/phone/InVTCallScreen$24;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$24;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 6508
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 6509
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6511
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 6514
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x97

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6515
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 6516
    return-void
.end method

.method private showVideo(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 11566
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside show video condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11567
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 11568
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendVideo(Ljava/lang/String;)V

    .line 11570
    :cond_1
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4957
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4959
    const v2, 0x7f0e0047

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4960
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4962
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 4963
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 4964
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4965
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4969
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0049

    new-instance v2, Lcom/android/phone/InVTCallScreen$11;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$11;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$10;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InVTCallScreen$10;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4986
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4988
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4989
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4999
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5001
    const v2, 0x7f0e0047

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5002
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5004
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5005
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 5006
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5007
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5008
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 5011
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e004a

    new-instance v2, Lcom/android/phone/InVTCallScreen$13;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$13;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e004b

    new-instance v2, Lcom/android/phone/InVTCallScreen$12;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$12;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 5027
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5029
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5030
    return-void
.end method

.method private show_camera()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 11512
    const-string v0, "InVTCallScreen"

    const-string v1, "In show_camera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11513
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of selectImg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11514
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of selectVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11516
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    if-eqz v0, :cond_2

    .line 11517
    const-string v0, "InVTCallScreen"

    const-string v1, "In selectImg condition under show_camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11526
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 11527
    const-string v0, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11531
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out selectImg condition under show_camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11555
    :cond_0
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Out show_camera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11556
    return-void

    .line 11529
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 11532
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    if-eqz v0, :cond_4

    .line 11533
    const-string v0, "InVTCallScreen"

    const-string v1, "In selectVideo condition under show_camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11540
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 11541
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 11543
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    .line 11548
    :goto_2
    const-string v0, "InVTCallScreen"

    const-string v1, "In selectVideo condition under show_camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11545
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    goto :goto_2

    .line 11549
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11550
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 11552
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->previousSelectedType:I

    goto :goto_1
.end method

.method private startFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 7874
    return-void
.end method

.method private startRecordingFarEndView()V
    .locals 5

    .prologue
    const/16 v4, 0x7e

    const/4 v3, 0x1

    .line 11275
    .line 11276
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11278
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_0

    .line 11279
    const-string v0, "InVTCallScreen"

    const-string v1, "Already Far End Recording in Process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11281
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 11304
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11305
    return-void

    .line 11283
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeFarEnd:J

    .line 11284
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 11285
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/MediaLowSpaceReceiver;->registerLowMemoryListner(Landroid/os/Handler;)V

    .line 11288
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 11291
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11292
    const-string v0, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 11293
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11295
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 11296
    const/16 v0, 0xa

    .line 11298
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    goto :goto_0

    .line 11301
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 11302
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private startRecordingNearEndView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 11334
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11335
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_0

    .line 11336
    const-string v0, "InVTCallScreen"

    const-string v1, "Already Far End Recording in Process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11338
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 11357
    :goto_0
    return-void

    .line 11340
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeNearEnd:J

    .line 11341
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUIForNearEnd()V

    .line 11342
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/MediaLowSpaceReceiver;->registerLowMemoryListner(Landroid/os/Handler;)V

    .line 11343
    const/4 v0, 0x5

    .line 11345
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 11346
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 11347
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 11348
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_1

    .line 11349
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    .line 11351
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11354
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 11355
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private startToast(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 6055
    if-eqz p1, :cond_0

    .line 6056
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6058
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 6059
    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 6060
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6065
    :goto_0
    return-void

    .line 6062
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "startToast : msg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVTCall()V
    .locals 2

    .prologue
    .line 10874
    const-string v0, "InVTCallScreen"

    const-string v1, "Before-StartVTCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10875
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 10876
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_0

    .line 10878
    const-string v0, "InVTCallScreen"

    const-string v1, "StartVTCall is called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10879
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    .line 10880
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10881
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StartVTCall(Z)V

    .line 10886
    :cond_0
    return-void
.end method

.method private stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 7888
    return-void
.end method

.method private stopRecordingFarEndView()V
    .locals 3

    .prologue
    const/16 v2, 0x7e

    .line 11310
    const-string v0, "InVTCallScreen"

    const-string v1, "In stopRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11311
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11312
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StopRecording(Z)V

    .line 11314
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    .line 11315
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11316
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11318
    return-void
.end method

.method private stopRecordingNearEndView(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 11361
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUIForNearEnd()V

    .line 11362
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11363
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11364
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v2}, Lsiso/vt/VTManager;->StopRecording(Z)V

    .line 11365
    :cond_0
    if-nez p1, :cond_1

    .line 11366
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 11367
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 11368
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11369
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    .line 11372
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v1, "Out stop_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11373
    return-void
.end method

.method private stopVTCall()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10889
    const-string v0, "InVTCallScreen"

    const-string v1, "Before-StopVTCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10890
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 10891
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_0

    .line 10892
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->disableControls()V

    .line 10894
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    .line 10895
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 10897
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_2

    .line 10898
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    .line 10900
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    .line 10901
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_3

    .line 10902
    const-string v0, "InVTCallScreen"

    const-string v1, "StopVTCall is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10903
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 10904
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_3

    .line 10905
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->StopVTCall()V

    .line 10908
    :cond_3
    return-void
.end method

.method private surfaceview_initialize()V
    .locals 6

    .prologue
    const v5, 0x7f0900bf

    const v4, 0x7f0900bd

    const v3, 0x7f0900bc

    const/4 v2, 0x3

    .line 8378
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8379
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 8380
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    .line 8381
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 8382
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 8383
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 8384
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 8385
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8692
    :cond_0
    :goto_0
    return-void

    .line 8388
    :cond_1
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 8389
    const v0, 0x7f09017c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    goto :goto_0

    .line 8390
    :cond_2
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 8391
    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->stopRecordingLayout:Landroid/widget/LinearLayout;

    .line 8392
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    .line 8393
    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    .line 8394
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    .line 8395
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 8398
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$27;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$27;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8408
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    .line 8409
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 8410
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8411
    const v0, 0x7f0900af

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    .line 8413
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 8417
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 8418
    new-instance v1, Lcom/android/phone/InVTCallScreen$28;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$28;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8575
    new-instance v1, Lcom/android/phone/InVTCallScreen$29;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$29;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8673
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 8674
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 8675
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 8676
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 8677
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8680
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$30;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$30;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method private swipeSurfaceView()V
    .locals 2

    .prologue
    .line 11495
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 11496
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 11497
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 11499
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    .line 11500
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    .line 11502
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-nez v0, :cond_0

    .line 11503
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->SwipeSurface()V

    .line 11506
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 11507
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 11508
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 10559
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside CallVtScreen switchCamera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10561
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_1

    .line 10563
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10564
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v3, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 10565
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    .line 10572
    :goto_0
    return-void

    .line 10567
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_2

    .line 10568
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 10569
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    goto :goto_0
.end method

.method private syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 5230
    const/4 v2, 0x0

    .line 5231
    .local v2, updateSuccessful:Z
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    .line 5232
    const-string v3, "syncWithPhoneState()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5233
    :cond_0
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    .line 5234
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 5235
    :cond_1
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v3, :cond_2

    .line 5236
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dumpBluetoothState()V

    .line 5243
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 5245
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v3, v4, :cond_4

    .line 5249
    :cond_3
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5266
    :goto_0
    return-object v3

    .line 5254
    :cond_4
    if-ne v1, v0, :cond_7

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 5257
    .local v0, hasPendingMmiCodes:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_8

    .line 5259
    :cond_5
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5260
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 5261
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5254
    .end local v0           #hasPendingMmiCodes:Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 5264
    .restart local v0       #hasPendingMmiCodes:Z
    :cond_8
    sget-boolean v3, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v3, :cond_9

    .line 5265
    const-string v3, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5266
    :cond_9
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 3008
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    if-eqz v0, :cond_0

    .line 3009
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 3010
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 3011
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 3012
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 3013
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 3014
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 3015
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 3016
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 3017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    .line 3019
    :cond_0
    return-void
.end method

.method private updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0e0007

    .line 7988
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7989
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 7990
    const-string v2, "InVTCallScreen"

    const-string v3, "updateDisplayForCaller()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7991
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_0

    .line 7993
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7994
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7995
    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info Avialable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8021
    :goto_0
    return-void

    .line 7996
    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7998
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7999
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8000
    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info PRESENTATION_ALLOWED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8001
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v0, :cond_2

    .line 8002
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0e0008

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8003
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8004
    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info PRESENTATION_RESTRICTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8005
    :cond_2
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v1, v0, :cond_3

    .line 8006
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8007
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8008
    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info PRESENTATION_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8009
    :cond_3
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v0, :cond_4

    .line 8010
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0e0009

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8011
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8012
    const-string v0, "InVTCallScreen"

    const-string v1, "Caller Info PRESENTATION_PAYPHONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8013
    :cond_4
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 8015
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8016
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8018
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8019
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x1

    .line 2262
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2263
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 2264
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    .line 2265
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2271
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    .line 2277
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateRecordTime()V

    .line 2278
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2279
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 2281
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 2283
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 2287
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_2

    .line 2293
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateRecordTime()V

    .line 2294
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2295
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 2297
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 2299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    .line 2302
    :cond_2
    return-void

    .line 2267
    :cond_3
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    .line 2268
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEndCallButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3819
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3820
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3821
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    .line 3838
    :goto_0
    return-void

    .line 3828
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 3831
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    .line 3832
    const-string v1, "updateEndCallButton : All calls are IDLE at updateEndCallButton()"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3833
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    goto :goto_0

    .line 3837
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    goto :goto_0
.end method

.method private updateEndcallButtonState(Z)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3925
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3927
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3928
    const/4 v0, 0x0

    .line 3931
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3932
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3933
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 3934
    if-eqz v1, :cond_15

    .line 3935
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3936
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 3937
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-object v7, v0

    .line 3996
    :goto_0
    if-eqz p1, :cond_7

    .line 3997
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const v1, 0x7f0e01a9

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3999
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 4000
    if-nez v0, :cond_6

    .line 4001
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4013
    :cond_0
    :goto_1
    if-eqz v7, :cond_13

    .line 4014
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v8

    .line 4016
    if-nez v8, :cond_8

    move v5, v2

    .line 4017
    :goto_2
    if-nez v8, :cond_9

    move v4, v2

    .line 4018
    :goto_3
    if-nez v8, :cond_a

    move v1, v2

    .line 4020
    :goto_4
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 4022
    const-string v9, "20"

    .line 4024
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_pcw_enabled"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4028
    if-eqz v9, :cond_b

    const-string v10, "20"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 4029
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "EndCallButtonsView : LOCK_PCW_ENABLED"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    move v0, v3

    move v1, v3

    move v4, v3

    move v5, v3

    .line 4049
    :goto_5
    sget-boolean v7, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v7, :cond_e

    .line 4050
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4051
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4052
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4059
    :goto_6
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v1, :cond_11

    :goto_7
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4060
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_12

    :goto_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4068
    :cond_2
    :goto_9
    return-void

    .line 3939
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 3940
    if-eqz v1, :cond_15

    .line 3941
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3942
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 3943
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3945
    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 3946
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const v7, 0x7f020154

    invoke-static {v4, v5, v1, v7}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    :cond_4
    move-object v7, v0

    .line 3951
    goto/16 :goto_0

    .line 3953
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: isContactExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4003
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4005
    :catch_0
    move-exception v0

    .line 4006
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4009
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4010
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    move v5, v3

    .line 4016
    goto/16 :goto_2

    :cond_9
    move v4, v3

    .line 4017
    goto/16 :goto_3

    :cond_a
    move v1, v3

    .line 4018
    goto/16 :goto_4

    .line 4034
    :cond_b
    sget v9, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v0, v9, :cond_d

    sget v9, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v0, v9, :cond_d

    .line 4036
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 4037
    instance-of v7, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v7, :cond_14

    .line 4038
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 4039
    if-nez v8, :cond_c

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_c

    move v0, v2

    goto/16 :goto_5

    :cond_c
    move v0, v3

    goto/16 :goto_5

    :cond_d
    move v0, v3

    move v1, v3

    move v4, v3

    move v5, v3

    .line 4045
    goto/16 :goto_5

    .line 4054
    :cond_e
    iget-object v7, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4055
    iget-object v7, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_f

    move v5, v2

    :goto_a
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4056
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v4, :cond_10

    move v4, v2

    :goto_b
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_f
    move v5, v3

    .line 4055
    goto :goto_a

    :cond_10
    move v4, v3

    .line 4056
    goto :goto_b

    :cond_11
    move v2, v3

    .line 4059
    goto/16 :goto_7

    :cond_12
    move v3, v6

    .line 4060
    goto/16 :goto_8

    .line 4064
    :cond_13
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 4065
    const-string v0, "EndCallButtonsView : connection is NullPointer at updateState"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_14
    move v0, v3

    goto/16 :goto_5

    :cond_15
    move-object v7, v0

    goto/16 :goto_0
.end method

.method private updateInCallBackground()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/16 v10, 0x64

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 7652
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 7653
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    .line 7654
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    .line 7655
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 7661
    if-eqz v7, :cond_e

    .line 7662
    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v0

    .line 7666
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_d

    .line 7668
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->getCurrentHeadsetDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 7678
    :goto_1
    if-eqz v4, :cond_1

    .line 7680
    if-eqz v0, :cond_0

    .line 7820
    :cond_0
    :goto_2
    return-void

    .line 7685
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v5, :cond_0

    .line 7691
    :cond_2
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 7692
    sget-object v5, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 7703
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7704
    const-string v0, "InVTCallScreen"

    const-string v3, "updateInCallBackground :ACTIVE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7706
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v8, :cond_3

    .line 7707
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    .line 7709
    :cond_3
    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7710
    const-string v0, "InVTCallScreen"

    const-string v2, "Durring Call EarPhone is connected and switching off the speaker. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7728
    :cond_4
    :goto_3
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    .line 7729
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 7730
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    .line 7731
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_9

    .line 7732
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    .line 7733
    const-string v0, "InitVtCallScreen started because Activity is in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7734
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 7741
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7742
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 7743
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 7744
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7745
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 7747
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7748
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 7718
    :cond_7
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v9, :cond_4

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_4

    .line 7719
    const-string v0, "InVTCallScreen"

    const-string v2, "During Call Bluetooth is connected and switching off the speaker. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7720
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v9, :cond_8

    .line 7721
    const-string v0, "InVTCallScreen"

    const-string v2, "PhoneUtils.isSpeakerOn(this) && mVTcalltype == OUTGOING_CALL. "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7722
    invoke-static {v7, v8, v8}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3

    .line 7723
    :cond_8
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v8, :cond_4

    .line 7724
    const-string v0, "InVTCallScreen"

    const-string v2, "During Call Bluetooth is not connected and switching on the speaker. in IncallScreen"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7725
    invoke-static {v7, v8, v8}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_3

    .line 7736
    :cond_9
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    .line 7737
    const-string v0, "InitVtCallScreen not started because Activity is not in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7738
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    goto :goto_4

    .line 7754
    :pswitch_1
    const-string v0, "InVTCallScreen"

    const-string v2, "updateInCallBackground :DISCONNECTING"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7755
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7756
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 7757
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 7758
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 7759
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7760
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 7776
    :pswitch_2
    const-string v0, "InVTCallScreen"

    const-string v1, "updateInCallBackground :DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7777
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7778
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 7779
    const-string v0, "InVTCallScreen"

    const-string v1, "updateInCallBackground :Timer Canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7780
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    .line 7781
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 7782
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 7790
    :pswitch_3
    const-string v2, "case dialing"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7791
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    if-nez v2, :cond_c

    .line 7793
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_c

    .line 7794
    :cond_b
    const-string v2, "Camera disabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7795
    const v2, 0x7f0e0252

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 7797
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    .line 7801
    :cond_c
    :pswitch_4
    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_d
    move-object v2, v3

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_0

    .line 7692
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateInCallTouchUi()V
    .locals 2

    .prologue
    .line 7192
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 7193
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7195
    :cond_0
    return-void
.end method

.method private updateOwnImageStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5725
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "own_video_receivedcall"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5729
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5730
    :cond_1
    const-string v0, "updateOwnImageStatus:: Camera disabled due DPM  - INTENT_MSG_SECURITY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5734
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 5735
    const-string v0, "UpdateOwnImageStatus : Setup Hide me image, as per settings"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5748
    :goto_0
    return-void

    .line 5737
    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 5738
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 5739
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 5740
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 5741
    const-string v0, "UpdateOwnImageStatus : Setup Show me image, as per settings"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRecordTime()V
    .locals 2

    .prologue
    .line 2311
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    .line 2312
    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeFarEnd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->updateRecordTimeUIFarEnd(J)V

    .line 2317
    :cond_0
    :goto_0
    return-void

    .line 2314
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_0

    .line 2315
    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeNearEnd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->updateRecordTimeUINearEnd(J)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5063
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 5064
    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5071
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 5072
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    .line 5073
    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5097
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5099
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_3

    .line 5100
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 5101
    const-string v0, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5217
    :cond_2
    :goto_0
    return-void

    .line 5109
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_5

    .line 5110
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    .line 5111
    const-string v0, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5113
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    goto :goto_0

    .line 5134
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_6

    .line 5135
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 5136
    const-string v0, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5139
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_8

    .line 5140
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    .line 5141
    const-string v0, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5143
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_0

    .line 5145
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_9

    .line 5148
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 5149
    const-string v0, "- updateScreen: error call state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5153
    :cond_9
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_a

    .line 5154
    const-string v1, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5162
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_c

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-eq v1, v3, :cond_c

    .line 5163
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 5164
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 5165
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_b

    .line 5166
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 5168
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 5169
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 5170
    const v0, 0x7f0e0192

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 5171
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 5177
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5178
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    .line 5173
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_1

    .line 5184
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 5185
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 5186
    const/4 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 5187
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 5188
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_f

    .line 5190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5191
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_e

    .line 5193
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_2

    .line 5196
    :cond_f
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v2, :cond_2

    .line 5198
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_10

    .line 5199
    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5200
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 5202
    invoke-direct {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5204
    :cond_11
    if-ne v1, v3, :cond_13

    .line 5205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5206
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_12

    .line 5208
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 5209
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_3

    .line 5213
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateSelectedImageFromGallery()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1529
    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1530
    const-string v0, "InVTCallScreen"

    const-string v1, "Response from MediaStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1536
    if-eqz v1, :cond_5

    .line 1539
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1542
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1543
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1544
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1545
    const-string v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1546
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1547
    const-string v0, "InVTCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype of image selected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1556
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1557
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1561
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1563
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1564
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1565
    const-string v8, "InVTCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bitmap width: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    mul-int v0, v4, v5

    .line 1568
    if-lez v0, :cond_6

    const v4, 0x79ec00

    if-gt v0, v4, :cond_6

    move v0, v6

    .line 1572
    :goto_0
    const-string v4, "image/pipeg"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "image/jpeg"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    if-nez v0, :cond_4

    .line 1574
    const-string v0, "InVTCallScreen"

    const-string v2, "Selected File is Jpeg."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 1577
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 1578
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 1579
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 1580
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 1581
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1601
    :cond_1
    :goto_1
    const-string v0, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of bitmap after decoding - VTPM_IMAGE_REQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1606
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1615
    :cond_3
    :goto_2
    return-void

    .line 1588
    :cond_4
    const-string v0, "InVTCallScreen"

    const-string v2, "Selected File is too large or not Jpeg."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const v0, 0x7f0e034c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1594
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1595
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 1596
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    goto :goto_1

    .line 1610
    :cond_5
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1611
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 1612
    const v0, 0x7f0e0339

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    goto :goto_2

    :cond_6
    move v0, v7

    goto/16 :goto_0
.end method

.method private updateSelectedVideoFromGallery()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1500
    const-string v0, "InVTCallScreen"

    const-string v1, "Response from MediaStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    sget-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 1504
    const-string v0, "InVTCallScreen"

    const-string v1, "Response from MediaStore  VTPM_VIDEO_REQ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1509
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1511
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1512
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 1513
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of video filepath  VTPM_VIDEO_REQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    .line 1516
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1518
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1526
    :goto_0
    return-void

    .line 1522
    :cond_2
    const v0, 0x7f0e0339

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 1523
    const-string v0, "mVideoSelectedFromGalary is null"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStartRecordingUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 9298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 9302
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-nez v0, :cond_0

    .line 9303
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 9304
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9306
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "In startRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9307
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_2

    .line 9308
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9309
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9310
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9319
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 9320
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 9321
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9322
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9324
    :cond_1
    return-void

    .line 9313
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9314
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9315
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStartRecordingUIForNearEnd()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9352
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 9353
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 9354
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_0

    .line 9356
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9357
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9358
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9368
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 9369
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9370
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9371
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9379
    :goto_1
    return-void

    .line 9362
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9363
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9364
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9374
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9375
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateStopRecordingUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 9327
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 9328
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9329
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9330
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9331
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 9332
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9333
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9334
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9335
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9336
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 9337
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9339
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_0

    .line 9340
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 9341
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9342
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9349
    :goto_0
    return-void

    .line 9345
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 9346
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStopRecordingUIForNearEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 9382
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 9383
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 9385
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-nez v0, :cond_0

    .line 9386
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9387
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9389
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9390
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9391
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9392
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9393
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9394
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9395
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 9396
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 9398
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 9399
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStartRecordingButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9400
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9401
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9402
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9403
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9409
    :goto_0
    return-void

    .line 9406
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9407
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSwitchCameraButton(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 5751
    if-eqz p1, :cond_1

    .line 5752
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 5753
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5764
    :cond_0
    :goto_0
    return-void

    .line 5757
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 5758
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 7508
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 7509
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7510
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 7511
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 7521
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    .line 7522
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    .line 7523
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 7526
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 7527
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7528
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 7529
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 7531
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    .line 7532
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x6f

    .line 7301
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 7302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissMenu(immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7304
    :cond_0
    if-eqz p1, :cond_1

    .line 7305
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    .line 7311
    :goto_0
    return-void

    .line 7307
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7308
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 3562
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3587
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3578
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 3579
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 3562
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endInVTCallScreenSession()V
    .locals 1

    .prologue
    .line 2918
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2919
    const-string v0, "endInVTCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2920
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 2921
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2922
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 2924
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 2899
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2900
    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2901
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 2902
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    if-eqz v0, :cond_1

    .line 2903
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    .line 2909
    :goto_0
    return-void

    .line 2906
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->unregisterForPhoneStates()V

    .line 2907
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getNetworkType()V
    .locals 2

    .prologue
    .line 4106
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 4107
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_0

    .line 4152
    const-string v1, "GetNetworkType :NETWORK_TYPE_UNKNOWN"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4156
    :goto_0
    return-void

    .line 4109
    :pswitch_0
    const-string v1, "GetNetworkType :NETWORK_TYPE_GPRS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4113
    :pswitch_1
    const-string v1, "GetNetworkType :NETWORK_TYPE_EDGE"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4117
    :pswitch_2
    const-string v1, "GetNetworkType :NETWORK_TYPE_UMTS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4121
    :pswitch_3
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSDPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4125
    :pswitch_4
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSUPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4129
    :pswitch_5
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4133
    :pswitch_6
    const-string v1, "GetNetworkType :RADIO_TECHNOLOGY_IS95A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4136
    :pswitch_7
    const-string v1, "GetNetworkType :NETWORK_TYPE_CDMA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4140
    :pswitch_8
    const-string v1, "GetNetworkType :NETWORK_TYPE_1xRTT"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4144
    :pswitch_9
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_0"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4148
    :pswitch_a
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter

    .prologue
    .line 6166
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6169
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 6226
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6244
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    .line 6245
    return-void

    .line 6179
    :sswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 6180
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 6183
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 6195
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    .line 6197
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangup()V

    goto :goto_0

    .line 6200
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 6203
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 6206
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto :goto_0

    .line 6209
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 6212
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 6216
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 6217
    const-string v0, "Merged"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->startToast(Ljava/lang/String;)V

    goto :goto_0

    .line 6169
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090017 -> :sswitch_1
        0x7f090018 -> :sswitch_2
        0x7f0900ea -> :sswitch_0
        0x7f0900ef -> :sswitch_8
        0x7f0900f2 -> :sswitch_4
        0x7f0900f3 -> :sswitch_3
        0x7f0900f4 -> :sswitch_3
        0x7f0900f6 -> :sswitch_7
        0x7f0900f7 -> :sswitch_6
        0x7f0900f8 -> :sswitch_5
        0x7f09011f -> :sswitch_0
        0x7f090120 -> :sswitch_9
    .end sparse-switch
.end method

.method internalAnswerCall()V
    .locals 9

    .prologue
    .line 6655
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 6657
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_1

    .line 6658
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 6659
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 6660
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 6661
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 6662
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    .line 6663
    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6666
    :cond_0
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 6708
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-void

    .line 6669
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    .line 6682
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 6683
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 6685
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 6686
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_3

    .line 6687
    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6691
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    .line 6702
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->startFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 6692
    :cond_4
    if-eqz v0, :cond_5

    .line 6693
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_1

    .line 6695
    :cond_5
    sget-boolean v6, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v6, :cond_6

    .line 6696
    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6697
    :cond_6
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 6704
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method internalHangup()V
    .locals 1

    .prologue
    .line 6886
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6887
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6888
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 6875
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6876
    :cond_0
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 6879
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 6880
    return-void
.end method

.method internalPhoneHangup()V
    .locals 1

    .prologue
    .line 6904
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 6905
    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6906
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 6907
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6908
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3096
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3097
    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 3203
    :cond_1
    :goto_0
    return-object v0

    .line 3102
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3103
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    .line 3104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3111
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 3115
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 3117
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 3124
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 3125
    :cond_4
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3126
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    .line 3127
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 3128
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 3129
    :cond_5
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3139
    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 3160
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 3161
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v2, :cond_1

    .line 3164
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_0

    .line 3169
    :cond_7
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3177
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_9

    .line 3180
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 3181
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 3183
    :cond_9
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3184
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3186
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_a

    .line 3187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3195
    :cond_a
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 3196
    :cond_b
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3197
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 3199
    :cond_c
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 7410
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_2

    .line 7411
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    .line 7412
    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7413
    :cond_0
    const/4 v0, 0x0

    .line 7418
    :cond_1
    :goto_0
    return v0

    .line 7415
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 7416
    .local v0, isAudioOn:Z
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    .line 7417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7432
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7433
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    .line 7434
    const-string v1, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7461
    :cond_0
    :goto_0
    return v0

    .line 7442
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v2, :cond_4

    .line 7443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long/2addr v2, v4

    .line 7445
    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 7446
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    .line 7447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec ago)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 7451
    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_3

    .line 7452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " msec ago)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7454
    :cond_3
    iput-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    move v0, v1

    .line 7455
    goto :goto_0

    .line 7459
    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    .line 7460
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    .line 7461
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 7360
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    .line 7361
    const-string v1, "isBluetoothAvailable()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7362
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_2

    .line 7364
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    .line 7365
    const-string v1, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7402
    :cond_1
    :goto_0
    return v0

    .line 7385
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_6

    .line 7387
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 7389
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 7390
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 7391
    const/4 v1, 0x1

    .line 7393
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7395
    :cond_3
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7396
    :cond_4
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isConnected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    move v0, v1

    .line 7400
    :cond_6
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    .line 7401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2927
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3351
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3352
    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3354
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3355
    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3358
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 3359
    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 3360
    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 3361
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3362
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3368
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3370
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3371
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3373
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3374
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 3375
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    .line 3376
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 3421
    :cond_2
    :goto_0
    return-void

    .line 3379
    :cond_3
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 3386
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3391
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3407
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_5

    .line 3409
    const-string v0, "BACK key: InVTCallScreenMode.MANAGE_CONFERENCE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3410
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_0

    .line 3415
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 3420
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 5769
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 5770
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    .line 5771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5775
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 6050
    :cond_1
    :goto_0
    return-void

    .line 5799
    :sswitch_0
    const-string v0, "InVTCallScreen"

    const-string v1, "on Start Recording Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5800
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 5801
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto :goto_0

    .line 5805
    :sswitch_1
    const-string v0, "InVTCallScreen"

    const-string v1, "on Stop Recording Far End Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5806
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 5807
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_2

    .line 5808
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto :goto_0

    .line 5809
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_1

    .line 5810
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_0

    .line 5815
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_3

    .line 5816
    const-string v0, "InVTCallScreen"

    const-string v1, "on Stop Recording Near End Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_0

    .line 5820
    :cond_3
    const-string v0, "InVTCallScreen"

    const-string v1, "on Stop Recording Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5821
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_4

    .line 5822
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 5824
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_1

    .line 5825
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto :goto_0

    .line 5830
    :sswitch_3
    const-string v0, "InVTCallScreen"

    const-string v1, "on Cancel Recording Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5831
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_5

    .line 5832
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto :goto_0

    .line 5835
    :cond_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_6

    .line 5836
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    .line 5838
    :cond_6
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_1

    .line 5839
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingNearEndView()V

    goto :goto_0

    .line 5844
    :sswitch_4
    const-string v0, "InVTCallScreen"

    const-string v1, "on Capture Clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5845
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 5846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_farend_view(J)V

    goto :goto_0

    .line 5850
    :sswitch_5
    const-string v0, "InVTCallScreen"

    const-string v1, "Hide Dialer Pad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5852
    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5853
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_7

    .line 5854
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5855
    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 5856
    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 5857
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5858
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5864
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 5866
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 5869
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_8

    .line 5870
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 5876
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5877
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 5878
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    .line 5879
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v5}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    goto/16 :goto_0

    .line 5873
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 5883
    :sswitch_6
    const-string v0, "InVTCallScreen"

    const-string v1, "In Voice call  button click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5884
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnClick:: Phone number to call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5885
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5886
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5887
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5892
    :sswitch_7
    const-string v0, "InVTCallScreen"

    const-string v1, "In Video call  button click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnClick:: Phone number to call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5896
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5897
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.videocall"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5899
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5900
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5906
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5907
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5909
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5927
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5930
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5932
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5937
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5938
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5939
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5940
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5942
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5943
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5948
    :sswitch_b
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_b

    .line 5949
    const-string v0, "onClick: Endcall..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5952
    :cond_b
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5953
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 5956
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    .line 5957
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 5959
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto/16 :goto_0

    .line 5962
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 5967
    :sswitch_c
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 5968
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5969
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    goto/16 :goto_0

    .line 5975
    :sswitch_d
    const-string v0, "InVTCallScreen"

    const-string v1, "In mute click condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5976
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto/16 :goto_0

    .line 5980
    :sswitch_e
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_d

    .line 5981
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 5984
    :cond_d
    const-string v0, "InVTCallScreen"

    const-string v1, "Show me Text is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5987
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v4}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5988
    :cond_e
    const v0, 0x7f0e0252

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5992
    :cond_f
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 5993
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isCameraStarted:Z

    .line 5994
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 5995
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 5996
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 5997
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 5998
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 5999
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 6000
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 6001
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_0

    .line 6030
    :sswitch_f
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_1

    .line 6031
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 6044
    :sswitch_10
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6045
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 5775
    :sswitch_data_0
    .sparse-switch
        0x7f090094 -> :sswitch_9
        0x7f090095 -> :sswitch_a
        0x7f090096 -> :sswitch_6
        0x7f090097 -> :sswitch_7
        0x7f090098 -> :sswitch_8
        0x7f0900c6 -> :sswitch_c
        0x7f0900c7 -> :sswitch_2
        0x7f0900c9 -> :sswitch_d
        0x7f0900ca -> :sswitch_b
        0x7f0900cc -> :sswitch_f
        0x7f0900ce -> :sswitch_10
        0x7f0900d3 -> :sswitch_5
        0x7f0900d6 -> :sswitch_3
        0x7f0900e3 -> :sswitch_e
        0x7f090177 -> :sswitch_1
        0x7f090178 -> :sswitch_0
        0x7f090179 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 11128
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 11129
    const-string v0, "InVTCallScreen"

    const-string v1, "onConfigurationChanged event get called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11130
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 11139
    :goto_0
    return-void

    .line 11132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11133
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 11135
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 11136
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->stopCamera()V

    .line 11138
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2003
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2007
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkWXGADevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    .line 2009
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 2011
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2016
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    .line 2018
    if-nez p1, :cond_3

    .line 2019
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2021
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2022
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2024
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->batteryCheck()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2027
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Low battery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2028
    :cond_1
    const v0, 0x7f0e0353

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 2033
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2035
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 2036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2169
    :cond_2
    :goto_0
    return-void

    .line 2042
    :catch_0
    move-exception v0

    .line 2043
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2050
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 2052
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2053
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    .line 2055
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->createDefaultImages()V

    .line 2056
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2057
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 2058
    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    .line 2060
    const/high16 v0, 0x8

    .line 2061
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_4

    .line 2067
    const/high16 v0, 0x48

    .line 2069
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 2072
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    .line 2073
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 2075
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerBatteryListener()V

    .line 2076
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerDevicePolicyManagerReceiver()V

    .line 2077
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerSDCardListener()V

    .line 2078
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 2079
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mBluetoothHandsfree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2083
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2087
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2089
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initvtstack()V

    .line 2107
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerForPhoneStates()V

    .line 2113
    if-nez p1, :cond_a

    .line 2114
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_6

    .line 2115
    const-string v0, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2120
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2121
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): mInVTCallInitialStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2124
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_8

    .line 2125
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :goto_1
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    .line 2166
    :goto_2
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 2167
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    .line 2168
    const-string v0, "onCreate(): exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2130
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): Bluetooth:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2132
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_9

    .line 2136
    const-string v0, "InVTCallScreen"

    const-string v1, "onCreate: BluetoothAdapter.getDefaultAdapter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2138
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_1

    .line 2142
    :cond_9
    const-string v0, "InVTCallScreen"

    const-string v1, "onCreate: mBluetoothHandsfree == null || mAdapter != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2148
    :cond_a
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2149
    const-string v0, "InVTCallScreen"

    const-string v1, "Else condition in icicle == null "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 8697
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8727
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter

    .prologue
    const v4, 0x7f0e002f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const v6, 0x1080027

    const/4 v3, 0x1

    .line 9420
    const-string v0, "InVTCallScreen"

    const-string v2, "In onCreateDialog"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9421
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 9422
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9424
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 9891
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 9426
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f02037d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e033c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$34;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$34;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$33;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$33;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9450
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9484
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$35;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$35;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9497
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    .line 9499
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto :goto_0

    .line 9505
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 9506
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 9508
    aget-object v2, v0, v7

    aput-object v2, v1, v7

    .line 9509
    aget-object v0, v0, v3

    aput-object v0, v1, v3

    .line 9512
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/InVTCallScreen$37;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$37;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$36;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$36;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9535
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9536
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    const v1, 0x7f0e0311

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 9542
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$38;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$38;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9555
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    .line 9557
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 9560
    :pswitch_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9566
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0335

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0333

    new-instance v2, Lcom/android/phone/InVTCallScreen$40;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$40;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0334

    new-instance v2, Lcom/android/phone/InVTCallScreen$39;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$39;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 9590
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0352

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e034e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0333

    new-instance v2, Lcom/android/phone/InVTCallScreen$42;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$42;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ef

    new-instance v2, Lcom/android/phone/InVTCallScreen$41;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$41;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 9648
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 9654
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 9655
    :try_start_1
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempPhoneNumber = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v2

    .line 9660
    :goto_1
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 9677
    :goto_2
    if-nez v2, :cond_5

    .line 9678
    const-string v0, "InVTCallScreen"

    const-string v2, "Dialog not created due to number is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9679
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, v1

    .line 9681
    goto/16 :goto_0

    .line 9656
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 9657
    :goto_3
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 9663
    :cond_3
    if-nez v3, :cond_7

    .line 9664
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 9667
    :goto_4
    if-nez v0, :cond_4

    .line 9668
    const-string v0, "InVTCallScreen"

    const-string v2, "Dialog not created due to getAddress is null and tempPhoneNumber is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9669
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, v1

    .line 9671
    goto/16 :goto_0

    .line 9673
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 9689
    :cond_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    if-eqz v0, :cond_6

    .line 9690
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 9692
    new-instance v0, Lcom/android/phone/InVTCallScreen$43;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$43;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9699
    new-instance v1, Lcom/android/phone/InVTCallScreen$44;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$44;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9735
    :goto_5
    new-instance v3, Lcom/android/phone/InVTCallScreen$47;

    invoke-direct {v3, p0, v2}, Lcom/android/phone/InVTCallScreen$47;-><init>(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 9752
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0e0333

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0334

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    .line 9757
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9759
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialogVoiceCall:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 9708
    :cond_6
    new-instance v0, Lcom/android/phone/InVTCallScreen$45;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$45;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9724
    new-instance v1, Lcom/android/phone/InVTCallScreen$46;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$46;-><init>(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_5

    .line 9777
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e034b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e003d

    new-instance v2, Lcom/android/phone/InVTCallScreen$48;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$48;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 9789
    :pswitch_7
    const-string v0, "InVTCallScreen"

    const-string v1, "In OUTGOING_NEAR_DIALOG_LIST condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9790
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$49;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$49;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9804
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9810
    new-instance v1, Lcom/android/phone/InVTCallScreen$50;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$50;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 9821
    :pswitch_8
    const v0, 0x7f04000a

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 9822
    const v0, 0x1020001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 9823
    new-instance v2, Lcom/android/phone/InVTCallScreen$51;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InVTCallScreen$51;-><init>(Lcom/android/phone/InVTCallScreen;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9829
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9830
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 9832
    const v1, 0x7f0e0315

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e003d

    new-instance v3, Lcom/android/phone/InVTCallScreen$52;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$52;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9838
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9839
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$53;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$53;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9844
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 9848
    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e035b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e035a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e003d

    new-instance v2, Lcom/android/phone/InVTCallScreen$55;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$55;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$54;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$54;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9883
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$56;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$56;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9888
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 9656
    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_7
    move-object v0, v3

    goto/16 :goto_4

    .line 9424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10082
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 10083
    const-string v0, "InVTCallScreen"

    const-string v1, "In onCreateOptionsMenu method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10084
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of mMenuSelected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10089
    const/16 v0, 0x31

    const v1, 0x7f0e030b

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    .line 10091
    const/16 v0, 0x32

    const v1, 0x7f0e0315

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    .line 10093
    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0e0316

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    .line 10097
    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0e0317

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    .line 10099
    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0e0318

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    .line 10106
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0e030d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    .line 10124
    const/16 v0, 0x41

    const v1, 0x7f0e0328

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCapture:Landroid/view/MenuItem;

    .line 10130
    return v4
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2806
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 2807
    const-string v0, "onDestroy()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2808
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2809
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v0, v4, :cond_2

    .line 2878
    :cond_1
    :goto_0
    return-void

    .line 2812
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 2813
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 2823
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2826
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2827
    :cond_4
    const-string v1, "InVTCallScreen"

    const-string v2, "OnDestroy(): app.setInVTCallScreenInstance(null)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    .line 2844
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->unregisterForPhoneStates()V

    .line 2845
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2846
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2847
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSDCardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2849
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2851
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2855
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_6

    .line 2858
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2859
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2864
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 2867
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 2868
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 2870
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_7

    .line 2871
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-ne v0, v4, :cond_1

    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_1

    .line 2872
    invoke-static {p0, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 2875
    :cond_7
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    invoke-static {p0, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0
.end method

.method onDialerClose()V
    .locals 2

    .prologue
    .line 7109
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    .line 7110
    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7116
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7138
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 7139
    return-void
.end method

.method onDialerOpen()V
    .locals 1

    .prologue
    .line 7072
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 7073
    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7091
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 7101
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0201be

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11408
    if-eqz p2, :cond_0

    .line 11409
    check-cast p2, Lcom/android/internal/telephony/Call;

    .line 11410
    const/4 v1, 0x0

    .line 11413
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 11414
    if-eqz v0, :cond_0

    .line 11415
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 11416
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 11417
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 11422
    :goto_0
    if-eqz v0, :cond_0

    .line 11423
    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 11424
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v5, :cond_2

    .line 11425
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11487
    :cond_0
    :goto_1
    return-void

    .line 11418
    :cond_1
    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_7

    .line 11419
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 11445
    :cond_2
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v4, :cond_3

    .line 11449
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 11451
    :cond_3
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v3, :cond_0

    .line 11452
    const-string v1, "InVTCallScreen"

    const-string v2, "Incoming Contact Image is Avialable in contacts "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11455
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 11459
    :cond_4
    const-string v0, "InVTCallScreen"

    const-string v1, "Contact Image is Not Avialable in contacts "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11465
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v5, :cond_5

    .line 11466
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11474
    :cond_5
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v4, :cond_6

    .line 11475
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 11477
    :cond_6
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v3, :cond_0

    .line 11478
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11480
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 3606
    sparse-switch p1, :sswitch_data_0

    .line 3750
    :cond_0
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3754
    :cond_1
    :goto_0
    :sswitch_1
    return v1

    .line 3608
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    move-result v0

    .line 3609
    if-nez v0, :cond_1

    .line 3610
    const-string v0, "InVTCallScreen"

    const-string v2, "InVTCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3632
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_0

    .line 3643
    const-string v0, "InVTCallScreen"

    const-string v2, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3652
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3656
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    .line 3657
    const-string v2, "VOLUME key: silence ringer"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3658
    :cond_2
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto :goto_0

    .line 3700
    :sswitch_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3706
    :sswitch_5
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 3707
    const-string v0, "----------- InVTCallScreen View dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3709
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3710
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3711
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    goto :goto_0

    .line 3716
    :sswitch_6
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 3717
    const-string v0, "----------- InVTCallScreen call state dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3718
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 3719
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    goto :goto_0

    .line 3724
    :sswitch_7
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 3726
    const-string v0, "------------ Temp testing -----------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3733
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3735
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    goto/16 :goto_0

    .line 3743
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3744
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/InVTCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 3754
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 3606
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x5 -> :sswitch_2
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x4c -> :sswitch_5
        0x52 -> :sswitch_0
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3600
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 7892
    const-string v0, "InVTCallScreen"

    const-string v1, "Inside onLongClick condition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7893
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 7894
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of widgetId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7895
    packed-switch v0, :pswitch_data_0

    .line 7930
    :goto_0
    return v4

    .line 7909
    :pswitch_0
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7910
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 7911
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto :goto_0

    .line 7913
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0

    .line 7895
    nop

    :pswitch_data_0
    .packed-switch 0x7f0900ca
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 3037
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3058
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 3068
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 3073
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_1

    .line 3074
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :goto_0
    return-void

    .line 3079
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent(): Bluetooth:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3080
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    .line 3084
    const-string v0, "InVTCallScreen"

    const-string v1, "onNewIntent: BluetoothAdapter.getDefaultAdapter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 3086
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    .line 3090
    :cond_2
    const-string v0, "InVTCallScreen"

    const-string v1, "onNewIntent: mBluetoothHandsfree == null || mAdapter != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10354
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 10555
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 10356
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 10359
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 10369
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto :goto_0

    .line 10383
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10384
    :cond_1
    const v0, 0x7f0e0252

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 10390
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 10391
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 10392
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 10393
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 10394
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 10395
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 10396
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto :goto_0

    .line 10402
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_3

    .line 10403
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 10411
    :goto_1
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    .line 10412
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0

    .line 10405
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_4

    .line 10406
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 10408
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 10415
    :pswitch_6
    const-string v0, "InVTCallScreen"

    const-string v1, "launchin Zoom Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10416
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 10417
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 10421
    :pswitch_7
    const-string v0, "InVTCallScreen"

    const-string v1, "launchin Brightness Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10422
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 10423
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto/16 :goto_0

    .line 10426
    :pswitch_8
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 10427
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 10428
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10429
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v6, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 10432
    :pswitch_9
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 10433
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 10434
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10435
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v6, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 10438
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    .line 10439
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10440
    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10448
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 10450
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 10451
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 10453
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10454
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v5}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 10455
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 10456
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    .line 10458
    :cond_5
    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already Not open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10459
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_6

    .line 10460
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 10461
    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 10462
    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 10463
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10464
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10466
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 10477
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 10479
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 10481
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10482
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 10483
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->openDialer(Z)V

    .line 10484
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    .line 10470
    :cond_6
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_7

    .line 10471
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 10474
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 10492
    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto/16 :goto_0

    .line 10500
    :pswitch_c
    const-string v0, "InVTCallScreen"

    const-string v1, "START_RECORDING_FAR_END is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10501
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10502
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10503
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 10506
    :pswitch_d
    const-string v0, "InVTCallScreen"

    const-string v1, "STOP_RECORDING_FAR_END is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10507
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10509
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10510
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_0

    .line 10514
    :pswitch_e
    const-string v0, "InVTCallScreen"

    const-string v1, "Cancel Recording is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10516
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10517
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10518
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto/16 :goto_0

    .line 10521
    :pswitch_f
    const-string v0, "InVTCallScreen"

    const-string v1, "START_RECORDING_NEAR_END is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10522
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10523
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10524
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 10527
    :pswitch_10
    const-string v0, "InVTCallScreen"

    const-string v1, "STOP_RECORDING_NEAR_END is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10528
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10530
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10531
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView(Z)V

    goto/16 :goto_0

    .line 10534
    :pswitch_11
    const-string v0, "InVTCallScreen"

    const-string v1, "Cancel Recording is being clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10536
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 10537
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 10538
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingNearEndView()V

    goto/16 :goto_0

    .line 10354
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_2
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 7319
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 7320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelClosed(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7330
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 7331
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2646
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    .line 2647
    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2648
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2650
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v2, v4, :cond_2

    .line 2772
    :cond_1
    :goto_0
    return-void

    .line 2653
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 2663
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2673
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 2706
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_4

    .line 2709
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    .line 2710
    const-string v2, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2711
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 2722
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    .line 2729
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 2730
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v2, v4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 2742
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/InVTCallScreen$8;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InVTCallScreen$8;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2750
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_5

    .line 2751
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 2753
    .local v1, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->showCallView()V

    .line 2769
    .end local v1           #statusBar:Landroid/app/StatusBarManager;
    :cond_5
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2770
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x31

    const v6, 0x7f0e032a

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10134
    const-string v0, "InVTCallScreen"

    const-string v1, "In onPrepareOptionsMenu "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10136
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    if-eqz v0, :cond_c

    .line 10137
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    packed-switch v0, :pswitch_data_0

    .line 10313
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 10140
    :pswitch_0
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 10142
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 10148
    const/16 v0, 0x35

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10149
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10151
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0e030d

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    .line 10152
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const v1, 0x7f0202e0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10162
    :goto_1
    const/16 v0, 0x32

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10163
    const/16 v0, 0x32

    const v1, 0x7f0e0315

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    .line 10164
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    const v1, 0x7f0202e8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10174
    const/16 v0, 0x33

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10175
    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0e0316

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    .line 10176
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    .line 10177
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10178
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10183
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    const v1, 0x7f0202ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10185
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    if-eqz v0, :cond_5

    .line 10186
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10190
    :goto_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_6

    .line 10191
    const-string v0, "InVTCallScreen"

    const-string v1, "Adding HIDE Me to Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10192
    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10193
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 10195
    const v0, 0x7f0e030b

    invoke-interface {p1, v3, v7, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    .line 10196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    const v1, 0x7f0202d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 10198
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10199
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10211
    :cond_2
    :goto_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_7

    .line 10212
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 10216
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10217
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10218
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10219
    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0e0318

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    .line 10221
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    const v1, 0x7f0202e5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10156
    :cond_3
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0e030e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    .line 10157
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const v1, 0x7f0202e1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 10180
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 10188
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 10201
    :cond_6
    const-string v0, "InVTCallScreen"

    const-string v1, "Adding SHOW Me to Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10202
    invoke-interface {p1, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 10203
    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10205
    const/16 v0, 0x3c

    const v1, 0x7f0e030c

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mShowMe:Landroid/view/MenuItem;

    .line 10206
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mShowMe:Landroid/view/MenuItem;

    const v1, 0x7f0202dd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 10214
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 10223
    :cond_8
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10224
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10225
    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0e0317

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    .line 10227
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    const v1, 0x7f0202e4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10247
    :pswitch_1
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 10249
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 10250
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In onPrepareOptionsMenu MENUREC_GROUP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10253
    const/16 v0, 0x43

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10254
    const/16 v0, 0x45

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10255
    const/16 v0, 0x44

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10256
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10257
    const/16 v0, 0x40

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 10258
    const/16 v0, 0x3f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10264
    :goto_6
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_a

    .line 10268
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_9

    .line 10269
    const/16 v0, 0x40

    const v1, 0x7f0e0327

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    .line 10271
    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10259
    :catch_0
    move-exception v0

    .line 10260
    const-string v0, "InVTCallScreen"

    const-string v1, "In onPrepareOptionsMenu error in removing record options"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 10275
    :cond_9
    const/16 v0, 0x3e

    const v1, 0x7f0e0325

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    .line 10277
    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10282
    :cond_a
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_b

    .line 10283
    const/16 v0, 0x45

    const v1, 0x7f0e0327

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    .line 10285
    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10289
    :cond_b
    const/16 v0, 0x43

    const v1, 0x7f0e0325

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    .line 10291
    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 10310
    :cond_c
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 10311
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_0

    .line 10137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onQueryComplete(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 11727
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete : additionalCallerInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 11728
    :cond_0
    const-string v0, "display_sns_info"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 11729
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 11730
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11731
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11732
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11733
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11742
    :cond_1
    :goto_0
    const-string v0, "display_birthday_info"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 11743
    if-eqz p1, :cond_4

    iget-wide v0, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 11744
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v5

    .line 11745
    new-array v1, v6, [Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 11748
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    long-to-int v3, v3

    aget-object v2, v2, v3

    .line 11750
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11751
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11752
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11760
    :cond_2
    :goto_1
    return-void

    .line 11735
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11736
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11737
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11738
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11754
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11755
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11756
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 11757
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/16 v7, 0x70

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2424
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    .line 2425
    const-string v4, "onResume()..."

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2426
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2428
    iget-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v4, v5, :cond_2

    .line 2640
    :cond_1
    :goto_0
    return-void

    .line 2432
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 2433
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 2436
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2447
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    .line 2449
    .local v1, bluetoothConnected:Z
    sget-boolean v4, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v4, :cond_b

    .line 2450
    const-string v4, "onResume(): Dock Station is connected, UI set to Landscape "

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2451
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    .line 2459
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 2461
    if-eqz v1, :cond_c

    .line 2462
    const-string v4, "onResume(): Bluetooth is connected "

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2463
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    .line 2485
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v4, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v4, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 2487
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_3

    .line 2488
    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 2504
    :cond_3
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_4

    .line 2505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: initial status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2506
    :cond_4
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v5, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v4, v5, :cond_d

    .line 2507
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_5

    .line 2508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onResume: failure during startup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2514
    :cond_5
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V

    .line 2520
    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2533
    :goto_3
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v5, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v5, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v5, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v4, v5, :cond_6

    .line 2537
    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2544
    :cond_6
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2546
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v2

    .line 2547
    .local v2, status:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v2, v4, :cond_7

    .line 2548
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v4, :cond_7

    .line 2549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- syncWithPhoneState failed! status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2575
    :cond_7
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_e

    .line 2591
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v4, :cond_8

    .line 2592
    const-string v4, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2593
    :cond_8
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2594
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2624
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-class v5, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 2626
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mRP:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4, v6}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2627
    :cond_9
    const-string v4, "Camera disabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2631
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 2633
    :cond_a
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v4, v4, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v4, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 2634
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_1

    .line 2635
    const-string v4, "statusbar"

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 2637
    .local v3, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->hideCallView()V

    goto/16 :goto_0

    .line 2453
    .end local v2           #status:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .end local v3           #statusBar:Landroid/app/StatusBarManager;
    :cond_b
    const-string v4, "onResume(): Dock Station is connected, UI set to Portrait"

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 2465
    :cond_c
    const-string v4, "onResume(): Bluetooth is Not connected "

    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2467
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_2

    .line 2522
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto/16 :goto_3

    .line 2606
    .restart local v2       #status:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    :cond_e
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_4
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2775
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    .line 2776
    const-string v2, "onStop()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2777
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2779
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v2, v4, :cond_2

    .line 2800
    :cond_1
    :goto_0
    return-void

    .line 2783
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 2784
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    .line 2785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2787
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_4

    .line 2788
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v2, :cond_4

    .line 2789
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 2793
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 2794
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2795
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v2, :cond_5

    .line 2796
    const-string v2, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2797
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3762
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 3763
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3764
    const-string v0, "onSuppServiceFailed: while not in foreground, so return without doing anything."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3815
    :cond_0
    :goto_0
    return-void

    .line 3767
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3768
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    .line 3769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3772
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3776
    sget-object v1, Lcom/android/phone/InVTCallScreen$61;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3792
    const v0, 0x7f0e01ac

    .line 3800
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    .line 3801
    sget-boolean v1, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    .line 3802
    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3803
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3806
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3809
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e003d

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3812
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3814
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 3780
    :pswitch_0
    const v0, 0x7f0e01b1

    .line 3781
    goto :goto_1

    .line 3785
    :pswitch_1
    const v0, 0x7f0e01b2

    .line 3786
    goto :goto_1

    .line 3776
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 4
    .parameter "timeElapsed"

    .prologue
    const-wide/16 v2, 0x0

    .line 2247
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2250
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->playMinuteMinder()V

    .line 2252
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->updateElapsedTimeWidget(J)V

    .line 2253
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 7593
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 3337
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isWXGADevice:Z

    if-eqz v0, :cond_1

    .line 3338
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 3339
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3340
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 3341
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3344
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 3345
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3547
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 3549
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 3550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3556
    :cond_0
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 7469
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    .line 7470
    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7474
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7475
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7476
    return-void
.end method

.method requestUpdateDockUi()V
    .locals 1

    .prologue
    .line 7210
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 7211
    const-string v0, "requestUpdateDockUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7218
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v0, :cond_1

    .line 7220
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    .line 7227
    :goto_0
    return-void

    .line 7223
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method requestUpdateTouchUi()V
    .locals 2

    .prologue
    const/16 v1, 0x7a

    .line 7236
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 7237
    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7239
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7240
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7241
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2358
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 2359
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 2360
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 2361
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x40

    .line 2931
    if-eqz p1, :cond_0

    .line 2932
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2936
    :goto_0
    return-void

    .line 2934
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateRecordTimeUIFarEnd(J)V
    .locals 3
    .parameter "recordTimeForNearendOrFarEnd"

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2326
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2328
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRecordTimeUINearEnd(J)V
    .locals 3
    .parameter "recordTimeForNearendOrFarEnd"

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2338
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2344
    :cond_0
    :goto_0
    return-void

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
