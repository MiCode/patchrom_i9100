.class public Lcom/android/OriginalSettings/ApplicationSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ApplicationSettings.java"


# instance fields
.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mInstallLocation:Landroid/preference/ListPreference;

.field private mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, selectedLocation:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    const-string v1, "device"

    .line 152
    :goto_0
    return-object v1

    .line 146
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 147
    const-string v1, "sdcard"

    goto :goto_0

    .line 148
    :cond_1
    if-nez v0, :cond_2

    .line 149
    const-string v1, "auto"

    goto :goto_0

    .line 152
    :cond_2
    const-string v1, "auto"

    goto :goto_0
.end method

.method private isAdvancedSettingsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setAdvancedSettingsEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 134
    .local v1, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ADVANCED_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    return-void

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #value:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleUpdateAppInstallLocation(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string v0, "device"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 113
    return-void

    .line 101
    :cond_0
    const-string v0, "sdcard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApplicationSettings;->addPreferencesFromResource(I)V

    .line 59
    const-string v1, "toggle_advanced_settings"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v1, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->isAdvancedSettingsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    const-string v1, "app_install_location"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    .line 71
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 73
    .local v0, userSetInstLocation:Z
    :cond_0
    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mInstallLocation:Landroid/preference/ListPreference;

    new-instance v2, Lcom/android/OriginalSettings/ApplicationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/ApplicationSettings$1;-><init>(Lcom/android/OriginalSettings/ApplicationSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 119
    .local v0, value:Z
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ApplicationSettings;->setAdvancedSettingsEnabled(Z)V

    .line 122
    .end local v0           #value:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 91
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApplicationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/ApplicationSettings;->mToggleAdvancedSettings:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/ApplicationSettings;->isAdvancedSettingsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    return-void
.end method
