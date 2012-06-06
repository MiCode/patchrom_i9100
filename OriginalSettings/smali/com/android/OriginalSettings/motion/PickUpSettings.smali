.class public Lcom/android/OriginalSettings/motion/PickUpSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PickUpSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static final mAnimationImage:[I


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mTutorial:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0200fe

    aput v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationImage:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 46
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    .line 49
    iput-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 54
    new-instance v0, Lcom/android/OriginalSettings/motion/PickUpSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/motion/PickUpSettings$1;-><init>(Lcom/android/OriginalSettings/motion/PickUpSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/motion/PickUpSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/motion/PickUpSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/motion/PickUpSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/motion/PickUpSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->updateCheckedUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/motion/PickUpSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/motion/PickUpSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/motion/PickUpSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 145
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    iput-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 151
    iput-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07fd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b07fc

    new-instance v3, Lcom/android/OriginalSettings/motion/PickUpSettings$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/motion/PickUpSettings$2;-><init>(Lcom/android/OriginalSettings/motion/PickUpSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0175

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 167
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/OriginalSettings/motion/PickUpSettings$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/motion/PickUpSettings$3;-><init>(Lcom/android/OriginalSettings/motion/PickUpSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 173
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 242
    const-string v0, "PickUpSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    .line 245
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->updateAnimation()V

    .line 247
    :cond_0
    return-void
.end method

.method private startTryActually()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "PickUpSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 221
    const-string v0, "PickUpSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    iget v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->stopAnimation()V

    .line 231
    iget v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateCheckedUI()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pick_up"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 79
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 80
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 81
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 85
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 87
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0b07d9

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 95
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->showGuideDialog()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 101
    const-string v0, "PickUpSettings"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_pick_up"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->addPreferencesFromResource(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mActivity:Landroid/app/Activity;

    .line 71
    const-string v0, "tutorial"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mTutorial:Landroid/preference/Preference;

    .line 72
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 115
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->stopAnimation()V

    .line 116
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mTutorial:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->showGuideDialog()V

    .line 140
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 108
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->updateCheckedUI()V

    .line 109
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->updateAnimation()V

    .line 110
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 180
    iput-object v6, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 183
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 184
    iput-object v6, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 188
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040043

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f080027

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 190
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f080095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 192
    const v4, 0x7f0b07f2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 193
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 194
    const v4, 0x7f0b07d9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 196
    const v4, 0x7f0b07f4

    new-instance v5, Lcom/android/OriginalSettings/motion/PickUpSettings$4;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/PickUpSettings$4;-><init>(Lcom/android/OriginalSettings/motion/PickUpSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0175

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 206
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 207
    iget-object v4, p0, Lcom/android/OriginalSettings/motion/PickUpSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/OriginalSettings/motion/PickUpSettings$5;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/motion/PickUpSettings$5;-><init>(Lcom/android/OriginalSettings/motion/PickUpSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    invoke-direct {p0}, Lcom/android/OriginalSettings/motion/PickUpSettings;->startAnimation()V

    .line 213
    return-void
.end method
