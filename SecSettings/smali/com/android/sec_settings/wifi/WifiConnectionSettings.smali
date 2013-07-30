.class public Lcom/android/sec_settings/wifi/WifiConnectionSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiConnectionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wifi_connection_normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wifi_connection_downtown"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wifi_connection_home"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v6, "connection"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const v6, 0x7f070084

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->addPreferencesFromResource(I)V

    .line 33
    const-string v6, "mode_list"

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 34
    .local v1, modeList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 36
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_connection_monitor_settings"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 37
    .local v2, position:I
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, settings:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, summary:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 41
    new-instance v3, Lcom/android/sec_settings/wifi/WifiConnectionPreference;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/wifi/WifiConnectionPreference;-><init>(Landroid/content/Context;)V

    .line 43
    .local v3, pref:Lcom/android/sec_settings/wifi/WifiConnectionPreference;
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6}, Lcom/android/sec_settings/wifi/WifiConnectionPreference;->setKey(Ljava/lang/String;)V

    .line 44
    aget-object v6, v4, v0

    invoke-virtual {v3, v6}, Lcom/android/sec_settings/wifi/WifiConnectionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    aget-object v6, v5, v0

    invoke-virtual {v3, v6}, Lcom/android/sec_settings/wifi/WifiConnectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/sec_settings/wifi/WifiConnectionPreference;->setSelectable(Z)V

    .line 47
    invoke-virtual {v3, v8}, Lcom/android/sec_settings/wifi/WifiConnectionPreference;->setPersistent(Z)V

    .line 48
    invoke-virtual {v3, p0}, Lcom/android/sec_settings/wifi/WifiConnectionPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    if-ne v0, v2, :cond_0

    .line 51
    invoke-virtual {v3}, Lcom/android/sec_settings/wifi/WifiConnectionPreference;->setChecked()V

    .line 54
    :cond_0
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v3           #pref:Lcom/android/sec_settings/wifi/WifiConnectionPreference;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x1

    .line 72
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 94
    :goto_0
    return v7

    .line 78
    :cond_0
    const/4 v2, 0x0

    .local v2, position:I
    move-object v4, p2

    .line 79
    check-cast v4, Ljava/lang/String;

    .line 81
    .local v4, value:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 83
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, summary:[Ljava/lang/String;
    aget-object v5, v3, v0

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    move v2, v0

    .line 92
    .end local v3           #summary:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiConnectionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_connection_monitor_settings"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 62
    return-void
.end method
