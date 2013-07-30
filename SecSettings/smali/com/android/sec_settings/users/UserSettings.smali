.class public Lcom/android/sec_settings/users/UserSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mUserListCategory:Landroid/preference/PreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private onAddUserClicked()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/sec_settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0908e7

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 79
    return-void
.end method

.method private updateUserList()V
    .locals 6

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/sec_settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 84
    .local v3, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v4, p0, Lcom/android/sec_settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 85
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 86
    .local v2, user:Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v4, :cond_0

    .line 87
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/sec_settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 88
    .local v1, pref:Landroid/preference/Preference;
    iget-object v4, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 91
    iget-object v4, p0, Lcom/android/sec_settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 93
    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #user:Landroid/content/pm/UserInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 46
    const-string v0, "user_list"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/sec_settings/users/UserSettings;->mUserListCategory:Landroid/preference/PreferenceGroup;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/users/UserSettings;->setHasOptionsMenu(Z)V

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 59
    const/4 v1, 0x1

    const v2, 0x7f0908e6

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 60
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 67
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/sec_settings/users/UserSettings;->onAddUserClicked()V

    .line 71
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    const-string v1, "user_id"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/sec_settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/users/UserDetailsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 105
    const/4 v3, 0x1

    .line 107
    :cond_0
    return v3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 54
    invoke-direct {p0}, Lcom/android/sec_settings/users/UserSettings;->updateUserList()V

    .line 55
    return-void
.end method
