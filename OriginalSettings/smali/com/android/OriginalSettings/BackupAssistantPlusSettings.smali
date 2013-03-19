.class public Lcom/android/settings/BackupAssistantPlusSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BackupAssistantPlusSettings.java"


# instance fields
.field private mBuaPlusContacts:Landroid/preference/PreferenceScreen;

.field private mBuaPlusMedia:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isContactsVUX()Z
    .locals 2

    .prologue
    .line 83
    const-string v0, "SCH-I705"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->addPreferencesFromResource(I)V

    .line 46
    const-string v0, "bua_plus_contacts"

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    .line 47
    const-string v0, "bua_plus_media"

    invoke-virtual {p0, v0}, Lcom/android/settings/BackupAssistantPlusSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    .line 48
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0072

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, actions:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 55
    .local v0, action:Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 56
    iget-object v5, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 57
    invoke-direct {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->isContactsVUX()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    const/4 v5, 0x2

    aget-object v0, v1, v5

    .line 66
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 68
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v3}, Lcom/android/settings/BackupAssistantPlusSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    return v4

    .line 60
    :cond_1
    aget-object v0, v1, v4

    goto :goto_0

    .line 62
    :cond_2
    iget-object v5, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    const/4 v5, 0x1

    aget-object v0, v1, v5

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_1
.end method
