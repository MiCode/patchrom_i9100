.class public Lcom/android/OriginalSettings/WirelessSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# static fields
.field static menu_split:Z


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

.field private mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/WirelessSettings;->menu_split:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-static {p0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 257
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 258
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 260
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 263
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v16, 0x7f05004b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 131
    .local v2, activity:Landroid/app/Activity;
    const-string v16, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v16, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 133
    .local v10, nfc:Landroid/preference/CheckBoxPreference;
    const-string v16, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 134
    .local v3, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v16, "kies_via_wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 136
    .local v7, kiesViaWifi:Landroid/preference/PreferenceScreen;
    const-string v16, "toggle_wifi_p2p"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    .line 137
    .local v14, wifiP2p:Landroid/preference/CheckBoxPreference;
    const-string v16, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/SwitchPreference;

    .line 139
    .local v15, wifiP2pSetting:Landroid/preference/SwitchPreference;
    new-instance v16, Lcom/android/OriginalSettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/OriginalSettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    .line 140
    new-instance v16, Lcom/android/OriginalSettings/nfc/NfcEnabler;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v10, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    .line 149
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "airplane_mode_toggleable_radios"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 153
    .local v13, toggleable:Ljava/lang/String;
    if-eqz v13, :cond_0

    const-string v16, "wifi"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 154
    :cond_0
    const-string v16, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    const-string v17, "toggle_airplane"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 158
    :cond_1
    if-eqz v13, :cond_2

    const-string v16, "bluetooth"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 163
    :cond_2
    if-eqz v13, :cond_3

    const-string v16, "nfc"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 164
    :cond_3
    const-string v16, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    const-string v17, "toggle_airplane"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 165
    const-string v16, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    const-string v17, "toggle_airplane"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 169
    :cond_4
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v16, v0

    if-nez v16, :cond_8

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    .line 181
    :cond_5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_6
    const/4 v6, 0x1

    .line 188
    .local v6, isKiesWiFiInstalled:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "com.sec.android.app.kieswifi"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_1
    if-nez v6, :cond_7

    if-eqz v7, :cond_7

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    :cond_7
    const-string v16, "wifip2p"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 200
    .local v12, p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const-string v17, "android.hardware.wifi.direct"

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :goto_2
    const-string v16, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 210
    .local v9, mGlobalProxy:Landroid/preference/Preference;
    const-string v16, "device_policy"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 213
    .local v8, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v16

    if-nez v16, :cond_a

    const/16 v16, 0x1

    :goto_3
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 217
    const-string v16, "connectivity"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 219
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v16

    if-nez v16, :cond_b

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    const-string v17, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    :goto_4
    return-void

    .line 174
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v6           #isKiesWiFiInstalled:Z
    .end local v8           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #mGlobalProxy:Landroid/preference/Preference;
    .end local v12           #p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_8
    sget-boolean v16, Lcom/android/OriginalSettings/WirelessSettings;->menu_split:Z

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 189
    .restart local v6       #isKiesWiFiInstalled:Z
    :catch_0
    move-exception v5

    .line 190
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 204
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12       #p2p:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    new-instance v16, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v15}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    goto/16 :goto_2

    .line 214
    .restart local v8       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v9       #mGlobalProxy:Landroid/preference/Preference;
    :cond_a
    const/16 v16, 0x0

    goto :goto_3

    .line 222
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    :cond_b
    const-string v16, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 223
    .local v11, p:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 245
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->pause()V

    .line 246
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->pause()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->pause()V

    .line 253
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 82
    const-string v3, "mobile_network_settings"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_1

    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 89
    .local v1, simState:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 91
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, insertSimPopup:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b06c7

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b06c8

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 111
    .end local v0           #insertSimPopup:Landroid/app/AlertDialog$Builder;
    .end local v1           #simState:I
    :goto_0
    return v2

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/OriginalSettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 231
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->resume()V

    .line 232
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->resume()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->resume()V

    .line 239
    :cond_1
    return-void
.end method
