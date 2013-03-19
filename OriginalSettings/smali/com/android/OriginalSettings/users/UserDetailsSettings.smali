.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserDetailsSettings$AppState;
    }
.end annotation


# static fields
.field private static final SYSTEM_APPS:[Ljava/lang/String;


# instance fields
.field private mAppStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/users/UserDetailsSettings$AppState;",
            ">;"
        }
    .end annotation
.end field

.field private mIPm:Landroid/content/pm/IPackageManager;

.field private mInstalledAppGroup:Landroid/preference/PreferenceGroup;

.field private mNamePref:Landroid/preference/EditTextPreference;

.field private mNewUser:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSystemAppGroup:Landroid/preference/PreferenceGroup;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/users/UserDetailsSettings;->SYSTEM_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppStates:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->removeUserNow()V

    return-void
.end method

.method private initExistingUser()V
    .locals 6

    .prologue
    .line 145
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 146
    .local v3, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .line 147
    .local v0, foundUser:Landroid/content/pm/UserInfo;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 148
    .local v2, user:Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    iget v5, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    if-ne v4, v5, :cond_0

    .line 149
    move-object v0, v2

    .line 153
    .end local v2           #user:Landroid/content/pm/UserInfo;
    :cond_1
    if-eqz v0, :cond_2

    .line 154
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mNamePref:Landroid/preference/EditTextPreference;

    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mNamePref:Landroid/preference/EditTextPreference;

    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 157
    :cond_2
    return-void
.end method

.method private initNewUser()V
    .locals 3

    .prologue
    const v2, 0x7f0908f1

    .line 161
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserDetailsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserDetailsSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method private insertAppInfo(Landroid/preference/PreferenceGroup;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;Z)V
    .locals 8
    .parameter "group"
    .parameter
    .parameter "info"
    .parameter "defaultState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/users/UserDetailsSettings$AppState;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, appStateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/users/UserDetailsSettings$AppState;>;"
    if-eqz p3, :cond_0

    .line 186
    iget-object v5, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 187
    .local v5, pkgName:Ljava/lang/String;
    iget-object v6, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, name:Ljava/lang/String;
    iget-object v6, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 189
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v6, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserDetailsSettings$AppState;

    .line 190
    .local v1, appState:Lcom/android/settings/users/UserDetailsSettings$AppState;
    if-nez v1, :cond_1

    move v2, p4

    .line 191
    .local v2, enabled:Z
    :goto_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, appPref:Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_2

    .end local v4           #name:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 194
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 196
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 197
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 200
    .end local v0           #appPref:Landroid/preference/CheckBoxPreference;
    .end local v1           #appState:Lcom/android/settings/users/UserDetailsSettings$AppState;
    .end local v2           #enabled:Z
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_0
    return-void

    .line 190
    .restart local v1       #appState:Lcom/android/settings/users/UserDetailsSettings$AppState;
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_1
    iget-boolean v2, v1, Lcom/android/settings/users/UserDetailsSettings$AppState;->enabled:Z

    goto :goto_0

    .restart local v0       #appPref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #enabled:Z
    :cond_2
    move-object v4, v5

    .line 192
    goto :goto_1
.end method

.method private onRemoveUserClicked()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mNewUser:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->removeUserNow()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    goto :goto_0
.end method

