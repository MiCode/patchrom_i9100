.class public Lcom/android/sec_settings/motion2013/SMotionSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSurface:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/motion2013/SMotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/sec_settings/motion2013/SMotionSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sec_settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    iput-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 129
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

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

    new-instance v2, Lcom/android/sec_settings/motion2013/SMotionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/motion2013/SMotionSettings$1;-><init>(Lcom/android/sec_settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012d

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 143
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sec_settings/motion2013/SMotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/motion2013/SMotionSettings$2;-><init>(Lcom/android/sec_settings/motion2013/SMotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f070051

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/SMotionSettings;->addPreferencesFromResource(I)V

    .line 44
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 45
    const-string v1, "motion"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 46
    const-string v1, "surface"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/motion2013/SMotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    .line 47
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    iget-object v1, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 66
    .local v0, ps:Landroid/preference/PreferenceScreen;
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    move-object v5, p2

    .line 83
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    .line 84
    .local v4, value:I
    :goto_0
    const-string v5, "air_motion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "air_motion_engine"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    .end local p2
    :cond_0
    :goto_1
    return v6

    .end local v4           #value:I
    .restart local p2
    :cond_1
    move v4, v7

    .line 83
    goto :goto_0

    .line 86
    .restart local v4       #value:I
    :cond_2
    const-string v5, "motion"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, p2

    .line 87
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8

    .line 88
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 89
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v3, 0x0

    .line 90
    .local v3, motion_unlock:Z
    const/4 v0, 0x0

    .line 91
    .local v0, camera_short_cut:Z
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    const/4 v3, 0x1

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "motion_unlock_camera_short_cut"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    const/4 v0, 0x1

    .line 101
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 102
    const v5, 0x7f090aaf

    invoke-direct {p0, v5}, Lcom/android/sec_settings/motion2013/SMotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_1

    .line 103
    :cond_5
    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    .line 104
    const v5, 0x7f090aae

    invoke-direct {p0, v5}, Lcom/android/sec_settings/motion2013/SMotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_1

    .line 105
    :cond_6
    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    .line 106
    const v5, 0x7f090aad

    invoke-direct {p0, v5}, Lcom/android/sec_settings/motion2013/SMotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_1

    .line 108
    :cond_7
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "motion_engine"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/sec_settings/motion2013/SMotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_1

    .line 112
    .end local v0           #camera_short_cut:Z
    .end local v2           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v3           #motion_unlock:Z
    .restart local p2
    :cond_8
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "motion_engine"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/sec_settings/motion2013/SMotionSettings;->broadcastMotionChanged(Z)V

    goto/16 :goto_1

    .line 115
    .restart local p2
    :cond_9
    const-string v5, "surface"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "surface_motion_engine"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 71
    const-string v0, "SMotionSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/sec_settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 75
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 76
    iget-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_engine"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mSurface:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/sec_settings/motion2013/SMotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "surface_motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 79
    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v0, v2

    .line 76
    goto :goto_1

    :cond_2
    move v1, v2

    .line 77
    goto :goto_2
.end method
