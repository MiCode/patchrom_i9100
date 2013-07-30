.class public Lcom/android/sec_settings/wifi/AdvancedWifiSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/wifi/AdvancedWifiSettings$SwitchHandler;
    }
.end annotation


# static fields
.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static hideNavigationButton:Z


# instance fields
.field private allowWifi:Z

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEapMethod:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Lcom/android/sec_settings/wifi/AdvancedWifiSettings$SwitchHandler;

.field private mIwlan:Ljava/lang/String;

.field private mIwlanDialog:Lcom/android/sec_settings/wifi/IwlanDialog;

.field private mIwlanEnabler:Lcom/android/sec_settings/wifi/IwlanEnabler;

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mPriorityDialog:Lcom/android/sec_settings/wifi/PrioritySettingDialog;

.field private mPrioritymode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelected:Lcom/android/sec_settings/wifi/AccessPoint;

.field private mSettingNames:[Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mUiHandler:Landroid/os/Handler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 166
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 110
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    .line 121
    iput-boolean v3, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 143
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wifi_static_wagip"

    aput-object v1, v0, v2

    const-string v1, "wifi_static_wagport"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mSettingNames:[Ljava/lang/String;

    .line 147
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wagip"

    aput-object v1, v0, v2

    const-string v1, "wagport"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mUiHandler:Landroid/os/Handler;

    .line 158
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    .line 732
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getAuthenticationInformation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1124
    const-string v0, "/data/misc/wifi/message.txt"

    .line 1126
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    const-string v0, ""

    .line 1150
    :goto_0
    return-object v0

    .line 1132
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1135
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1139
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInformation, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1144
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1144
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 35

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v31

    .line 294
    .local v31, wifiEnabled:Z
    const-string v32, "connect_seamlessly"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 297
    .local v8, connectSeamlessly:Landroid/preference/CheckBoxPreference;
    const-string v32, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .line 300
    .local v17, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    const-string v32, "wifi_hotspot20_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 302
    .local v11, hotspot20Enable:Landroid/preference/CheckBoxPreference;
    const-string v32, "wifi_hotspot20_roam_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 320
    .local v12, hotspot20RoamEnable:Landroid/preference/CheckBoxPreference;
    if-eqz v11, :cond_0

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :cond_0
    if-eqz v12, :cond_1

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 339
    :cond_1
    if-eqz v8, :cond_2

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "wifi_networks_available_notification_on"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    const/16 v32, 0x1

    :goto_0
    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 346
    const-string v32, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    .line 348
    .local v19, poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    if-eqz v19, :cond_3

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/sec_settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_16

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    :cond_3
    :goto_1
    const-string v32, "att_auto_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 368
    .local v3, attAutoConnection:Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_4

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    :cond_4
    const-string v32, "wifi_cmcc_manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 384
    .local v4, cmccConnectType:Landroid/preference/ListPreference;
    if-eqz v4, :cond_5

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 389
    :cond_5
    const-string v32, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    .line 390
    .local v10, frequencyPref:Landroid/preference/ListPreference;
    if-eqz v10, :cond_6

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    :cond_6
    const-string v32, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    .line 407
    .local v23, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v23, :cond_8

    .line 408
    const v32, 0x7f0400d6

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/sec_settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 410
    const v32, 0x7f0a0027

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 412
    :cond_7
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 413
    const/16 v27, 0x2

    .line 420
    .local v27, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "wifi_sleep_policy"

    const/16 v34, 0x2

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 424
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    .line 425
    .local v24, stringValue:Ljava/lang/String;
    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 430
    .end local v24           #stringValue:Ljava/lang/String;
    .end local v27           #value:I
    :cond_8
    const-string v32, "wifi_connection_priority_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 431
    .local v6, connMonitoringPref:Landroid/preference/CheckBoxPreference;
    const-string v32, "wifi_connection_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 433
    .local v7, connSettingsPref:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 434
    if-eqz v6, :cond_9

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "wifi_connection_monitor_enable"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    const/16 v32, 0x1

    :goto_2
    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 450
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "SKT"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_c

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 453
    .local v18, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v32, "iwlan_enabled_category"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 454
    .local v22, removablePref:Landroid/preference/Preference;
    if-eqz v22, :cond_a

    .line 455
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    :cond_a
    const-string v32, "iwlan_networks"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 457
    if-eqz v22, :cond_b

    .line 458
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 460
    :cond_b
    const-string v32, "add_other_iwlan"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 461
    if-eqz v22, :cond_c

    .line 462
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    .end local v18           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v22           #removablePref:Landroid/preference/Preference;
    :cond_c
    const-string v32, "mwlan_permission_allowed_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 469
    .local v16, mWlanEnabled:Landroid/preference/CheckBoxPreference;
    if-eqz v16, :cond_d

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "LGU"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 472
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string v33, "com.lguplus.common.wificm.mwlan"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v15

    .line 473
    .local v15, mWlan:Landroid/content/Context;
    const-string v32, "mwlan"

    const/16 v33, 0x4

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 474
    .local v21, pref_mWlan_4:Landroid/content/SharedPreferences;
    const-string v32, "mwlan"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 475
    .local v20, pref_mWlan:Landroid/content/SharedPreferences;
    const-string v32, "permission_allowed_2"

    const/16 v33, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 476
    .local v14, isAllowed_4:Z
    const-string v32, "permission_allowed_2"

    const/16 v33, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 477
    .local v13, isAllowed:Z
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 481
    .local v9, e:Landroid/content/SharedPreferences$Editor;
    const-string v32, "mwlan_permission_allowed_2"

    move-object/from16 v0, v32

    invoke-interface {v9, v0, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    const-string v32, "KEY_LGT_MWLAN_PERMISSION"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v9           #e:Landroid/content/SharedPreferences$Editor;
    .end local v13           #isAllowed:Z
    .end local v14           #isAllowed_4:Z
    .end local v15           #mWlan:Landroid/content/Context;
    .end local v20           #pref_mWlan:Landroid/content/SharedPreferences;
    .end local v21           #pref_mWlan_4:Landroid/content/SharedPreferences;
    :cond_d
    :goto_4
    const-string v32, "wifi_cmcc_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 502
    .local v5, cmccPriorityPref:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_e

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 512
    :cond_e
    const-string v32, "wifi_timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/android/sec_settings/SettingsSwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "wag_ip_settings"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    .line 553
    .local v29, wagIpSettings:Landroid/preference/Preference;
    if-eqz v29, :cond_10

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 556
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "use_wag_ip"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 557
    .local v26, useWagIp:Landroid/preference/Preference;
    if-eqz v26, :cond_11

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 560
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "wagfqdn"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    .line 561
    .local v25, useWagFqdn:Landroid/preference/Preference;
    if-eqz v25, :cond_12

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 564
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 565
    .local v28, wagIp:Landroid/preference/Preference;
    if-eqz v28, :cond_13

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 568
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    .line 569
    .local v30, wagPort:Landroid/preference/Preference;
    if-eqz v30, :cond_14

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 574
    :cond_14
    return-void

    .line 341
    .end local v3           #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .end local v4           #cmccConnectType:Landroid/preference/ListPreference;
    .end local v5           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .end local v6           #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #connSettingsPref:Landroid/preference/PreferenceScreen;
    .end local v10           #frequencyPref:Landroid/preference/ListPreference;
    .end local v16           #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    .end local v19           #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    .end local v23           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v25           #useWagFqdn:Landroid/preference/Preference;
    .end local v26           #useWagIp:Landroid/preference/Preference;
    .end local v28           #wagIp:Landroid/preference/Preference;
    .end local v29           #wagIpSettings:Landroid/preference/Preference;
    .end local v30           #wagPort:Landroid/preference/Preference;
    :cond_15
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 357
    .restart local v19       #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 435
    .restart local v3       #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .restart local v4       #cmccConnectType:Landroid/preference/ListPreference;
    .restart local v6       #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .restart local v7       #connSettingsPref:Landroid/preference/PreferenceScreen;
    .restart local v10       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v23       #sleepPolicyPref:Landroid/preference/ListPreference;
    :cond_17
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 439
    :cond_18
    if-eqz v6, :cond_19

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 443
    :cond_19
    if-eqz v7, :cond_9

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 486
    .restart local v16       #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 488
    .restart local v18       #parentPreference:Landroid/preference/PreferenceGroup;
    const-string v32, "mwlan_enabled_category"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 489
    .restart local v22       #removablePref:Landroid/preference/Preference;
    if-eqz v22, :cond_1b

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 493
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 484
    .end local v18           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v22           #removablePref:Landroid/preference/Preference;
    :catch_0
    move-exception v32

    goto/16 :goto_4
.end method

.method private refreshWifiInfo()V
    .locals 4

    .prologue
    const v3, 0x7f0904c2

    .line 973
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 975
    const-string v1, "mac_address"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 976
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 977
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 980
    const-string v0, "current_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 981
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 982
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 985
    const-string v0, "wifi_authentication_information"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 987
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 988
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getAuthenticationInformation()Ljava/lang/String;

    move-result-object v1

    .line 989
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 992
    if-eqz v1, :cond_5

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 993
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1002
    :cond_1
    :goto_3
    return-void

    .line 976
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 977
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 989
    goto :goto_2

    .line 995
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 998
    :cond_6
    if-eqz v2, :cond_1

    .line 999
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private showDialog()V
    .locals 4

    .prologue
    .line 1005
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1006
    const v1, 0x7f090d1c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$3;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/sec_settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$2;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/sec_settings/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1022
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1023
    return-void
.end method

.method private showIwlanDialog(Landroid/content/Context;Lcom/android/sec_settings/wifi/IwlanNetwork;Z)V
    .locals 1
    .parameter "context"
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/sec_settings/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/sec_settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/IwlanDialog;->dismiss()V

    .line 1119
    :cond_0
    new-instance v0, Lcom/android/sec_settings/wifi/IwlanDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/sec_settings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/sec_settings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/sec_settings/wifi/IwlanDialog;

    .line 1120
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/sec_settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/IwlanDialog;->show()V

    .line 1121
    return-void
.end method

.method private showPriorityDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/sec_settings/wifi/PrioritySettingDialog;

    if-eqz v0, :cond_0

    .line 1088
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "showPriorityDialog mPriorityDialog null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/sec_settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->dismiss()V

    .line 1091
    :cond_0
    new-instance v0, Lcom/android/sec_settings/wifi/PrioritySettingDialog;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;-><init>(Landroid/content/Context;Lcom/android/sec_settings/wifi/AccessPoint;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/sec_settings/wifi/PrioritySettingDialog;

    .line 1092
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/sec_settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/PrioritySettingDialog;->show()V

    .line 1093
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 577
    if-eqz p2, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a0027

    .line 581
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 583
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 585
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 579
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a0026

    goto :goto_0

    .line 582
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 592
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 593
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    .line 239
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 245
    iget-object v2, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v3, "wifitimer_pref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 247
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 250
    sget-boolean v2, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 253
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 254
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 258
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 263
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 190
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 192
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/sec_settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 618
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onDestroy()V

    .line 619
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 287
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 289
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 749
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, key:Ljava/lang/String;
    const-string v10, "frequency_band"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 753
    :try_start_0
    iget-object v11, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_0
    const-string v10, "sleep_policy"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 763
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 764
    .local v6, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_sleep_policy"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 766
    invoke-direct {p0, p1, v6}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 881
    .end local v6           #stringValue:Ljava/lang/String;
    .end local p1
    .end local p2
    :cond_1
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 754
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v2

    .line 755
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f090361

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 757
    const/4 v10, 0x0

    goto :goto_1

    .line 767
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 768
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f090238

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 770
    const/4 v10, 0x0

    goto :goto_1

    .line 773
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v10, "wifi_timer"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 774
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 775
    .local v4, enabled:Z
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceChange WIFI_TIMER:    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    check-cast p1, Lcom/android/sec_settings/SettingsSwitchPreference;

    .end local p1
    iput-object p1, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    .line 778
    if-eqz v4, :cond_4

    .line 780
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 781
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiTimer allowWifi:    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-boolean v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-nez v10, :cond_5

    .line 784
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/sec_settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 785
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v9, wifiToastIntent:Landroid/content/Intent;
    const-string v10, "info_type"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 787
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 788
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/sec_settings/wifi/AdvancedWifiSettings$SwitchHandler;

    if-eqz v10, :cond_3

    .line 789
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/sec_settings/wifi/AdvancedWifiSettings$SwitchHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings$SwitchHandler;->sendEmptyMessage(I)Z

    .line 791
    :cond_3
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/sec_settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 803
    .end local v9           #wifiToastIntent:Landroid/content/Intent;
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 804
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v10, "wifitimer_enabled"

    invoke-interface {v3, v10, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 805
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 806
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v1, alarm_intent:Landroid/content/Intent;
    const-string v10, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v11, 0x1389

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 793
    .end local v1           #alarm_intent:Landroid/content/Intent;
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "wifitimer_start_time_checked"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v12, "wifitimer_start_time"

    const-string v13, "19:00"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/sec_settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 795
    .local v8, wifiTimerStartTime:Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "wifitimer_end_time_checked"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v12, "wifitimer_end_time"

    const-string v13, "21:00"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/sec_settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 797
    .local v7, wifiTimerEndTime:Ljava/lang/String;
    :goto_4
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 798
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    const v11, 0x7f0902cb

    invoke-virtual {v10, v11}, Lcom/android/sec_settings/SettingsSwitchPreference;->setSummaryOn(I)V

    goto :goto_2

    .line 793
    .end local v7           #wifiTimerEndTime:Ljava/lang/String;
    .end local v8           #wifiTimerStartTime:Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_3

    .line 795
    .restart local v8       #wifiTimerStartTime:Ljava/lang/String;
    :cond_7
    const-string v7, ""

    goto :goto_4

    .line 800
    .restart local v7       #wifiTimerEndTime:Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/sec_settings/SettingsSwitchPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "~"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/sec_settings/SettingsSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 623
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 625
    const-string v1, "notify_open_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 626
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v7

    :cond_0
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 728
    :cond_1
    :goto_0
    return v7

    .line 629
    :cond_2
    const-string v1, "wifi_poor_network_detection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v6, v7

    :cond_3
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 634
    :cond_4
    const-string v1, "wifi_timer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 635
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/wifi/WifiTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902ca

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 642
    :cond_5
    const-string v1, "att_auto_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 643
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 644
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 645
    iput v7, v1, Landroid/os/Message;->what:I

    .line 647
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 648
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 649
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 651
    iget-object v2, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-nez v1, :cond_1

    .line 652
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connecct"

    if-eqz v0, :cond_6

    move v6, v7

    :cond_6
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 654
    :cond_7
    const-string v1, "wifi_cmcc_priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 655
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mSelected:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v6}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->showPriorityDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 659
    :cond_8
    const-string v1, "wifi_connection_priority_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 660
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 662
    if-eqz v0, :cond_9

    .line 663
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->showDialog()V

    goto/16 :goto_0

    .line 665
    :cond_9
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitor_enable"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/sec_settings/wifi/WifiConnectionMonitorService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 668
    :cond_a
    instance-of v1, p2, Lcom/android/sec_settings/wifi/IwlanNetwork;

    if-eqz v1, :cond_b

    .line 669
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Lcom/android/sec_settings/wifi/IwlanNetwork;

    invoke-direct {p0, v0, p2, v6}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/sec_settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 670
    :cond_b
    const-string v1, "add_other_iwlan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 671
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v2, v7}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/sec_settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 672
    :cond_c
    const-string v1, "mwlan_permission_allowed_2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 673
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 675
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.lguplus.common.wificm.mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 676
    const-string v2, "mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 677
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 678
    const-string v2, "permission_allowed_2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 679
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 680
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    const-string v2, "type"

    const-string v3, "notify"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v2, "action"

    const-string v3, "permissionChanged"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 684
    const-string v1, "AdvancedWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWlan isChecked =\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_d

    const v0, 0x7f090d21

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 689
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 686
    :cond_d
    const v0, 0x7f090d22

    goto :goto_1

    .line 690
    :cond_e
    const-string v1, "wifi_hotspot20_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 691
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    move-object v0, p2

    .line 692
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 693
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_enable"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v7

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    const-string v0, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_HOTSPOT20_ENABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v0, "wifi_hotspot20_roam_enable"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 699
    if-eqz v0, :cond_f

    .line 700
    if-eqz v2, :cond_11

    .line 701
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 706
    :cond_f
    :goto_3
    const/16 v0, 0x22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 708
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 709
    const-string v3, "enable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    if-nez v0, :cond_1

    .line 712
    const-string v0, "AdvancedWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_HOTSPOT20_ENABLE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    move v0, v6

    .line 693
    goto :goto_2

    .line 703
    :cond_11
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3

    .line 713
    :cond_12
    const-string v1, "wifi_hotspot20_roam_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 714
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    move-object v0, p2

    .line 715
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 716
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot20_roam_enable"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v6, v7

    :cond_13
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 717
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_HOTSPOT20_ROAM_ENABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/16 v2, 0x23

    iput v2, v1, Landroid/os/Message;->what:I

    .line 721
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 722
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 723
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 724
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 726
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 278
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 279
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 280
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/sec_settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 282
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1097
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStart()V

    .line 1099
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    new-instance v0, Lcom/android/sec_settings/wifi/IwlanEnabler;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/IwlanEnabler;-><init>(Lcom/android/sec_settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/sec_settings/wifi/IwlanEnabler;

    .line 1101
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/sec_settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/IwlanEnabler;->onStart()V

    .line 1103
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1107
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 1109
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/sec_settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/IwlanEnabler;->onStop()V

    .line 1112
    :cond_0
    return-void
.end method
