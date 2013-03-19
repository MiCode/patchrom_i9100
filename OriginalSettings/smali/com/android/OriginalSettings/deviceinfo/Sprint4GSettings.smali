.class public Lcom/android/settings/deviceinfo/Sprint4GSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Sprint4GSettings.java"


# instance fields
.field private KEY_4G_IP_ADDRESS:Ljava/lang/String;

.field private KEY_4G_NETWORK_PROVIDER:Ljava/lang/String;

.field private editTextSprint4GIPAddress:Landroid/preference/EditTextPreference;

.field private editTextSprint4GNetworkProvider:Landroid/preference/EditTextPreference;

.field private ipAddress:Ljava/lang/String;

.field private networkProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 31
    const-string v0, "sprint_4g_network_provider"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->KEY_4G_NETWORK_PROVIDER:Ljava/lang/String;

    .line 32
    const-string v0, "sprint_4g_ip_address"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->KEY_4G_IP_ADDRESS:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_1

    .line 137
    :cond_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const-string v0, ""

    .line 133
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public get4GIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 121
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 122
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 123
    .local v1, prop:Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public get4GNetworkProvider()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 94
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 97
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, dataNetworkSubtypeName:Ljava/lang/String;
    const-string v5, "LTE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 104
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .end local v1           #dataNetworkSubtypeName:Ljava/lang/String;
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    return-object v3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->addPreferencesFromResource(I)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->KEY_4G_NETWORK_PROVIDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->editTextSprint4GNetworkProvider:Landroid/preference/EditTextPreference;

    .line 44
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->KEY_4G_IP_ADDRESS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->editTextSprint4GIPAddress:Landroid/preference/EditTextPreference;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->get4GNetworkProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->networkProvider:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->networkProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->networkProvider:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->editTextSprint4GNetworkProvider:Landroid/preference/EditTextPreference;

    const-string v1, "Unknown"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->get4GIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->ipAddress:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->ipAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->ipAddress:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_3

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->editTextSprint4GIPAddress:Landroid/preference/EditTextPreference;

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Sprint4GSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 58
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->editTextSprint4GNetworkProvider:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->networkProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->editTextSprint4GIPAddress:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Sprint4GSettings;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 86
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 74
    return-void
.end method
