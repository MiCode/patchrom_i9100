.class public Lcom/android/sec_settings/motion2013/MotionSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPan:Landroid/preference/SwitchPreferenceScreen;

.field private mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportBrowser:Z

.field private mTilt:Landroid/preference/SwitchPreferenceScreen;

.field private mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

.field private mTurnOver:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/motion2013/MotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/sec_settings/motion2013/MotionSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sec_settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/motion2013/MotionSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 255
    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 258
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a5c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905e3

    new-instance v2, Lcom/android/sec_settings/motion2013/MotionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/motion2013/MotionSettings$1;-><init>(Lcom/android/sec_settings/motion2013/MotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012d

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 272
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sec_settings/motion2013/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/motion2013/MotionSettings$2;-><init>(Lcom/android/sec_settings/motion2013/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 277
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 184
    if-nez p2, :cond_6

    .line 185
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    .line 187
    .local v2, motion_unlock:Z
    const/4 v0, 0x0

    .line 188
    .local v0, camera_short_cut:Z
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    const/4 v2, 0x1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    const/4 v0, 0x1

    .line 198
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 199
    const v3, 0x7f090aaf

    invoke-direct {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->showMotionUnlockDialog(I)V

    .line 213
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 214
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 215
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 216
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 217
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 218
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 219
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 220
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 221
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 222
    return-void

    .line 200
    .restart local v0       #camera_short_cut:Z
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2       #motion_unlock:Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 201
    const v3, 0x7f090aae

    invoke-direct {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 202
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 203
    const v3, 0x7f090aad

    invoke-direct {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    if-eqz p2, :cond_5

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    invoke-direct {p0, p2}, Lcom/android/sec_settings/motion2013/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 205
    goto :goto_1

    .line 209
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    if-eqz p2, :cond_7

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    invoke-direct {p0, p2}, Lcom/android/sec_settings/motion2013/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_7
    move v3, v4

    .line 209
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v3, 0x7f070041

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    .line 73
    new-instance v3, Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 74
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 77
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 78
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 80
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 84
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 87
    .end local v1           #padding:I
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    const-string v3, "tilt"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    .line 90
    const-string v3, "tilt_to_scroll_list"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    .line 91
    const-string v3, "pan"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    .line 92
    const-string v3, "pan_to_browse_image"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    .line 93
    const-string v3, "shake"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    .line 94
    const-string v3, "double_tap"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    .line 95
    const-string v3, "pick_up"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    .line 96
    const-string v3, "pick_up_to_call_out"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    .line 97
    const-string v3, "turn_over"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    .line 99
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 101
    .local v2, ps:Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 107
    .local v0, isTablet:Z
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 116
    if-eqz v0, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    :cond_1
    if-eqz v0, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 126
    if-eqz v0, :cond_3

    .line 127
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_3
    if-eqz v0, :cond_4

    .line 130
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.browser"

    invoke-static {v3, v4}, Lcom/android/sec_settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mSupportBrowser:Z

    .line 134
    iget-boolean v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mSupportBrowser:Z

    if-nez v3, :cond_5

    .line 135
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    const v4, 0x7f090a68

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 137
    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 143
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 150
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 151
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 153
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 155
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 156
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 158
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 163
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_zooming"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 164
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_tilt_to_list_scrolling"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 165
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_panning"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 166
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 167
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_shake"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_5
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 168
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_double_tap"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_6
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 169
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_7
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 170
    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 171
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    :goto_9
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 172
    return-void

    .end local v0           #motionEngineState:Z
    :cond_1
    move v0, v2

    .line 150
    goto/16 :goto_0

    .restart local v0       #motionEngineState:Z
    :cond_2
    move v3, v2

    .line 163
    goto/16 :goto_1

    :cond_3
    move v3, v2

    .line 164
    goto :goto_2

    :cond_4
    move v3, v2

    .line 165
    goto :goto_3

    :cond_5
    move v3, v2

    .line 166
    goto :goto_4

    :cond_6
    move v3, v2

    .line 167
    goto :goto_5

    :cond_7
    move v3, v2

    .line 168
    goto :goto_6

    :cond_8
    move v3, v2

    .line 169
    goto :goto_7

    :cond_9
    move v3, v2

    .line 170
    goto :goto_8

    :cond_a
    move v1, v2

    .line 171
    goto :goto_9
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 177
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_0
    return-void
.end method
