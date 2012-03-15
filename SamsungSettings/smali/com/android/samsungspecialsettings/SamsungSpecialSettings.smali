.class public Lcom/android/samsungspecialsettings/SamsungSpecialSettings;
.super Landroid/preference/PreferenceActivity;
.source "SamsungSpecialSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDisplaySaving:Landroid/preference/CheckBoxPreference;

.field private mScreenMode:Landroid/preference/ListPreference;

.field private mTouchKeyLight:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static updateAutoAdjustScreenPowerState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 124
    const-string v0, "SamsungSpecialSettingsLog"

    const-string v1, "updateAutoAdjustScreenPowerState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    .line 126
    return-void
.end method

.method private static updateScreenMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 129
    const-string v1, "SamsungSpecialSettingsLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SamsungSpecialSettingsLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to updateScreenMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 67
    const-string v4, "SamsungSpecialSettingsLog"

    const-string v7, "onCreate"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 69
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/high16 v4, 0x7f02

    invoke-virtual {p0, v4}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->addPreferencesFromResource(I)V

    .line 75
    const-string v4, "touch_key_light"

    invoke-virtual {p0, v4}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 76
    iget-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "button_key_light"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 79
    .local v1, light:I
    iget-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    const-string v4, "screen_mode"

    invoke-virtual {p0, v4}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mScreenMode:Landroid/preference/ListPreference;

    .line 82
    iget-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mScreenMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mScreenMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_mode_setting"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, mode:I
    iget-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mScreenMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    const-string v4, "power_saving_mode"

    invoke-virtual {p0, v4}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mDisplaySaving:Landroid/preference/CheckBoxPreference;

    .line 88
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "power_saving_mode"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 89
    .local v3, saving:I
    iget-object v7, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mDisplaySaving:Landroid/preference/CheckBoxPreference;

    if-ne v5, v3, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    iget-object v4, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mDisplaySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->updateAutoAdjustScreenPowerState(Z)V

    .line 91
    return-void

    :cond_1
    move v4, v6

    .line 89
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 113
    const-string v0, "SamsungSpecialSettingsLog"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->finish()V

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 141
    const-string v2, "SamsungSpecialSettingsLog"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, key:Ljava/lang/String;
    const-string v2, "touch_key_light"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 146
    .local v1, value:I
    const-string v2, "SamsungSpecialSettingsLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_0
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "button_key_light"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    iget-object v2, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    .end local v1           #value:I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 155
    .restart local p2
    :cond_1
    const-string v2, "screen_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 158
    .restart local v1       #value:I
    :try_start_1
    invoke-static {v1}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->updateScreenMode(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    iget-object v2, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mScreenMode:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v2

    goto :goto_0

    .line 152
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    if-ne p2, v0, :cond_1

    .line 96
    const-string v0, "SamsungSpecialSettingsLog"

    const-string v1, "Touch key light duration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mDisplaySaving:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 98
    const-string v0, "SamsungSpecialSettingsLog"

    const-string v1, "Auto adjust screen power"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mDisplaySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "SamsungSpecialSettingsLog"

    const-string v1, "Checked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->mDisplaySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->updateAutoAdjustScreenPowerState(Z)V

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "SamsungSpecialSettingsLog"

    const-string v1, "Unchecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/android/samsungspecialsettings/SamsungSpecialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
