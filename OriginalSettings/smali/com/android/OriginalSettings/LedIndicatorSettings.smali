.class public Lcom/android/settings/LedIndicatorSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedIndicatorSettings.java"


# instance fields
.field private misCharing:Landroid/preference/CheckBoxPreference;

.field private misIncomingNotification:Landroid/preference/CheckBoxPreference;

.field private misLowBattery:Landroid/preference/CheckBoxPreference;

.field private misMissedEvent:Landroid/preference/CheckBoxPreference;

.field private misVoiceRecording:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    const v1, 0x7f070037

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->addPreferencesFromResource(I)V

    .line 66
    const-string v1, "led_indicator_charging_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    .line 67
    const-string v1, "led_indicator_low_battery_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    .line 68
    const-string v1, "led_indicator_missed_event_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v1, "led_indicator_voice_recording_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v1, "led_indicator_incoming_notification_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 90
    const-string v0, "LedIndicatorSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 100
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_charing"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    :goto_0
    return v1

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_low_battery"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_missed_event"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 109
    :cond_5
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_voice_recording"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 112
    :cond_7
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_incoming_notification"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 117
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 78
    const-string v0, "LedIndicatorSettings"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_charing"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_low_battery"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_missed_event"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_voice_recording"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_incoming_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    :cond_1
    move v0, v2

    .line 81
    goto :goto_1

    :cond_2
    move v0, v2

    .line 82
    goto :goto_2

    :cond_3
    move v0, v2

    .line 83
    goto :goto_3

    :cond_4
    move v1, v2

    .line 84
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 96
    const-string v0, "LedIndicatorSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
