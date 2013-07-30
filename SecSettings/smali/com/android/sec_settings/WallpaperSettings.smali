.class public Lcom/android/sec_settings/WallpaperSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "WallpaperSettings.java"


# instance fields
.field mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

.field private mLockScreenWallpaper:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/sec_settings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 56
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/sec_settings/WallpaperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/sec_settings/WallpaperSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 60
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/WallpaperSettings;->addPreferencesFromResource(I)V

    .line 62
    const-string v2, "homescreen_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/sec_settings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 63
    const-string v2, "lockscreen_wallpaper"

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/sec_settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    .line 66
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, download_contents:Ljava/lang/String;
    const-string v2, "Wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/sec_settings/WallpaperSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "download_wallpaper"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 90
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcom/android/sec_settings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, pickWallpaper:Landroid/content/Intent;
    const v2, 0x7f0908c3

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/WallpaperSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/WallpaperSettings;->startActivity(Landroid/content/Intent;)V

    .line 101
    .end local v0           #pickWallpaper:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 77
    iget-object v1, p0, Lcom/android/sec_settings/WallpaperSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/sec_settings/WallpaperSettings;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 79
    .local v0, restrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    iget-object v1, p0, Lcom/android/sec_settings/WallpaperSettings;->mHomeScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/android/sec_settings/WallpaperSettings;->mLockScreenWallpaper:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 81
    const-string v1, "both_wallpaper"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/WallpaperSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 85
    .end local v0           #restrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    :cond_0
    return-void
.end method
