.class public Lcom/android/sec_settings/DisplaySettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static UseMultiWindow:Z


# instance fields
.field protected MESSAGE_DELAY:I

.field private isDeviceLockTime:Z

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

.field private mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAutoLockmode:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Lcom/android/sec_settings/BrightnessPreference;

.field private mBrightnessPreference:Lcom/android/sec_settings/BrightnessPreference;

.field private mContextualPage:Landroid/preference/SwitchPreferenceScreen;

.field protected mContextualPageUncheckerHandler:Landroid/os/Handler;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

.field private mFontSize:Lcom/android/sec_settings/FontSizeListPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mFontStyle:Lcom/android/sec_settings/flipfont/FontListPreference;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

.field private mMultiWindowModeObserver:Landroid/database/ContentObserver;

.field private mMultiWindowPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationEdit:Landroid/preference/PreferenceScreen;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mQuickLaunchPreference:Landroid/preference/ListPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeDialog:Landroid/app/AlertDialog;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSleep:Landroid/preference/CheckBoxPreference;

.field private mSmartRoationGuideDialog:Landroid/app/AlertDialog;

.field private mSmartRotation:Landroid/preference/CheckBoxPreference;

.field private mSmartRotationAnimationImage:[I

.field private mSmartStayAnimationImage:[I

.field mSupportFolderType:Z

.field private mTouchKeyLight:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/DisplaySettings;->UseMultiWindow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 151
    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 152
    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    .line 158
    iput v2, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    .line 159
    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartStayAnimationImage:[I

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRotationAnimationImage:[I

    .line 168
    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 172
    iput v2, p0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    .line 173
    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 184
    iput-boolean v2, p0, Lcom/android/sec_settings/DisplaySettings;->mSupportFolderType:Z

    .line 194
    iput v2, p0, Lcom/android/sec_settings/DisplaySettings;->MESSAGE_DELAY:I

    .line 196
    new-instance v0, Lcom/android/sec_settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/DisplaySettings$1;-><init>(Lcom/android/sec_settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Lcom/android/sec_settings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/DisplaySettings$2;-><init>(Lcom/android/sec_settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 245
    new-instance v0, Lcom/android/sec_settings/DisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/sec_settings/DisplaySettings$3;-><init>(Lcom/android/sec_settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    .line 253
    new-instance v0, Lcom/android/sec_settings/DisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/sec_settings/DisplaySettings$4;-><init>(Lcom/android/sec_settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 262
    new-instance v0, Lcom/android/sec_settings/DisplaySettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/sec_settings/DisplaySettings$5;-><init>(Lcom/android/sec_settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    .line 269
    new-instance v0, Lcom/android/sec_settings/DisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/DisplaySettings$6;-><init>(Lcom/android/sec_settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    .line 1291
    new-instance v0, Lcom/android/sec_settings/DisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/DisplaySettings$12;-><init>(Lcom/android/sec_settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mContextualPageUncheckerHandler:Landroid/os/Handler;

    return-void

    .line 160
    nop

    :array_0
    .array-data 0x4
        0x99t 0x3t 0x2t 0x7ft
        0x9at 0x3t 0x2t 0x7ft
        0x9bt 0x3t 0x2t 0x7ft
        0x9ct 0x3t 0x2t 0x7ft
    .end array-data

    .line 161
    :array_1
    .array-data 0x4
        0x43t 0x3t 0x2t 0x7ft
        0x44t 0x3t 0x2t 0x7ft
        0x45t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/sec_settings/DisplaySettings;)Lcom/android/sec_settings/BrightnessPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mBrightnessPreference:Lcom/android/sec_settings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/DisplaySettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/sec_settings/DisplaySettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 12
    .parameter

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 643
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 644
    :goto_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 648
    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 649
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    .line 650
    const-wide/32 v0, 0x927c0

    move-wide v2, v0

    .line 655
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 717
    :goto_2
    return-void

    .line 643
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 659
    :cond_1
    const/4 v1, -0x1

    .line 660
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 661
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 662
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 663
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 664
    const/4 v0, 0x0

    :goto_3
    array-length v8, v5

    if-ge v0, v8, :cond_3

    .line 665
    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 666
    cmp-long v10, v8, v2

    if-gtz v10, :cond_2

    .line 667
    aget-object v10, v4, v0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    aget-object v10, v5, v0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/sec_settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-gez v8, :cond_2

    .line 673
    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    move v1, v0

    .line 664
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 679
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    .line 681
    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 682
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 686
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 687
    :cond_5
    const v0, 0x7f090bf6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_6
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 702
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 704
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 705
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gtz v1, :cond_8

    .line 706
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 716
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 690
    :cond_7
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "revisedValues.size() : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 692
    const-string v4, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_timeout : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    .line 694
    const v0, 0x7f090bf6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 708
    :cond_8
    const-string v0, "DisplaySettings"

    const-string v1, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_5

    .line 716
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_a
    move-wide v2, v0

    goto/16 :goto_1
.end method

.method private dismissProgressDlgOfFontStyle()V
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mFontStyle:Lcom/android/sec_settings/flipfont/FontListPreference;

    if-nez v1, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mFontStyle:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/sec_settings/flipfont/FontListPreference;->getProgressDlgStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mFontStyle:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/sec_settings/flipfont/FontListPreference;->getLoadingProgressDlg()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 327
    .local v0, mProgressDlg:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mFontStyle:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/sec_settings/flipfont/FontListPreference;->dismissProgressDlg()V

    goto :goto_0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 1272
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1273
    div-long v2, v0, v4

    .line 1274
    rem-long v4, v0, v4

    .line 1276
    const-string v0, ""

    .line 1277
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110006

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1283
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110007

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1287
    :cond_2
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    return-object v0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1255
    .line 1256
    iget-boolean v0, p0, Lcom/android/sec_settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    .line 1257
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1263
    :goto_0
    if-nez v2, :cond_2

    .line 1268
    :cond_0
    :goto_1
    return v1

    .line 1259
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1265
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1266
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 1265
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private refreshScreenTimeoutList(Landroid/preference/ListPreference;)V
    .locals 18
    .parameter "screenTimeoutPreference"

    .prologue
    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "device_policy"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 724
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 725
    .local v6, maxTimeout:J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const-wide/16 v16, 0x7530

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 727
    .local v1, currentTimeout:J
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 728
    .local v4, entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 729
    .local v13, values:[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v8, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 731
    .local v9, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v14, v13

    if-ge v5, v14, :cond_2

    .line 732
    aget-object v14, v13, v5

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 734
    .local v10, timeout:J
    cmp-long v14, v10, v6

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/sec_settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v14

    if-nez v14, :cond_1

    cmp-long v14, v1, v10

    if-eqz v14, :cond_1

    .line 731
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 724
    .end local v1           #currentTimeout:J
    .end local v4           #entries:[Ljava/lang/CharSequence;
    .end local v5           #i:I
    .end local v6           #maxTimeout:J
    .end local v8           #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v9           #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v10           #timeout:J
    .end local v13           #values:[Ljava/lang/CharSequence;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 737
    .restart local v1       #currentTimeout:J
    .restart local v4       #entries:[Ljava/lang/CharSequence;
    .restart local v5       #i:I
    .restart local v6       #maxTimeout:J
    .restart local v8       #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v9       #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v10       #timeout:J
    .restart local v13       #values:[Ljava/lang/CharSequence;
    :cond_1
    aget-object v14, v4, v5

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    aget-object v14, v13, v5

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 741
    .end local v10           #timeout:J
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 743
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 746
    .local v12, userPreference:I
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    .line 305
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 886
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 885
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateAccelerometerRotationSecondCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 890
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 891
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 280
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    .line 287
    :cond_2
    iget v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    .line 289
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->stopAnimation()V

    .line 291
    iget v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/DreamSettings;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09044b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 880
    return-void

    .line 876
    :cond_0
    const v0, 0x7f09044c

    goto :goto_0
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 853
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 854
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 855
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 857
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 858
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 860
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "intelligent_rotation_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 861
    :goto_1
    iget-object v3, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 863
    iget-object v3, p0, Lcom/android/sec_settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "display_battery_percentage"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 865
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_key_light"

    const/16 v5, 0x5dc

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 867
    iget-boolean v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 868
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    .line 869
    iget-object v3, p0, Lcom/android/sec_settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sub_lcd_auto_lock"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 870
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_night_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 873
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 857
    goto :goto_0

    :cond_2
    move v0, v2

    .line 860
    goto :goto_1

    :cond_3
    move v0, v2

    .line 863
    goto :goto_2

    :cond_4
    move v0, v2

    .line 869
    goto :goto_3

    :cond_5
    move v1, v2

    .line 870
    goto :goto_4
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 22
    .parameter "currentTimeout"

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 574
    .local v11, preference:Landroid/preference/ListPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "device_policy"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 575
    .local v8, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v8, :cond_2

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 577
    .local v3, adminTimeout:J
    :goto_0
    const-wide/16 v13, -0x1

    .line 579
    .local v13, summary_val:J
    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-gez v18, :cond_3

    .line 581
    const-string v12, ""

    .line 623
    .local v12, summary:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_screen_lock_after_timeout"

    const-wide/16 v20, 0x1388

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 624
    .local v6, currentDeviceLockTimeout:J
    const-wide/16 v18, 0x0

    cmp-long v18, v3, v18

    if-eqz v18, :cond_0

    .line 625
    cmp-long v18, v3, v6

    if-gez v18, :cond_0

    move-wide v6, v3

    .line 627
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/DisplaySettings;->isDeviceLockTime:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    cmp-long v18, v13, v6

    if-lez v18, :cond_d

    .line 628
    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 629
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_1

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 635
    :cond_1
    :goto_2
    return-void

    .line 575
    .end local v3           #adminTimeout:J
    .end local v6           #currentDeviceLockTimeout:J
    .end local v12           #summary:Ljava/lang/String;
    .end local v13           #summary_val:J
    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 582
    .restart local v3       #adminTimeout:J
    .restart local v13       #summary_val:J
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/android/sec_settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-nez v18, :cond_4

    cmp-long v18, p1, v3

    if-gtz v18, :cond_4

    .line 583
    const v18, 0x7f090447

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #summary:Ljava/lang/String;
    goto :goto_1

    .line 586
    .end local v12           #summary:Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 587
    .local v9, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v17

    .line 588
    .local v17, values:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 589
    .local v5, best:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_6

    .line 590
    aget-object v18, v17, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 591
    .local v15, timeout:J
    cmp-long v18, p1, v15

    if-ltz v18, :cond_5

    .line 592
    move v5, v10

    .line 589
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 597
    .end local v15           #timeout:J
    :cond_6
    array-length v0, v9

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 598
    :cond_7
    const v18, 0x7f090447

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #summary:Ljava/lang/String;
    goto/16 :goto_1

    .line 601
    .end local v12           #summary:Ljava/lang/String;
    :cond_8
    aget-object v18, v17, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v18, v18, v3

    if-gez v18, :cond_9

    cmp-long v18, v3, p1

    if-gez v18, :cond_9

    .line 602
    const-string v18, "DisplaySettings"

    const-string v19, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const v18, 0x7f090447

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 604
    .restart local v12       #summary:Ljava/lang/String;
    move-wide v13, v3

    goto/16 :goto_1

    .line 606
    .end local v12           #summary:Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p2}, Lcom/android/sec_settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v18

    if-eqz v18, :cond_b

    cmp-long v18, p1, v3

    if-ltz v18, :cond_a

    const-wide/16 v18, 0x0

    cmp-long v18, v3, v18

    if-nez v18, :cond_b

    .line 607
    :cond_a
    const v18, 0x7f090447

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v9, v5

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 608
    .restart local v12       #summary:Ljava/lang/String;
    aget-object v18, v17, v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto/16 :goto_1

    .line 610
    .end local v12           #summary:Ljava/lang/String;
    :cond_b
    const-wide/16 v18, 0x0

    cmp-long v18, v3, v18

    if-nez v18, :cond_c

    .line 611
    const v18, 0x7f090447

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 612
    .restart local v12       #summary:Ljava/lang/String;
    move-wide/from16 v13, p1

    goto/16 :goto_1

    .line 614
    .end local v12           #summary:Ljava/lang/String;
    :cond_c
    const v18, 0x7f090447

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 615
    .restart local v12       #summary:Ljava/lang/String;
    move-wide v13, v3

    goto/16 :goto_1

    .line 632
    .end local v5           #best:I
    .end local v9           #entries:[Ljava/lang/CharSequence;
    .end local v10           #i:I
    .end local v17           #values:[Ljava/lang/CharSequence;
    .restart local v6       #currentDeviceLockTimeout:J
    :cond_d
    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 751
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 752
    const/4 v0, 0x1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 753
    aget-object v2, v3, v0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 754
    sub-float v4, v2, v1

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 755
    add-int/lit8 v0, v0, -0x1

    .line 759
    :goto_1
    return v0

    .line 752
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 759
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public isContextualAllOptionDisabled()Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1298
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page_s_pen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1299
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_earphone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1300
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page_audio_dock"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1301
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_car_cradle"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1302
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "contextual_page_desk_cardle"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1303
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "contextual_page_roaming"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1306
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    const/4 v0, 0x1

    .line 1309
    :cond_0
    const-string v7, "DisplaySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllOptionDisabled() : SpenScreen : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " EarphoneScreen : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DockScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CarCardleScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DeskCradleScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RoamingScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retVal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 218
    iget-boolean v1, p0, Lcom/android/sec_settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    .line 219
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mBrightnessPreference:Lcom/android/sec_settings/BrightnessPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/BrightnessPreference;->setFlipCloseStatus(Z)V

    .line 230
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 235
    return-void

    .line 223
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mBrightnessPreference:Lcom/android/sec_settings/BrightnessPreference;

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/BrightnessPreference;->setFlipCloseStatus(Z)V

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 334
    invoke-super/range {p0 .. p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 337
    .local v11, resolver:Landroid/content/ContentResolver;
    const v15, 0x7f070026

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    const-string v16, "led_indicator_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    const-string v15, "contextualpage_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    const-string v16, "contextualpage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    const-string v15, "notification_panel_edit"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mNotificationEdit:Landroid/preference/PreferenceScreen;

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    const-string v16, "notification_panel_edit"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->isContextualAllOptionDisabled()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "contextual_page"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    :cond_0
    const-string v15, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/sec_settings/DisplaySettings;->isDeviceLockTime:Z

    .line 362
    const-string v15, "accelerometer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v15

    #if-eqz v15, :cond_1

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    :cond_1
    const-string v15, "screensaver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 371
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x111003a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    :cond_2
    const-string v15, "font_size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/sec_settings/FontSizeListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mFontSize:Lcom/android/sec_settings/FontSizeListPreference;

    .line 379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mFontSize:Lcom/android/sec_settings/FontSizeListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/sec_settings/FontSizeListPreference;->setObject(Lcom/android/sec_settings/DisplaySettings;)V

    .line 380
    const-string v15, "brightness"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/sec_settings/BrightnessPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mBrightness:Lcom/android/sec_settings/BrightnessPreference;

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mBrightness:Lcom/android/sec_settings/BrightnessPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/sec_settings/BrightnessPreference;->setObject(Lcom/android/sec_settings/DisplaySettings;)V

    .line 382
    const-string v15, "MONOTYPE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/sec_settings/flipfont/FontListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mFontStyle:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 385
    .local v2, activity:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v15, :cond_3

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    .line 388
    const-string v15, "Direct"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mDirect : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_3
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v15, "intelligent_sleep"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;

    .line 401
    const-string v15, "intelligent_rotation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 412
    const-string v15, "brightness"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/sec_settings/BrightnessPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mBrightnessPreference:Lcom/android/sec_settings/BrightnessPreference;

    .line 414
    const-string v15, "screen_timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 415
    const-string v15, "screen_off_timeout"

    const-wide/16 v16, 0x7530

    move-wide/from16 v0, v16

    invoke-static {v11, v15, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 417
    .local v5, currentTimeout:J
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/sec_settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v15, :cond_4

    .line 418
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v16, 0x7f0a0005

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const v16, 0x7f0a0006

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 422
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 425
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/sec_settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 429
    const-string v15, "font_size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 430
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v15, "display_battery_level"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    #if-eqz v15, :cond_5

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 438
    :cond_5
    const-string v15, "notification_pulse"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 442
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v15, :cond_e

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    :cond_6
    :goto_0
    const-string v15, "touch_key_light"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1110036

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 462
    :goto_1
    const-string v15, "power_saving_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "power_saving_mode"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_11

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 469
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 470
    const-string v15, "mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceScreen;

    .line 471
    .local v12, screenMode:Landroid/preference/PreferenceScreen;
    const v15, 0x7f0400d6

    invoke-virtual {v12, v15}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 483
    .end local v12           #screenMode:Landroid/preference/PreferenceScreen;
    :cond_7
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 493
    :cond_8
    const-string v15, "ro.product.model"

    const-string v16, "Unknown"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 494
    .local v9, mProduct:Ljava/lang/String;
    const-string v15, "GT-I9082"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    :cond_9
    const-string v15, "quick_launch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    .line 507
    const-string v15, "quick_launch_app"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 509
    .local v4, currentQuicklaunch:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 512
    const/4 v3, 0x1

    .line 514
    .local v3, canStatusBarHide:Z
    :try_start_0
    const-string v15, "window"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    .line 516
    .local v14, wm:Landroid/view/IWindowManager;
    invoke-interface {v14}, Landroid/view/IWindowManager;->hasSystemNavBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v15

    if-nez v15, :cond_12

    const/4 v3, 0x1

    .line 521
    .end local v14           #wm:Landroid/view/IWindowManager;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v3, :cond_b

    .line 522
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 524
    :cond_b
    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_c

    if-eqz v3, :cond_c

    .line 525
    const-string v15, "more_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    .line 526
    .local v10, moreSettings:Landroid/preference/PreferenceCategory;
    if-eqz v10, :cond_c

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 531
    .end local v10           #moreSettings:Landroid/preference/PreferenceCategory;
    :cond_c
    const-string v15, "accelerometer_second"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    .line 532
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 533
    const-string v15, "sub_lcd_auto_lock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "sub_lcd_auto_lock"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_13

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    const-string v15, "key_backlight"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    .line 537
    .local v8, keyBacklightPreference:Landroid/preference/ListPreference;
    const-string v15, "key_backlight_timeout"

    const/16 v16, 0xbb8

    move/from16 v0, v16

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 540
    const-string v15, "key_night_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "key_night_mode"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_14

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 556
    const-string v15, "key_multi_window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "com.sec.feature.multiwindow.phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    sput-boolean v15, Lcom/android/sec_settings/DisplaySettings;->UseMultiWindow:Z

    .line 558
    sget-boolean v15, Lcom/android/sec_settings/DisplaySettings;->UseMultiWindow:Z

    if-nez v15, :cond_d

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 568
    :cond_d
    return-void

    .line 446
    .end local v3           #canStatusBarHide:Z
    .end local v4           #currentQuicklaunch:I
    .end local v8           #keyBacklightPreference:Landroid/preference/ListPreference;
    .end local v9           #mProduct:Ljava/lang/String;
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v15, :cond_6

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    const-string v15, "notification_light_pulse"

    invoke-static {v11, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_f

    const/4 v15, 0x1

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 451
    :catch_0
    move-exception v13

    .line 452
    .local v13, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v15, "DisplaySettings"

    const-string v16, "notification_light_pulse not found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 447
    .end local v13           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_f
    const/4 v15, 0x0

    goto :goto_6

    .line 460
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 463
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 516
    .restart local v3       #canStatusBarHide:Z
    .restart local v4       #currentQuicklaunch:I
    .restart local v9       #mProduct:Ljava/lang/String;
    .restart local v14       #wm:Landroid/view/IWindowManager;
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 517
    .end local v14           #wm:Landroid/view/IWindowManager;
    :catch_1
    move-exception v7

    .line 518
    .local v7, e:Landroid/os/RemoteException;
    const-string v15, "DisplaySettings"

    const-string v16, "Failing checking whether status bar can hide"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 534
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 541
    .restart local v8       #keyBacklightPreference:Landroid/preference/ListPreference;
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1133
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1134
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1135
    const v3, 0x7f0400b0

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1136
    const v0, 0x7f0b00c0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1137
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1139
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1154
    :goto_0
    return-object v0

    .line 1141
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090019

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    new-instance v4, Lcom/android/sec_settings/DisplaySettings$7;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/sec_settings/DisplaySettings$7;-><init>(Lcom/android/sec_settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 832
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 833
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->stopAnimation()V

    .line 836
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 843
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 846
    iget-boolean v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 850
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 982
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 983
    const-string v4, "screen_timeout"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 984
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 986
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    const-string v0, "DisplaySettings"

    const-string v1, "isInDefaultTimeoutList = true"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout_rollback"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/sec_settings/DisplaySettings;->refreshScreenTimeoutList(Landroid/preference/ListPreference;)V

    .line 1001
    int-to-long v0, v7

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 1002
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1008
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1009
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1010
    :goto_2
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v8, 0x1388

    invoke-static {v4, v5, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1011
    cmp-long v8, v0, v2

    if-eqz v8, :cond_10

    .line 1012
    cmp-long v8, v0, v4

    if-gez v8, :cond_4

    .line 1014
    :goto_3
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentDeviceLockTimeout: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-boolean v4, p0, Lcom/android/sec_settings/DisplaySettings;->isDeviceLockTime:Z

    if-eqz v4, :cond_2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    int-to-long v2, v7

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 1017
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->showScreenTimeDialog()V

    .line 1096
    :cond_2
    :goto_4
    return v6

    .line 990
    :catch_0
    move-exception v0

    .line 991
    const-string v1, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1004
    :catch_1
    move-exception v0

    .line 1005
    const-string v1, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 1009
    goto :goto_2

    :cond_4
    move-wide v0, v4

    .line 1012
    goto :goto_3

    .line 1020
    :cond_5
    const-string v2, "font_size"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, p2

    .line 1022
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/DisplaySettings;->floatToIndex(F)I

    move-result v0

    .line 1023
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1025
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1026
    if-ge v2, v5, :cond_8

    if-ne v0, v5, :cond_8

    .line 1027
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    const-string v3, "large_font"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1029
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1031
    const-string v2, "DisplaySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1042
    const-string v3, "pref_font_noti"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1044
    if-ne v0, v5, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1045
    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DisplaySettings;->showDialog(I)V

    .line 1047
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/sec_settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto/16 :goto_4

    .line 1032
    :cond_8
    if-ne v2, v5, :cond_6

    if-ge v0, v5, :cond_6

    .line 1033
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    const-string v3, "large_font"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1037
    const-string v2, "DisplaySettings"

    const-string v3, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1049
    :cond_9
    const-string v2, "touch_key_light"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1050
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1052
    :try_start_2
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_key_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1053
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 1054
    :catch_2
    move-exception v0

    .line 1055
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist Touch key light setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1057
    :cond_a
    const-string v2, "quick_launch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1058
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1060
    :try_start_3
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_launch_app"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1062
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.QUICKLAUNCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1064
    const-string v0, "DisplaySettings"

    const-string v1, "android.settings.QUICKLAUNCH_CHANGED is broadcasted"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    .line 1066
    :catch_3
    move-exception v0

    .line 1067
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist quick launch setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1069
    :cond_b
    const-string v2, "key_backlight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1070
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1072
    :try_start_4
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_backlight_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 1074
    :catch_4
    move-exception v0

    .line 1075
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist key backlight setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1077
    :cond_c
    const-string v2, "contextualpage_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1078
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v6

    .line 1079
    :goto_6
    if-ne v0, v6, :cond_e

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->isContextualAllOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1080
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mContextualPageUncheckerHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/sec_settings/DisplaySettings;->MESSAGE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :cond_d
    move v0, v1

    .line 1078
    goto :goto_6

    .line 1082
    :cond_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contextual_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_f

    .line 1084
    const-string v1, "changed"

    const-string v3, "true"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const-string v1, "DisplaySettings"

    const-string v3, "CONTEXTUALPAGE_SWITCH_CHANGED changed = true"

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :goto_7
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "contextual_page"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1092
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 1088
    :cond_f
    const-string v1, "changed"

    const-string v3, "false"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1089
    const-string v1, "DisplaySettings"

    const-string v3, "CONTEXTUALPAGE_SWITCH_CHANGED changed = false"

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    move-wide v0, v4

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 923
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 924
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 978
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_2
    return v1

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_3
    invoke-static {v3, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v1, v2

    .line 929
    goto :goto_0

    .line 932
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 933
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 934
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_percentage"

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 936
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 937
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 938
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_7

    move v2, v1

    :cond_7
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 941
    :cond_8
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 942
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_saving_mode"

    iget-object v4, p0, Lcom/android/sec_settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    goto :goto_1

    :cond_9
    move v1, v2

    .line 942
    goto :goto_4

    .line 944
    :cond_a
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p2

    .line 945
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 946
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_sleep_mode"

    if-eqz v0, :cond_b

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 947
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 948
    const-string v3, "pref_smart_stay_noti"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 950
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->showGuideDialog()V

    goto/16 :goto_1

    :cond_b
    move v1, v2

    .line 946
    goto :goto_5

    .line 953
    :cond_c
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p2

    .line 954
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 955
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_rotation_mode"

    if-eqz v0, :cond_d

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 956
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 957
    const-string v3, "pref_smart_rotation_noti"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 960
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->showSmartRatationGuideDialog()V

    goto/16 :goto_1

    :cond_d
    move v1, v2

    .line 955
    goto :goto_6

    .line 962
    :cond_e
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 963
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 964
    if-nez v0, :cond_f

    .line 967
    :cond_f
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_second"

    if-eqz v0, :cond_10

    :goto_7
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    .line 968
    :cond_11
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 969
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sub_lcd_auto_lock"

    iget-object v4, p0, Lcom/android/sec_settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_8
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    move v1, v2

    goto :goto_8

    .line 971
    :cond_13
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 972
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "key_night_mode"

    iget-object v4, p0, Lcom/android/sec_settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_9
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v1, v2

    goto :goto_9

    .line 973
    :cond_15
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 975
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    if-eqz v0, :cond_16

    :goto_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_a
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 791
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 792
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateAnimation()V

    .line 793
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->updateState()V

    .line 795
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/sec_settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 799
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_off_timeout"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 804
    iget-object v3, p0, Lcom/android/sec_settings/DisplaySettings;->mContextualPage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "contextual_page"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 807
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 808
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v3, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 811
    const-string v0, "DisplaySettings"

    const-string v3, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 816
    iget v0, p0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    .line 817
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mBrightness:Lcom/android/sec_settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/sec_settings/BrightnessPreference;->directBrightness()V

    .line 823
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/sec_settings/DisplaySettings;->mMultiWindowModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 827
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->dismissProgressDlgOfFontStyle()V

    .line 828
    return-void

    :cond_2
    move v0, v2

    .line 804
    goto :goto_0

    .line 818
    :cond_3
    iget v0, p0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mFontSize:Lcom/android/sec_settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/sec_settings/FontSizeListPreference;->directFontsize()V

    goto :goto_1
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v6, 0x0

    .line 764
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/DisplaySettings;->floatToIndex(F)I

    move-result v1

    .line 772
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFontSizePreference : font index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 774
    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFontSizePreference : Settings.System.FONT_SIZE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    if-ne v2, v0, :cond_0

    .line 777
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :goto_1
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 783
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 784
    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 785
    const v3, 0x7f090455

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v0, v2, v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 787
    return-void

    .line 765
    :catch_0
    move-exception v1

    .line 766
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public showGuideDialog()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v7, 0x7f0b00c2

    .line 1160
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1162
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1165
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1167
    iput-object v4, p0, Lcom/android/sec_settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1170
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1171
    const v1, 0x7f0400b7

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1172
    const v0, 0x7f0b00c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1173
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 1175
    const v1, 0x7f0b0216

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090bea

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    const v1, 0x7f0b0217

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090beb

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    const v1, 0x7f0b0218

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1180
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090bec

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    const v1, 0x7f0b0219

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090d36

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 1185
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartStayAnimationImage:[I

    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationImage:[I

    .line 1187
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1188
    const v1, 0x7f090be4

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1190
    const v1, 0x104000a

    new-instance v4, Lcom/android/sec_settings/DisplaySettings$8;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/sec_settings/DisplaySettings$8;-><init>(Lcom/android/sec_settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1196
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1197
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1198
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sec_settings/DisplaySettings$9;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/DisplaySettings$9;-><init>(Lcom/android/sec_settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1203
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->startAnimation()V

    .line 1204
    return-void
.end method

.method public showScreenTimeDialog()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x0

    .line 1102
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1104
    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1105
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout"

    const-wide/16 v7, 0x1388

    invoke-static {v4, v5, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1106
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 1107
    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    move-wide v2, v0

    .line 1109
    :goto_1
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxTimeout: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentDeviceLockTimeout: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1114
    iput-object v9, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 1117
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1118
    const v1, 0x7f0400ad

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1119
    const v0, 0x7f0b01d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1120
    const v4, 0x7f090020

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/sec_settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/sec_settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1123
    const v0, 0x7f090446

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1124
    const v0, 0x104000a

    invoke-virtual {v6, v0, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1126
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    .line 1127
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mScreenTimeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1128
    return-void

    :cond_1
    move-wide v0, v2

    .line 1104
    goto/16 :goto_0

    :cond_2
    move-wide v2, v4

    .line 1107
    goto/16 :goto_1

    :cond_3
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method public showSmartRatationGuideDialog()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v7, 0x7f0b00c2

    .line 1208
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1210
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1211
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1213
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1215
    iput-object v4, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1219
    const v1, 0x7f0400b6

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1220
    const v0, 0x7f0b00c0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1221
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 1223
    const v1, 0x7f0b0210

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090beb

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    const v1, 0x7f0b0211

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090bec

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    const v1, 0x7f0b0212

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090d36

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 1231
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRotationAnimationImage:[I

    iput-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mAnimationImage:[I

    .line 1233
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1234
    const v1, 0x7f090be6

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1236
    const v1, 0x104000a

    new-instance v4, Lcom/android/sec_settings/DisplaySettings$10;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/sec_settings/DisplaySettings$10;-><init>(Lcom/android/sec_settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1242
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    .line 1243
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1244
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sec_settings/DisplaySettings$11;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/DisplaySettings$11;-><init>(Lcom/android/sec_settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1249
    invoke-direct {p0}, Lcom/android/sec_settings/DisplaySettings;->startAnimation()V

    .line 1250
    return-void
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 896
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 897
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/high16 v1, 0x3fc0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 899
    const v0, 0x3fa66666

    .line 900
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 906
    iget v0, p0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 907
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFontSizePreference1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    .line 909
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 910
    invoke-virtual {p0}, Lcom/android/sec_settings/DisplaySettings;->finish()V

    .line 919
    :goto_0
    return-void

    .line 912
    :cond_1
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFontSizePreference2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/DisplaySettings;->mDirect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    .line 917
    const-string v0, "DisplaySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
