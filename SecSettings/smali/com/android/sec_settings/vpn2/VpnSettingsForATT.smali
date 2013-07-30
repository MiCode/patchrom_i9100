.class public Lcom/android/sec_settings/vpn2/VpnSettingsForATT;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "VpnSettingsForATT.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAdvVPN:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/vpn2/VpnSettingsForATT;->addPreferencesFromResource(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettingsForATT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "adv_vpn"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    .line 48
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettingsForATT;->mAdvVPN:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 60
    const-string v1, "android.samsung.HiddenIPSecClient.launcher"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/vpn2/VpnSettingsForATT;->startActivity(Landroid/content/Intent;)V

    .line 64
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
