.class public Lcom/android/sec_settings/PowerSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "PowerSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mAutoPowerOff:Landroid/preference/ListPreference;

.field private mFastPowerOn:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingEnabler:Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;

.field private mStartUp:Landroid/preference/ListPreference;

.field private mSwitchPowerSaving:Landroid/preference/SwitchPreference;

.field private myContext:Landroid/content/Context;

.field private valueCameraAutoStartKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 129
    iget-object v1, p0, Lcom/android/sec_settings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/sec_settings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/android/sec_settings/PowerSettings;->mFastPowerOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fast_power_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 61
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v4, 0x7f07004a

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/PowerSettings;->addPreferencesFromResource(I)V

    .line 65
    const-string v4, "power_saving_mode"

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mSwitchPowerSaving:Landroid/preference/SwitchPreference;

    .line 67
    iget-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mSwitchPowerSaving:Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    const-string v4, "PowerSettings"

    const-string v7, "mSwitchPowerSaving is null"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    new-instance v4, Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/PowerSettings;->mSwitchPowerSaving:Landroid/preference/SwitchPreference;

    invoke-direct {v4, v7, v8}, Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mPowerSavingEnabler:Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;

    .line 70
    invoke-static {}, Lcom/android/sec_settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/sec_settings/PowerSettings;->sSalesCode:Ljava/lang/String;

    .line 72
    const-string v4, "auto_power_off"

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    .line 73
    iget-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_power_off"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    new-array v2, v9, [Ljava/lang/String;

    .line 77
    .local v2, mStartUpEntries:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090cae

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    .line 78
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f09094b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 80
    new-array v3, v9, [Ljava/lang/String;

    .line 81
    .local v3, mStartUpValues:[Ljava/lang/String;
    const-string v4, "ON"

    aput-object v4, v3, v6

    .line 82
    const-string v4, "OFF"

    aput-object v4, v3, v5

    .line 85
    const-string v4, "start_up"

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    .line 86
    iget-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "com.sec.factory"

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sec_settings/PowerSettings;->myContext:Landroid/content/Context;

    .line 91
    iget-object v4, p0, Lcom/android/sec_settings/PowerSettings;->myContext:Landroid/content/Context;

    const-string v7, "di_test_prefs"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, mPrefs:Landroid/content/SharedPreferences;
    const-string v4, "camera_auto_start_key"

    const-string v7, "ON"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sec_settings/PowerSettings;->valueCameraAutoStartKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1           #mPrefs:Landroid/content/SharedPreferences;
    :goto_0
    iget-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/sec_settings/PowerSettings;->valueCameraAutoStartKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v4, "VZW"

    sget-object v7, Lcom/android/sec_settings/PowerSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_1
    const-string v4, "fast_power_on"

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/PowerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/sec_settings/PowerSettings;->mFastPowerOn:Landroid/preference/CheckBoxPreference;

    .line 106
    iget-object v7, p0, Lcom/android/sec_settings/PowerSettings;->mFastPowerOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "fast_power_on"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ON"

    iput-object v4, p0, Lcom/android/sec_settings/PowerSettings;->valueCameraAutoStartKey:Ljava/lang/String;

    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move v4, v6

    .line 106
    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 123
    const-string v0, "PowerSettings"

    const-string v1, "called onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/sec_settings/PowerSettings;->mPowerSavingEnabler:Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 125
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 126
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 136
    iget-object v3, p0, Lcom/android/sec_settings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 137
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 138
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_power_off"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v3, p0, Lcom/android/sec_settings/PowerSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/android/sec_settings/PowerSettings;->updateState()V

    .line 153
    .end local v2           #value:I
    :cond_0
    :goto_0
    return v6

    .line 141
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v2, p2

    .line 142
    check-cast v2, Ljava/lang/String;

    .line 144
    .local v2, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.sec.factory"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/PowerSettings;->myContext:Landroid/content/Context;

    .line 145
    iget-object v3, p0, Lcom/android/sec_settings/PowerSettings;->myContext:Landroid/content/Context;

    const-string v4, "di_test_prefs"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, mPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "camera_auto_start_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #mPrefs:Landroid/content/SharedPreferences;
    :goto_1
    iget-object v3, p0, Lcom/android/sec_settings/PowerSettings;->mStartUp:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/android/sec_settings/PowerSettings;->updateState()V

    goto :goto_0

    .line 149
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 158
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, key:Ljava/lang/String;
    const-string v1, "fast_power_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fast_power_on"

    iget-object v1, p0, Lcom/android/sec_settings/PowerSettings;->mFastPowerOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    const-string v1, "PowerSettings"

    const-string v2, "fast_power_on is saved"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 161
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    const-string v0, "PowerSettings"

    const-string v1, "called onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/sec_settings/PowerSettings;->mPowerSavingEnabler:Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 116
    invoke-virtual {p0}, Lcom/android/sec_settings/PowerSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 117
    invoke-direct {p0}, Lcom/android/sec_settings/PowerSettings;->updateState()V

    .line 118
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 169
    const-string v0, "power_saving_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/PowerSettings;->mPowerSavingEnabler:Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/powersavingmode/PowerSavingEnabler;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/sec_settings/PowerSettings;->mSwitchPowerSaving:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 172
    :cond_0
    return-void
.end method
