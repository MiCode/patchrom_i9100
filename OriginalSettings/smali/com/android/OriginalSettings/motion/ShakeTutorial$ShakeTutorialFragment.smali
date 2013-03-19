.class public Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ShakeTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/ShakeTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeTutorialFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    }
.end annotation


# static fields
.field private static final mAnimationImage:[I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

.field private mBTdevice1:Landroid/preference/Preference;

.field private mBTdevice2:Landroid/preference/Preference;

.field private mCanShake:Z

.field private mContext:Landroid/content/Context;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mRetryDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    return-void

    :array_0
    .array-data 0x4
        0x7et 0x2t 0x2t 0x7ft
        0x7ft 0x2t 0x2t 0x7ft
        0x7et 0x2t 0x2t 0x7ft
        0x7ft 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    .line 66
    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mRetryDialog:Landroid/app/AlertDialog;

    .line 69
    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 73
    iput-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 78
    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$1;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$2;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$3;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 353
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    return p1
.end method

.method static synthetic access$200()Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->removeBTPreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->addBTPreference()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    return-void
.end method

.method private addBTPreference()V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    .line 240
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const-string v1, "BT device 1"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 242
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    .line 244
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const-string v1, "BT device 2"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 247
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mBTdevice2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 248
    return-void
.end method

.method private removeBTPreference()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->removeAll()V

    .line 252
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "ShakeTutorial"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 342
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    .line 344
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "ShakeTutorial"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 319
    const-string v0, "ShakeTutorial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 325
    :cond_0
    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    .line 327
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    .line 329
    iget v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 164
    .local v1, myDevicePreference:Landroid/preference/Preference;
    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 165
    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const v2, 0x7f020112

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 171
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 172
    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    new-instance v2, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    .line 177
    iget-object v2, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    const v3, 0x7f0901d3

    invoke-virtual {v2, v3}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;->setTitle(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAvailableDevicesCategory:Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$ShakeTutorialProgressCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "motion_recognition"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v2, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 181
    iput-boolean v5, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    .line 182
    return-void

    .line 169
    :cond_0
    const v2, 0x7f020123

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 141
    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mContext:Landroid/content/Context;

    .line 142
    const-string v0, "ShakeTutorial"

    const-string v1, "context is assigned"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->addPreferencesFromResource(I)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->setHasOptionsMenu(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 154
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 210
    const v1, 0x7f090019

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02026b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 212
    .local v0, information:Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 213
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 215
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 219
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 221
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->finish()V

    goto :goto_0

    .line 224
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->showGuideDialog()V

    goto :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->stopAnimation()V

    .line 196
    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->updateAnimation()V

    .line 188
    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mCanShake:Z

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 190
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "ShakeTutorial"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 204
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 205
    return-void
.end method

.method public showGuideDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 284
    iget-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 285
    iput-object v9, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 289
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040050

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 290
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b0029

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 291
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b00c2

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 293
    const/4 v3, 0x1

    .line 295
    .local v3, isKiesWiFiInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.android.app.kieswifi"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    const v6, 0x7f090a83

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 301
    if-nez v3, :cond_1

    .line 302
    const v6, 0x7f090a84

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 305
    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 306
    const v6, 0x7f090a7a

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    const v6, 0x7f0905e3

    invoke-virtual {v0, v6, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 308
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    .line 309
    iget-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 310
    iget-object v6, p0, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;

    invoke-direct {v7, p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment$6;-><init>(Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 315
    invoke-direct {p0}, Lcom/android/settings/motion/ShakeTutorial$ShakeTutorialFragment;->startAnimation()V

    .line 316
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method
