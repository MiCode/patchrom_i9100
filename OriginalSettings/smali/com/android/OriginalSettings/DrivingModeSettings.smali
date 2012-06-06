.class public Lcom/android/OriginalSettings/DrivingModeSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DrivingModeSettings.java"


# instance fields
.field private mAlarmNotification:Landroid/preference/CheckBoxPreference;

.field private mEmailNotification:Landroid/preference/CheckBoxPreference;

.field private mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

.field private mMessageNotification:Landroid/preference/CheckBoxPreference;

.field private mScheduleNotification:Landroid/preference/CheckBoxPreference;

.field private mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

.field private mVoiceMailNotification:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f050012

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->addPreferencesFromResource(I)V

    .line 58
    const-string v0, "incoming_call_notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    .line 59
    const-string v0, "message_notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    .line 60
    const-string v0, "email_notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    .line 61
    const-string v0, "voice_mail_notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    .line 62
    const-string v0, "alarm_notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    .line 63
    const-string v0, "schedule_notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v0, "unlock_screen_contents"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 135
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 100
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_incoming_call_notification"

    iget-object v4, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_message_notification"

    iget-object v4, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 112
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_email_notification"

    iget-object v4, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 115
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 116
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_voice_mail_notification"

    iget-object v4, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 118
    :cond_8
    iget-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 119
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_alarm_notification"

    iget-object v4, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_5

    .line 121
    :cond_a
    iget-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_schedule_notification"

    iget-object v4, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_6

    .line 124
    :cond_c
    iget-object v2, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_unlock_screen_contents"

    iget-object v4, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_7
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 74
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 77
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_message_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_email_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_alarm_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    iget-object v3, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_schedule_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v0, v2

    .line 80
    goto :goto_2

    :cond_3
    move v0, v2

    .line 83
    goto :goto_3

    :cond_4
    move v0, v2

    .line 86
    goto :goto_4

    :cond_5
    move v0, v2

    .line 89
    goto :goto_5

    :cond_6
    move v1, v2

    .line 92
    goto :goto_6
.end method
