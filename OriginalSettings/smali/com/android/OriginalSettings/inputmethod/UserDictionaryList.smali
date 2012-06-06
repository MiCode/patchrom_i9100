.class public Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "UserDictionaryList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static getUserDictionaryLocalesList(Landroid/app/Activity;)Ljava/util/Set;
    .locals 10
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 48
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "locale"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 51
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/TreeSet;

    invoke-direct {v9}, Ljava/util/TreeSet;-><init>()V

    .line 52
    .local v9, localeList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v7, :cond_0

    .line 63
    :goto_0
    return-object v3

    .line 55
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v0, "locale"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 58
    .local v6, columnIndex:I
    :cond_1
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, locale:Ljava/lang/String;
    if-eqz v8, :cond_3

    .end local v8           #locale:Ljava/lang/String;
    :goto_1
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    .end local v6           #columnIndex:I
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, v9

    .line 63
    goto :goto_0

    .line 59
    .restart local v6       #columnIndex:I
    .restart local v8       #locale:Ljava/lang/String;
    :cond_3
    const-string v8, ""

    goto :goto_1
.end method


# virtual methods
.method protected createUserDictSettings(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .parameter "userDictGroup"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 73
    invoke-static {v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesList(Landroid/app/Activity;)Ljava/util/Set;

    move-result-object v3

    .line 75
    .local v3, localeList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 82
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, locale:Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/preference/Preference;
    .locals 4
    .parameter "locale"
    .parameter "activity"

    .prologue
    .line 90
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, newPref:Landroid/preference/Preference;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 103
    return-object v1

    .line 95
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const v2, 0x7f0b04e0

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    const-string v2, "locale"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/android/OriginalSettings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 44
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->createUserDictSettings(Landroid/preference/PreferenceGroup;)V

    .line 110
    return-void
.end method
