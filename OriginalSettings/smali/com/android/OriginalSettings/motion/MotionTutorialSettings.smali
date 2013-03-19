.class public Lcom/android/settings/motion/MotionTutorialSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionTutorialSettings.java"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCurrentDB:Ljava/lang/String;

.field private mDoubleTap:Landroid/preference/Preference;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGlanceView:Landroid/preference/Preference;

.field private mGlanceViewTutorialAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mIsQuickAnimation:Z

.field private mIsTablet:Z

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/Preference;

.field private mPalmTouch:Landroid/preference/Preference;

.field private mPan:Landroid/preference/Preference;

.field private mPanToBrowseImage:Landroid/preference/Preference;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUp:Landroid/preference/Preference;

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOut:Landroid/preference/Preference;

.field private mPickUpToCallOutAnimationImage:[I

.field private mShake:Landroid/preference/Preference;

.field private mShakeToUpdateAnimationImage:[I

.field private mSupportBrowser:Z

.field private mSurfacePalmSwipeAnimationImage:[I

.field private mSurfacePalmTouchAnimationImage:[I

.field private mSurfaceTapAndTwistAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTapAndTwist:Landroid/preference/Preference;

.field private mTilt:Landroid/preference/Preference;

.field private mTiltToScrollList:Landroid/preference/Preference;

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTurnOver:Landroid/preference/Preference;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorialContent:Ljava/lang/String;

.field private mTutorialTitle:Ljava/lang/String;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 88
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 89
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 90
    iput v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 91
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 92
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    .line 98
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    .line 99
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    .line 100
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    .line 101
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    .line 103
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUnlockCameraShortCut:[I

    .line 107
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    .line 111
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f02048b

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    .line 120
    new-instance v0, Lcom/android/settings/motion/MotionTutorialSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/MotionTutorialSettings$1;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 96
    :array_0
    .array-data 0x4
        0x8bt 0x3t 0x2t 0x7ft
        0x8ct 0x3t 0x2t 0x7ft
        0x8dt 0x3t 0x2t 0x7ft
        0x8et 0x3t 0x2t 0x7ft
        0x8ft 0x3t 0x2t 0x7ft
        0x90t 0x3t 0x2t 0x7ft
    .end array-data

    .line 97
    :array_1
    .array-data 0x4
        0x73t 0x2t 0x2t 0x7ft
        0x74t 0x2t 0x2t 0x7ft
        0x75t 0x2t 0x2t 0x7ft
    .end array-data

    .line 98
    :array_2
    .array-data 0x4
        0x90t 0x2t 0x2t 0x7ft
        0x91t 0x2t 0x2t 0x7ft
        0x92t 0x2t 0x2t 0x7ft
        0x93t 0x2t 0x2t 0x7ft
        0x94t 0x2t 0x2t 0x7ft
    .end array-data

    .line 99
    :array_3
    .array-data 0x4
        0x6ft 0x2t 0x2t 0x7ft
        0x70t 0x2t 0x2t 0x7ft
        0x71t 0x2t 0x2t 0x7ft
        0x72t 0x2t 0x2t 0x7ft
    .end array-data

    .line 100
    :array_4
    .array-data 0x4
        0x60t 0x2t 0x2t 0x7ft
        0x61t 0x2t 0x2t 0x7ft
        0x62t 0x2t 0x2t 0x7ft
        0x63t 0x2t 0x2t 0x7ft
        0x64t 0x2t 0x2t 0x7ft
        0x65t 0x2t 0x2t 0x7ft
        0x66t 0x2t 0x2t 0x7ft
    .end array-data

    .line 101
    :array_5
    .array-data 0x4
        0x7et 0x2t 0x2t 0x7ft
        0x7ft 0x2t 0x2t 0x7ft
        0x7et 0x2t 0x2t 0x7ft
        0x7ft 0x2t 0x2t 0x7ft
    .end array-data

    .line 102
    :array_6
    .array-data 0x4
        0x68t 0x2t 0x2t 0x7ft
        0x69t 0x2t 0x2t 0x7ft
        0x68t 0x2t 0x2t 0x7ft
        0x69t 0x2t 0x2t 0x7ft
    .end array-data

    .line 103
    :array_7
    .array-data 0x4
        0x79t 0x2t 0x2t 0x7ft
        0x7at 0x2t 0x2t 0x7ft
        0x7bt 0x2t 0x2t 0x7ft
    .end array-data

    .line 104
    :array_8
    .array-data 0x4
        0x9dt 0x2t 0x2t 0x7ft
        0x9et 0x2t 0x2t 0x7ft
        0x9ft 0x2t 0x2t 0x7ft
    .end array-data

    .line 105
    :array_9
    .array-data 0x4
        0x6ct 0x2t 0x2t 0x7ft
        0x6dt 0x2t 0x2t 0x7ft
        0x6et 0x2t 0x2t 0x7ft
    .end array-data

    .line 106
    :array_a
    .array-data 0x4
        0x7ct 0x2t 0x2t 0x7ft
        0x7dt 0x2t 0x2t 0x7ft
    .end array-data

    .line 107
    :array_b
    .array-data 0x4
        0x8bt 0x2t 0x2t 0x7ft
        0x8ct 0x2t 0x2t 0x7ft
        0x8dt 0x2t 0x2t 0x7ft
        0x8et 0x2t 0x2t 0x7ft
    .end array-data

    .line 108
    :array_c
    .array-data 0x4
        0x83t 0x2t 0x2t 0x7ft
        0x84t 0x2t 0x2t 0x7ft
        0x85t 0x2t 0x2t 0x7ft
        0x86t 0x2t 0x2t 0x7ft
        0x87t 0x2t 0x2t 0x7ft
        0x88t 0x2t 0x2t 0x7ft
        0x89t 0x2t 0x2t 0x7ft
        0x8at 0x2t 0x2t 0x7ft
    .end array-data

    .line 111
    :array_d
    .array-data 0x4
        0xd0t 0x2t 0x2t 0x7ft
        0xd1t 0x2t 0x2t 0x7ft
        0xd2t 0x2t 0x2t 0x7ft
        0xd3t 0x2t 0x2t 0x7ft
        0xd4t 0x2t 0x2t 0x7ft
    .end array-data

    .line 112
    :array_e
    .array-data 0x4
        0xd5t 0x2t 0x2t 0x7ft
        0xd6t 0x2t 0x2t 0x7ft
        0xd7t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion/MotionTutorialSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionTutorialSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a95

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a94

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a93

    new-instance v3, Lcom/android/settings/motion/MotionTutorialSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/MotionTutorialSettings$2;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09012d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 370
    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$3;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 376
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 415
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a91

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a90

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e3

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$7;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a92

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$6;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 430
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 572
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private startTryActually()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/16 v3, 0xa

    .line 434
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v1, "MotionTest"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 442
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 445
    :cond_2
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_panning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 450
    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pan_to_browse_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v1, "MotionTest"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 458
    :cond_5
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 467
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 469
    :cond_6
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 477
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 478
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 480
    :cond_7
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_double_tap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 481
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 482
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 483
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 485
    :cond_8
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 488
    :cond_9
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pick_up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 490
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 492
    :cond_a
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pick_up_to_call_out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 493
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 494
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 496
    :cond_b
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 497
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 498
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_c

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 499
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showUseRingDialog()V

    goto/16 :goto_0

    .line 501
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually(Z)V

    goto/16 :goto_0

    .line 503
    :cond_d
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "air_motion_glance_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 504
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 505
    const-string v1, "android.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 507
    const-string v0, "MotionTutorialSettings"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 508
    :cond_e
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_palm_swipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 511
    const-string v1, "com.android.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 513
    const-string v0, "MotionTutorialSettings"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 514
    :cond_f
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_palm_touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 517
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 519
    const-string v0, "MotionTutorialSettings"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 520
    :cond_10
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_tap_and_twist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private startTryActually(Z)V
    .locals 3
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 528
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivity(Landroid/content/Intent;)V

    .line 536
    :cond_0
    return-void

    .line 532
    :cond_1
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    .line 539
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 546
    :cond_2
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 548
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    .line 550
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 553
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    if-eqz v0, :cond_5

    .line 554
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 555
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 557
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 586
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 588
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 592
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 596
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 598
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 218
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    packed-switch p1, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 221
    :pswitch_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.browser"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSupportBrowser:Z

    .line 136
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, arguments:Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 140
    .local v1, isMotionTutorial:Z
    :cond_0
    const v4, 0x7f070042

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->addPreferencesFromResource(I)V

    .line 142
    const-string v4, "glance_view"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    .line 143
    const-string v4, "tilt"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    .line 144
    const-string v4, "tilt_to_scroll_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    .line 145
    const-string v4, "pan"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    .line 146
    const-string v4, "pan_to_browse_image"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    .line 147
    const-string v4, "shake"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    .line 148
    const-string v4, "double_tap"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    .line 149
    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    .line 150
    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    .line 151
    const-string v4, "turn_over"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    .line 152
    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    .line 153
    const-string v4, "palm_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    .line 154
    const-string v4, "tap_and_twist"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 158
    .local v3, ps:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 161
    .local v2, isTablet:Z
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    if-nez v1, :cond_1

    .line 164
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_1
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    if-nez v1, :cond_2

    .line 170
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    :cond_2
    if-nez v1, :cond_3

    .line 173
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_5

    .line 176
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_7

    .line 179
    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    if-eqz v1, :cond_8

    if-eqz v2, :cond_9

    .line 185
    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_9
    if-eqz v1, :cond_a

    if-eqz v2, :cond_b

    .line 188
    :cond_a
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_b
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    iget-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSupportBrowser:Z

    if-nez v4, :cond_c

    .line 200
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    const v5, 0x7f090a68

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 202
    :cond_c
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    .line 214
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v5, 0x7f090a79

    const v4, 0x7f090a78

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 230
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 232
    const-string v3, "air_motion_glance_view"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 235
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    .line 343
    :goto_0
    return v2

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 239
    const-string v3, "motion_zooming"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a7f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 242
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 246
    const-string v3, "motion_tilt_to_list_scrolling"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a80

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 249
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 252
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 253
    iget-boolean v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_3

    .line 254
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 256
    :cond_3
    const-string v3, "motion_panning"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a81

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 259
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 261
    :cond_4
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    .line 262
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 263
    iget-boolean v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_5

    .line 264
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 266
    :cond_5
    const-string v3, "motion_pan_to_browse_image"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a82

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 269
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 271
    :cond_6
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    if-ne p2, v3, :cond_8

    .line 272
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 273
    const-string v3, "motion_shake"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a7a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a83

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 276
    const/4 v1, 0x1

    .line 278
    .local v1, isKiesWiFiInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.kieswifi"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_1
    if-nez v1, :cond_7

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a84

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 285
    :cond_7
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 287
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #isKiesWiFiInstalled:Z
    :cond_8
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    if-ne p2, v3, :cond_9

    .line 288
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 289
    const-string v3, "motion_double_tap"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a7b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a85

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 292
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 294
    :cond_9
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    if-ne p2, v3, :cond_a

    .line 295
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 296
    const-string v3, "motion_pick_up"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a7c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a86

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 303
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 305
    :cond_a
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    if-ne p2, v3, :cond_b

    .line 306
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 307
    const-string v3, "motion_pick_up_to_call_out"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a7d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a98

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 310
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 312
    :cond_b
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    if-ne p2, v3, :cond_c

    .line 313
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 314
    const-string v3, "motion_overturn"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a7e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a89

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 317
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 319
    :cond_c
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    if-ne p2, v3, :cond_d

    .line 320
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 321
    const-string v3, "surface_palm_swipe"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aa3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aa4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 324
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 326
    :cond_d
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    if-ne p2, v3, :cond_e

    .line 327
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 328
    const-string v3, "surface_palm_touch"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aa5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aa6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 331
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 333
    :cond_e
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    if-ne p2, v3, :cond_f

    .line 334
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 335
    const-string v3, "surface_tap_and_twist"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aa7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aa8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 338
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 341
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    .line 208
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 380
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 384
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040050

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 385
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b0029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 386
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0b00c2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 388
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 390
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 392
    const v4, 0x7f090a8a

    new-instance v5, Lcom/android/settings/motion/MotionTutorialSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionTutorialSettings$4;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09012d

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 404
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 405
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/motion/MotionTutorialSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/motion/MotionTutorialSettings$5;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 410
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->startAnimation()V

    .line 411
    return-void
.end method
