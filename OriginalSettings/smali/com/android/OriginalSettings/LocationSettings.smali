.class public Lcom/android/OriginalSettings/LocationSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mPdr:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mUseLocation:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 72
    const-string v0, "LocationSettings"

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/LocationSettings;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/LocationSettings;->selectPdrDescription(ZZ)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 102
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 105
    :cond_0
    const v2, 0x7f050018

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/LocationSettings;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 108
    const-string v2, "location_network"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v2, "location_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 110
    const-string v2, "assisted_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 113
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v5, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/GoogleLocationSettingHelper;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, useLocation:Landroid/preference/CheckBoxPreference;
    const-string v2, "location_use_for_services"

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 122
    const v2, 0x7f0b040b

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 123
    const v2, 0x7f0b040c

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 128
    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 130
    iput-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    .line 134
    .end local v1           #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0b0405

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "location_pdr"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    .line 150
    return-object v0

    .restart local v1       #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_4
    move v2, v4

    .line 124
    goto :goto_0
.end method

.method private selectPdrDescription(ZZ)V
    .locals 5
    .parameter "selection"
    .parameter "dontask"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 295
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPdrDescription : selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and dont\'ask is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-ne p2, v3, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_location_pdr_desc"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    :cond_0
    if-ne p1, v3, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private showPDRDescription()V
    .locals 8

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 311
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040087

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 313
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0801a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 314
    .local v3, tvPdrDesc:Landroid/widget/TextView;
    const v5, 0x7f0801a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 316
    .local v0, cbDontAsk:Landroid/widget/CheckBox;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b040d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/OriginalSettings/LocationSettings$5;

    invoke-direct {v7, p0, v0}, Lcom/android/OriginalSettings/LocationSettings$5;-><init>(Lcom/android/OriginalSettings/LocationSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/OriginalSettings/LocationSettings$4;

    invoke-direct {v7, p0, v0}, Lcom/android/OriginalSettings/LocationSettings$4;-><init>(Lcom/android/OriginalSettings/LocationSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/OriginalSettings/LocationSettings$3;

    invoke-direct {v6, p0, v0}, Lcom/android/OriginalSettings/LocationSettings$3;-><init>(Lcom/android/OriginalSettings/LocationSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 329
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 330
    return-void
.end method

.method private updateLocationToggles()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 230
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 232
    .local v3, res:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "enterprise_policy"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 234
    .local v1, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 236
    .local v2, mLP:Landroid/app/enterprise/LocationPolicy;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/enterprise/LocationPolicy;->isLocationProvidersEnableForced()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 238
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 239
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 242
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    if-eqz v2, :cond_4

    .line 246
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 247
    iget-object v7, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v4, "network"

    invoke-virtual {v2, v4}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 249
    :cond_3
    iget-object v7, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const-string v4, "gps"

    invoke-virtual {v2, v4}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 252
    :cond_4
    const-string v4, "gps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 254
    .local v0, gpsEnabled:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v7, "network"

    invoke-static {v3, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 256
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 257
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 258
    iget-object v7, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v4, "assisted_gps_enabled"

    const/4 v8, 0x2

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 260
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 264
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 265
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    const-string v7, "location_pdr_enabled"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_9

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 267
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #gpsEnabled:Z
    :cond_6
    move v4, v6

    .line 247
    goto :goto_1

    :cond_7
    move v4, v6

    .line 249
    goto :goto_2

    .restart local v0       #gpsEnabled:Z
    :cond_8
    move v4, v6

    .line 258
    goto :goto_3

    :cond_9
    move v5, v6

    .line 265
    goto :goto_4
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 278
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 279
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 283
    if-nez p2, :cond_0

    move v0, v1

    .line 284
    .end local p2
    .local v0, newValue:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/OriginalSettings/GoogleLocationSettingHelper;->setUseLocationForServices(Landroid/content/Context;Z)V

    .line 291
    .end local v0           #newValue:Z
    :goto_1
    return v1

    .line 283
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 291
    .restart local p2
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 175
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "network"

    iget-object v5, p0, Lcom/android/OriginalSettings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 223
    :cond_0
    :goto_0
    return v3

    .line 178
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 179
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 180
    .local v0, enabled:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "gps"

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 182
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 185
    .end local v0           #enabled:Z
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "assisted_gps_enabled"

    iget-object v6, p0, Lcom/android/OriginalSettings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 207
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_7

    .line 208
    iget-object v4, p0, Lcom/android/OriginalSettings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v3, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "need_location_pdr_desc"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 211
    .local v1, needToAsk:I
    iget-object v2, p0, Lcom/android/OriginalSettings/LocationSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Need to ask for pdr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-ne v1, v3, :cond_5

    .line 213
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->showPDRDescription()V

    goto :goto_0

    .line 215
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "location_pdr_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 217
    .end local v1           #needToAsk:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_pdr_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 220
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 159
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 160
    invoke-direct {p0}, Lcom/android/OriginalSettings/LocationSettings;->updateLocationToggles()V

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/OriginalSettings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/LocationSettings$1;-><init>(Lcom/android/OriginalSettings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStart()V

    .line 85
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/OriginalSettings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 98
    :cond_0
    return-void
.end method
