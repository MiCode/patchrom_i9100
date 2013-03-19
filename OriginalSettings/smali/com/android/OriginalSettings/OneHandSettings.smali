.class public Lcom/android/settings/OneHandSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OneHandSettings.java"


# instance fields
.field private mCalculator:Landroid/preference/CheckBoxPreference;

.field private mDialer:Landroid/preference/CheckBoxPreference;

.field private mEnableLog:Z

.field private mHelp:Landroid/preference/PreferenceScreen;

.field private mOneHandOperation:Landroid/preference/PreferenceCategory;

.field private mOneHandTutorial:Landroid/preference/PreferenceCategory;

.field private mPattern:Landroid/preference/CheckBoxPreference;

.field private mSamsungKeypad:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "OneHandSettings"

    const-string v1, "OneHandSettings onCreate() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSettings;->addPreferencesFromResource(I)V

    .line 69
    const-string v0, "category_onehand_operation"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/OneHandSettings;->mOneHandOperation:Landroid/preference/PreferenceCategory;

    .line 70
    const-string v0, "dialer"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OneHandSettings;->mDialer:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v0, "samsung_keypad"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v0, "calculator"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OneHandSettings;->mCalculator:Landroid/preference/CheckBoxPreference;

    .line 73
    const-string v0, "pattern"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/OneHandSettings;->mPattern:Landroid/preference/CheckBoxPreference;

    .line 74
    const-string v0, "category_tutorial"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/OneHandSettings;->mOneHandTutorial:Landroid/preference/PreferenceCategory;

    .line 75
    const-string v0, "onehand_help"

    invoke-virtual {p0, v0}, Lcom/android/settings/OneHandSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/OneHandSettings;->mHelp:Landroid/preference/PreferenceScreen;

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    if-eqz v0, :cond_1

    const-string v0, "OneHandSettings"

    const-string v1, "OneHandSettings onCreate() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 104
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mDialer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 109
    const-string v0, "OneHandSettings"

    const-string v1, "mDialer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_dialer_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 116
    const-string v0, "OneHandSettings"

    const-string v1, "mSamsungKeypad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mCalculator:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 123
    const-string v0, "OneHandSettings"

    const-string v1, "mCalculator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_calculator_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mPattern:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 130
    const-string v0, "OneHandSettings"

    const-string v1, "mPattern"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_pattern_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    if-eqz v0, :cond_0

    const-string v0, "OneHandSettings"

    const-string v3, "OneHandSettings onResume() start"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 90
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mDialer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_dialer_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mSamsungKeypad:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    iget-object v3, p0, Lcom/android/settings/OneHandSettings;->mCalculator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "onehand_calculator_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/OneHandSettings;->mPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_pattern_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/OneHandSettings;->mEnableLog:Z

    if-eqz v0, :cond_1

    const-string v0, "OneHandSettings"

    const-string v1, "OneHandSettings onResume() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 90
    goto :goto_0

    :cond_3
    move v0, v2

    .line 92
    goto :goto_1

    :cond_4
    move v0, v2

    .line 94
    goto :goto_2

    :cond_5
    move v1, v2

    .line 96
    goto :goto_3
.end method
