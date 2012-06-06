.class public Lcom/android/OriginalSettings/SoftwareUpdateSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"


# static fields
.field private static SETTING_AUTO_UPDATE:Ljava/lang/String;

.field private static SETTING_PUSH_MSG:Ljava/lang/String;

.field private static SETTING_WIFI_ONLY:Ljava/lang/String;


# instance fields
.field private AutoUpdate:Landroid/preference/CheckBoxPreference;

.field private PushMessage:Landroid/preference/CheckBoxPreference;

.field private WifiOnly:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "SOFTWARE_UPDATE_AUTO_UPDATE"

    sput-object v0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    .line 29
    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY"

    sput-object v0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    .line 30
    const-string v0, "SOFTWARE_UPDATE_PUSH_MESSAGE"

    sput-object v0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "Software Update"

    const-string v3, "onActivityCreated"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const v0, 0x7f050038

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 54
    const-string v0, "Software Update"

    const-string v3, "set Default Settings"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 60
    :cond_0
    const-string v0, "auto_update"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 62
    iget-object v3, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 64
    const-string v0, "wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 66
    iget-object v3, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 68
    const-string v0, "push_message"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 70
    iget-object v3, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 62
    goto :goto_0

    :cond_3
    move v0, v2

    .line 66
    goto :goto_1

    :cond_4
    move v0, v2

    .line 70
    goto :goto_2

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "SMLDM_BEARER"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, key:Ljava/lang/String;
    const-string v2, "update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    const-string v2, "Software Update"

    const-string v3, "Software Update Checked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 129
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 91
    :cond_2
    const-string v2, "auto_update"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    const-string v2, "Software Update"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoUpdate.isChecked() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "sec.fota.intent.AUTOUPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    const-string v2, "changed_data"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    move v2, v4

    .line 93
    goto :goto_1

    .line 100
    :cond_4
    const-string v2, "changed_data"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 103
    :cond_5
    const-string v2, "wifi_only"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 104
    const-string v2, "Software Update"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiOnly.isChecked() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "sec.fota.intent.WIFIONLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 111
    const-string v2, "changed_data"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 106
    goto :goto_2

    .line 113
    :cond_7
    const-string v2, "changed_data"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 116
    :cond_8
    const-string v2, "push_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, "Software Update"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PushMessage.isChecked() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->SETTING_PUSH_MSG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "sec.fota.intent.PUSH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/SoftwareUpdateSettings;->PushMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 123
    const-string v2, "changed_data"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    move v2, v4

    .line 118
    goto :goto_3

    .line 125
    :cond_a
    const-string v2, "changed_data"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0
.end method
