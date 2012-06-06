.class public Lcom/android/OriginalSettings/motion/ShakeTutorial;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;
    }
.end annotation


# static fields
.field private static final mAnimationImage:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

.field private mBTdevice1:Landroid/preference/Preference;

.field private mBTdevice2:Landroid/preference/Preference;

.field private mCanShake:Z

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mRetryDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationImage:[I

    return-void

    :array_0
    .array-data 0x4
        0xfet 0x0t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0x2t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mCanShake:Z

    .line 48
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    .line 51
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    .line 53
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationView:Landroid/widget/ImageView;

    .line 57
    new-instance v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$1;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$2;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Lcom/android/OriginalSettings/motion/ShakeTutorial$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$3;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 309
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mCanShake:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/motion/ShakeTutorial;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mCanShake:Z

    return p1
.end method

.method static synthetic access$200()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->addBTPreference()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->showRetryDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/motion/ShakeTutorial;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->removeBTPreference()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->stopAnimation()V

    return-void
.end method

.method private addBTPreference()V
    .locals 3

    .prologue
    const v2, 0x7f040068

    .line 201
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice1:Landroid/preference/Preference;

    .line 202
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice1:Landroid/preference/Preference;

    const-string v1, "BT device 1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice1:Landroid/preference/Preference;

    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 205
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice2:Landroid/preference/Preference;

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice2:Landroid/preference/Preference;

    const-string v1, "BT device 2"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice2:Landroid/preference/Preference;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 209
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    return-void
.end method

.method private removeBTPreference()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->removeAll()V

    .line 215
    return-void
.end method

.method private showRetryDialog()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    .line 223
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b07f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b07f6

    new-instance v2, Lcom/android/OriginalSettings/motion/ShakeTutorial$6;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$6;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b07f7

    new-instance v2, Lcom/android/OriginalSettings/motion/ShakeTutorial$5;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$5;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mRetryDialog:Landroid/app/AlertDialog;

    .line 242
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "ShakeTutorial"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    .line 297
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->updateAnimation()V

    .line 299
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "ShakeTutorial"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 273
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationImage:[I

    iget v2, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    .line 279
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    .line 281
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->stopAnimation()V

    .line 283
    iget v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 125
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, actionBarImageBtn:Landroid/widget/ImageButton;
    const v5, 0x7f0200f1

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 127
    const v5, 0x7f020137

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 128
    new-instance v5, Lcom/android/OriginalSettings/motion/ShakeTutorial$4;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$4;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    instance-of v5, v1, Lmiui/preference/BasePreferenceActivity;

    if-eqz v5, :cond_1

    move-object v4, v1

    .line 135
    check-cast v4, Lmiui/preference/BasePreferenceActivity;

    .line 136
    .local v4, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v4}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 139
    .local v3, padding:I
    invoke-virtual {v0, v8, v8, v3, v8}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 140
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 142
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 150
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 151
    .local v2, myDevicePreference:Landroid/preference/Preference;
    const v5, 0x7f0b00e0

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 152
    const v5, 0x7f0b00e4

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    const v5, 0x7f02004e

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 158
    :goto_0
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 159
    invoke-virtual {v2, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    new-instance v5, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    .line 164
    iget-object v5, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    const v6, 0x7f0b0207

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;->setTitle(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/motion/ShakeTutorial$ShakeTutorialProgressCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "motion_recognition"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v5, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 168
    iput-boolean v10, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mCanShake:Z

    .line 169
    return-void

    .line 156
    :cond_2
    const v5, 0x7f020057

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->addPreferencesFromResource(I)V

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 182
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->stopAnimation()V

    .line 183
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 174
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->updateAnimation()V

    .line 175
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mCanShake:Z

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "ShakeTutorial"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 191
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 192
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 249
    iput-object v6, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 253
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040043

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 254
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f080027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 255
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f080095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mAnimationView:Landroid/widget/ImageView;

    .line 257
    const v4, 0x7f0b07f0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 258
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 259
    const v4, 0x7f0b07d7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 260
    const v4, 0x7f0b0485

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    .line 262
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 263
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/ShakeTutorial;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/OriginalSettings/motion/ShakeTutorial$7;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial$7;-><init>(Lcom/android/OriginalSettings/motion/ShakeTutorial;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 268
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/ShakeTutorial;->startAnimation()V

    .line 269
    return-void
.end method
