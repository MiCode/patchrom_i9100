.class public Lcom/android/sec_settings/motion/GlanceViewSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "GlanceViewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mToggleBattery:Landroid/preference/CheckBoxPreference;

.field private mToggleMissedCall:Landroid/preference/CheckBoxPreference;

.field private mToggleNewMessage:Landroid/preference/CheckBoxPreference;

.field private mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

.field private mToggleStatusBar:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    const-string v0, "missed_call"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    .line 109
    iget-object v3, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_missed_call"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    const-string v0, "new_message"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    .line 111
    iget-object v3, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_new_message"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    const-string v0, "now_playing_music"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    .line 113
    iget-object v3, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_now_playing_music"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 114
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    .line 115
    iget-object v3, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_battery_charging_info"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    const-string v0, "status_bar"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    .line 117
    iget-object v0, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "glance_view_status_bar"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v0, v2

    .line 111
    goto :goto_1

    :cond_2
    move v0, v2

    .line 113
    goto :goto_2

    :cond_3
    move v0, v2

    .line 115
    goto :goto_3

    :cond_4
    move v1, v2

    .line 117
    goto :goto_4
.end method

.method private updateGlanceViewSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_glance_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, State:I
    const-string v1, "GlanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGlanceViewSaving : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const-string v0, "GlanceView"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->addPreferencesFromResource(I)V

    .line 54
    invoke-direct {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->initializeAllPreferences()V

    .line 55
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "GlanceView"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 80
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    const-string v2, "GlanceView"

    const-string v3, "onPreferenceTreeClick() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_missed_call"

    iget-object v4, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_new_message"

    iget-object v4, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 93
    :cond_4
    iget-object v2, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_now_playing_music"

    iget-object v4, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 95
    :cond_6
    iget-object v2, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 96
    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_battery_charging_info"

    iget-object v4, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 97
    :cond_8
    iget-object v2, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_status_bar"

    iget-object v4, p0, Lcom/android/sec_settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_5
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "GlanceView"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/android/sec_settings/motion/GlanceViewSettings;->updateGlanceViewSaving()V

    .line 68
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "GlanceView"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 74
    return-void
.end method