.method private refreshApps()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 203
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mSystemAppGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 204
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mInstalledAppGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 206
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppStates:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 208
    .local v1, firstTime:Z
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v4, v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 212
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 215
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/users/UserDetailsSettings;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    iget v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    if-gez v7, :cond_2

    move v7, v8

    :goto_1
    invoke-interface {v9, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 221
    .local v3, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    .line 222
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppStates:Ljava/util/HashMap;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v10, Lcom/android/settings/users/UserDetailsSettings$AppState;

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v11, v11, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-direct {v10, v11}, Lcom/android/settings/users/UserDetailsSettings$AppState;-><init>(Z)V

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_1
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 226
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mSystemAppGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_0

    .line 229
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mSystemAppGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppStates:Ljava/util/HashMap;

    invoke-direct {p0, v7, v9, v3, v8}, Lcom/android/settings/users/UserDetailsSettings;->insertAppInfo(Landroid/preference/PreferenceGroup;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;Z)V

    goto :goto_0

    .line 215
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    iget v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 218
    :catch_0
    move-exception v5

    .line 219
    .local v5, re:Landroid/os/RemoteException;
    goto :goto_0

    .line 231
    .end local v5           #re:Landroid/os/RemoteException;
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mInstalledAppGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_0

    .line 234
    iget-object v7, p0, Lcom/android/settings/users/UserDetailsSettings;->mInstalledAppGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppStates:Ljava/util/HashMap;

    invoke-direct {p0, v7, v9, v3, v8}, Lcom/android/settings/users/UserDetailsSettings;->insertAppInfo(Landroid/preference/PreferenceGroup;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;Z)V

    goto :goto_0

    .line 237
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    return-void
.end method

.method private removeUserNow()V
    .locals 4

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mIPm:Landroid/content/pm/IPackageManager;

    iget v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->finish()V

    .line 181
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "UserDetailsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v4, 0x7f070072

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserDetailsSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v4, "user_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mNewUser:Z

    .line 96
    iget-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mNewUser:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_0
    iput v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    .line 97
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mIPm:Landroid/content/pm/IPackageManager;

    .line 99
    iget v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    if-ne v1, v3, :cond_2

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mIPm:Landroid/content/pm/IPackageManager;

    const v3, 0x7f0908f1

    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserDetailsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/pm/IPackageManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_2
    :goto_1
    const-string v1, "system_apps_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mSystemAppGroup:Landroid/preference/PreferenceGroup;

    .line 106
    const-string v1, "market_apps_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mInstalledAppGroup:Landroid/preference/PreferenceGroup;

    .line 107
    const-string v1, "user_name"

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mNamePref:Landroid/preference/EditTextPreference;

    .line 108
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserDetailsSettings;->setHasOptionsMenu(Z)V

    .line 111
    return-void

    .line 96
    :cond_3
    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x0

    .line 268
    packed-switch p1, :pswitch_data_0

    .line 282
    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0908f2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0908f3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 127
    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mNewUser:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0908ef

    :goto_0
    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 129
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 131
    return-void

    .line 127
    .end local v0           #addAccountItem:Landroid/view/MenuItem;
    :cond_0
    const v1, 0x7f0908f0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 136
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->onRemoveUserClicked()V

    .line 140
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 241
    instance-of v5, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2

    .line 242
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, packageName:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v6

    .line 246
    .local v2, newState:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/users/UserDetailsSettings;->mIPm:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    invoke-interface {v5, v3, v2, v7, v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v2           #newState:I
    .end local v3           #packageName:Ljava/lang/String;
    :cond_0
    :goto_1
    return v6

    .line 243
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    .line 247
    .restart local v2       #newState:I
    :catch_0
    move-exception v4

    .line 248
    .local v4, re:Landroid/os/RemoteException;
    const-string v5, "UserDetailsSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to change enabled state of package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 251
    .end local v2           #newState:I
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #re:Landroid/os/RemoteException;
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/settings/users/UserDetailsSettings;->mNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_0

    move-object v1, p2

    .line 252
    check-cast v1, Ljava/lang/String;

    .line 253
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v6, v7

    .line 254
    goto :goto_1

    .line 257
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/users/UserDetailsSettings;->mIPm:Landroid/content/pm/IPackageManager;

    iget v9, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-interface {v8, v9, v5}, Landroid/content/pm/IPackageManager;->updateUserName(ILjava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/android/settings/users/UserDetailsSettings;->mNamePref:Landroid/preference/EditTextPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 259
    :catch_1
    move-exception v4

    .restart local v4       #re:Landroid/os/RemoteException;
    move v6, v7

    .line 260
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 117
    iget v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserId:I

    if-lez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->initExistingUser()V

    .line 122
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->refreshApps()V

    .line 123
    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;->initNewUser()V

    goto :goto_0
.end method
