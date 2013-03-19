.class public Lcom/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# instance fields
.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v11, 0x10

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v7, 0x7f070044

    invoke-virtual {p0, v7}, Lcom/android/settings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 47
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_1

    move-object v4, v1

    .line 50
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 51
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_1

    .line 52
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 54
    .local v3, padding:I
    invoke-virtual {v0, v9, v9, v3, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 55
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 57
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 64
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    const-string v7, "toggle_android_beam"

    invoke-virtual {p0, v7}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    .line 65
    .local v2, androidBeam:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    const-string v7, "toggle_rw_p2p"

    invoke-virtual {p0, v7}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    .line 67
    .local v6, rwP2pSwitch:Landroid/preference/SwitchPreferenceScreen;
    new-instance v7, Lcom/android/settings/nfc/NfcEnabler;

    invoke-direct {v7, v1, v0, v2, v6}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v7, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 75
    .end local v6           #rwP2pSwitch:Landroid/preference/SwitchPreferenceScreen;
    :goto_0
    return-void

    .line 70
    :cond_2
    const-string v7, "cat_rw_p2p"

    invoke-virtual {p0, v7}, Lcom/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 71
    .local v5, rwP2pCat:Landroid/preference/PreferenceGroup;
    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    :cond_3
    new-instance v7, Lcom/android/settings/nfc/NfcEnabler;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v0, v2, v8}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v7, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 91
    :cond_0
    return-void
.end method
