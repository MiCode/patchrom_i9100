.class public Lcom/android/sec_settings/motion2013/AirMotionSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotionIndicatorAnimation:[I

.field private mAirMove:Landroid/preference/SwitchPreferenceScreen;

.field private mAirPin:Landroid/preference/SwitchPreferenceScreen;

.field private mAirScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mAirTurn:Landroid/preference/SwitchPreferenceScreen;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 68
    new-instance v0, Lcom/android/sec_settings/motion2013/AirMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings$1;-><init>(Lcom/android/sec_settings/motion2013/AirMotionSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x91t 0x3t 0x2t 0x7ft
        0x92t 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/sec_settings/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->stopAnimation()V

    return-void
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, i:Landroid/content/Intent;
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string v1, "AirMotionSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method private showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 202
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 203
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 204
    iput-object v6, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 208
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 211
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040050

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 212
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b0029

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 213
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f0b00c2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 215
    const v4, 0x7f090ace

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 216
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 217
    const v4, 0x7f090acd

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 218
    const v4, 0x7f0905e3

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 221
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 222
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/sec_settings/motion2013/AirMotionSettings$2;

    invoke-direct {v5, p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings$2;-><init>(Lcom/android/sec_settings/motion2013/AirMotionSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 227
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->startAnimation()V

    .line 228
    return-void
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 235
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    iget v2, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 250
    iget v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirMotionIndicatorAnimation:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationIndex:I

    .line 251
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->stopAnimation()V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 199
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    .line 85
    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 86
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 89
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 90
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 92
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 98
    .end local v0           #padding:I
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    const-string v1, "quick_glance"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    .line 101
    const-string v1, "air_scroll"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 102
    const-string v1, "air_turn"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    .line 103
    const-string v1, "air_move"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    .line 104
    const-string v1, "air_pin"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    .line 105
    const-string v1, "air_call_accept"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    .line 107
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 148
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->stopAnimation()V

    .line 149
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x1

    .line 160
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    move-object v2, p2

    .line 161
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    .line 162
    .local v1, value:I
    :goto_0
    const-string v2, "quick_glance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_motion_glance_view"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->sendGlanceViewCheck(Z)V

    .line 176
    :cond_0
    :goto_1
    return v3

    .line 161
    .end local v1           #value:I
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 165
    .restart local v1       #value:I
    :cond_2
    const-string v2, "air_scroll"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_motion_scroll"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 167
    :cond_3
    const-string v2, "air_turn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_motion_turn"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 169
    :cond_4
    const-string v2, "air_move"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 170
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_motion_item_move"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 171
    :cond_5
    const-string v2, "air_pin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_motion_clip"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 173
    :cond_6
    const-string v2, "air_call_accept"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "air_motion_call_accept"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 181
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, key:Ljava/lang/String;
    const-string v1, "air_motion_indicator"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->showGuideDialog()V

    .line 184
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 119
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->updateAnimation()V

    .line 124
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 126
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_glance_view"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 127
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 128
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 129
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_item_move"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 130
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_clip"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 131
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_call_accept"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v0, v2

    .line 134
    .local v0, airMotionEngineState:Z
    :goto_6
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 143
    return-void

    .end local v0           #airMotionEngineState:Z
    :cond_1
    move v1, v3

    .line 126
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 127
    goto :goto_1

    :cond_3
    move v1, v3

    .line 128
    goto :goto_2

    :cond_4
    move v1, v3

    .line 129
    goto :goto_3

    :cond_5
    move v1, v3

    .line 130
    goto :goto_4

    :cond_6
    move v1, v3

    .line 131
    goto :goto_5

    :cond_7
    move v0, v3

    .line 133
    goto :goto_6
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 154
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/AirMotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_0
    return-void
.end method
