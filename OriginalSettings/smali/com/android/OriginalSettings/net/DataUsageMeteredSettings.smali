.class public Lcom/android/settings/net/DataUsageMeteredSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;
    }
.end annotation


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private mMobileCategory:Landroid/preference/PreferenceCategory;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiCategory:Landroid/preference/PreferenceCategory;

.field private mWifiDisabled:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings/net/DataUsageMeteredSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageMeteredSettings$1;-><init>(Lcom/android/settings/net/DataUsageMeteredSettings;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mFilter:Landroid/content/IntentFilter;

    .line 76
    iget-object v0, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/net/DataUsageMeteredSettings;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/net/DataUsageMeteredSettings;)Lcom/android/settings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method private buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
    .locals 4
    .parameter "context"
    .parameter "config"

    .prologue
    .line 140
    iget-object v3, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, networkId:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 142
    .local v2, template:Landroid/net/NetworkTemplate;
    new-instance v1, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings/net/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    .line 143
    .local v1, pref:Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;
    invoke-virtual {v1, v0}, Lcom/android/settings/net/DataUsageMeteredSettings$MeteredPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    return-object v1
.end method

.method private updateNetworks(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageMeteredSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    iget-object v2, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 119
    invoke-static {p1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 121
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/net/DataUsageMeteredSettings;->buildWifiPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 126
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 97
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    new-instance v1, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    .line 100
    iget-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 102
    const v1, 0x7f07001e

    invoke-virtual {p0, v1}, Lcom/android/settings/net/DataUsageMeteredSettings;->addPreferencesFromResource(I)V

    .line 103
    const-string v1, "mobile"

    invoke-virtual {p0, v1}, Lcom/android/settings/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mMobileCategory:Landroid/preference/PreferenceCategory;

    .line 104
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiCategory:Landroid/preference/PreferenceCategory;

    .line 105
    const-string v1, "wifi_disabled"

    invoke-virtual {p0, v1}, Lcom/android/settings/net/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mWifiDisabled:Landroid/preference/Preference;

    .line 107
    invoke-direct {p0, v0}, Lcom/android/settings/net/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/net/DataUsageMeteredSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method
