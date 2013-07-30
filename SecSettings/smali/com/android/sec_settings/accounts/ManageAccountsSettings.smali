.class public Lcom/android/sec_settings/accounts/ManageAccountsSettings;
.super Lcom/android/sec_settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAuthorities:[Ljava/lang/String;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mFirstAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private addAuthenticatorSettings()V
    .locals 3

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 444
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0, v0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 447
    :cond_0
    return-void
.end method

.method private requestOrCancelSyncForAccounts(Z)V
    .locals 10
    .parameter "sync"

    .prologue
    .line 266
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v7

    .line 267
    .local v7, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v2, extras:Landroid/os/Bundle;
    const-string v8, "force"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 271
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 272
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 273
    .local v5, pref:Landroid/preference/Preference;
    instance-of v8, v5, Lcom/android/sec_settings/AccountPreference;

    if-eqz v8, :cond_2

    .line 274
    check-cast v5, Lcom/android/sec_settings/AccountPreference;

    .end local v5           #pref:Landroid/preference/Preference;
    invoke-virtual {v5}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 276
    .local v0, account:Landroid/accounts/Account;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_2

    .line 277
    aget-object v6, v7, v4

    .line 278
    .local v6, sa:Landroid/content/SyncAdapterType;
    aget-object v8, v7, v4

    iget-object v8, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 280
    if-eqz p1, :cond_1

    .line 281
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 283
    :cond_1
    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v8}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    .end local v0           #account:Landroid/accounts/Account;
    .end local v4           #j:I
    .end local v6           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 291
    return-void
.end method

.method private startAccountSettings(Lcom/android/sec_settings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 158
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09079c

    invoke-virtual {p1}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 164
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .parameter "prefs"

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 451
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 452
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 453
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 454
    const/high16 v4, 0x1

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 455
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    if-nez v3, :cond_0

    .line 456
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 459
    :cond_0
    const-string v4, "account"

    iget-object v5, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x1000

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 463
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 464
    goto :goto_0

    .line 465
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 440
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 402
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    .line 403
    const v1, 0x7f07003c

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 404
    const/4 v7, 0x0

    .local v7, i:I
    array-length v10, p1

    .local v10, n:I
    :goto_1
    if-ge v7, v10, :cond_5

    .line 405
    aget-object v2, p1, v7

    .line 407
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 404
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 408
    :cond_2
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 410
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 411
    .local v13, showAccount:Z
    iget-object v1, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 412
    const/4 v13, 0x0

    .line 413
    iget-object v6, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_3
    if-ge v8, v9, :cond_3

    aget-object v11, v6, v8

    .line 414
    .local v11, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 415
    const/4 v13, 0x1

    .line 421
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_1

    .line 422
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 423
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/sec_settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 425
    .local v0, preference:Lcom/android/sec_settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    iget-object v1, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 427
    iput-object v2, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    goto :goto_2

    .line 413
    .end local v0           #preference:Lcom/android/sec_settings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #requestedAuthority:Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 431
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #requestedAuthority:Ljava/lang/String;
    .end local v13           #showAccount:Z
    :cond_5
    iget-object v1, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mFirstAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_6

    .line 432
    invoke-direct {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->addAuthenticatorSettings()V

    .line 439
    :goto_4
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0

    .line 435
    :cond_6
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    .local v12, settingsTop:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 111
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 114
    iget-object v3, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    .local v1, args:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "account_label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "account_label"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 123
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 470
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 472
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/sec_settings/AccountPreference;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 473
    check-cast v0, Lcom/android/sec_settings/AccountPreference;

    .line 474
    .local v0, accPref:Lcom/android/sec_settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    .end local v0           #accPref:Lcom/android/sec_settings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    .line 88
    :cond_0
    const v1, 0x7f07003c

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 176
    const v2, 0x7f0909d7

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 177
    .local v1, syncNow:Landroid/view/MenuItem;
    const/4 v2, 0x2

    const v3, 0x7f0909d9

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 179
    .local v0, syncCancel:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 180
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 183
    const v2, 0x7f02016a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 184
    const v2, 0x7f02015c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 188
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 189
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 102
    const v1, 0x7f040083

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 262
    invoke-super {p0, p1}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 256
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 259
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->requestOrCancelSyncForAccounts(Z)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 136
    instance-of v3, p2, Lcom/android/sec_settings/AccountPreference;

    if-eqz v3, :cond_1

    .line 138
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, p2

    .line 139
    check-cast v0, Lcom/android/sec_settings/AccountPreference;

    .line 140
    .local v0, pref:Lcom/android/sec_settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v1, syncmlDsIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    const-string v3, "AccountSettings"

    const-string v4, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0           #pref:Lcom/android/sec_settings/AccountPreference;
    .end local v1           #syncmlDsIntent:Landroid/content/Intent;
    .end local p2
    :goto_0
    return v2

    .line 150
    .restart local p2
    :cond_0
    check-cast p2, Lcom/android/sec_settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/sec_settings/AccountPreference;)V

    goto :goto_0

    .line 152
    .restart local p2
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 200
    const/4 v11, 0x1

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 201
    .local v10, syncNow:Landroid/view/MenuItem;
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 203
    .local v9, syncCancel:Landroid/view/MenuItem;
    if-eqz v10, :cond_7

    if-eqz v9, :cond_7

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, isSyncableAccount:Z
    const/4 v2, 0x0

    .line 206
    .local v2, isSyncEnabled:Z
    const/4 v4, 0x0

    .line 208
    .local v4, isSyncing:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v8

    .line 209
    .local v8, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-ge v1, v11, :cond_5

    .line 210
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 211
    .local v6, pref:Landroid/preference/Preference;
    instance-of v11, v6, Lcom/android/sec_settings/AccountPreference;

    if-nez v11, :cond_1

    .line 209
    .end local v6           #pref:Landroid/preference/Preference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .restart local v6       #pref:Landroid/preference/Preference;
    :cond_1
    check-cast v6, Lcom/android/sec_settings/AccountPreference;

    .end local v6           #pref:Landroid/preference/Preference;
    invoke-virtual {v6}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 217
    .local v0, account:Landroid/accounts/Account;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    array-length v11, v8

    if-ge v5, v11, :cond_0

    .line 218
    aget-object v7, v8, v5

    .line 219
    .local v7, sa:Landroid/content/SyncAdapterType;
    iget-object v11, v7, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mAccountType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 220
    const/4 v3, 0x1

    .line 221
    iget-object v11, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 222
    const/4 v2, 0x1

    .line 224
    :cond_2
    iget-object v11, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v7, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v0, v11}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 226
    :cond_3
    const/4 v4, 0x1

    .line 217
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    .end local v0           #account:Landroid/accounts/Account;
    .end local v5           #j:I
    .end local v7           #sa:Landroid/content/SyncAdapterType;
    :cond_5
    if-eqz v3, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    if-eqz v11, :cond_8

    if-nez v2, :cond_8

    .line 234
    :cond_6
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 235
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 236
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 237
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 238
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0x66

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 250
    .end local v1           #i:I
    .end local v2           #isSyncEnabled:Z
    .end local v3           #isSyncableAccount:Z
    .end local v4           #isSyncing:Z
    .end local v8           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_7
    :goto_2
    return-void

    .line 241
    .restart local v1       #i:I
    .restart local v2       #isSyncEnabled:Z
    .restart local v3       #isSyncableAccount:Z
    .restart local v4       #isSyncing:Z
    .restart local v8       #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_8
    if-nez v4, :cond_9

    const/4 v11, 0x1

    :goto_3
    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 242
    invoke-interface {v9, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 244
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 245
    invoke-interface {v10}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/16 v12, 0xff

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_2

    .line 241
    :cond_9
    const/4 v11, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onStart()V

    .line 95
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onStop()V

    .line 128
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 35

    .prologue
    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    if-nez v31, :cond_0

    .line 396
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v11

    .line 301
    .local v11, currentSync:Landroid/content/SyncInfo;
    const/4 v6, 0x0

    .line 302
    .local v6, anySyncFailed:Z
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 305
    .local v12, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v24

    .line 306
    .local v24, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 307
    .local v30, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .local v16, k:I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v20, v0

    .local v20, n:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 308
    aget-object v22, v24, v16

    .line 309
    .local v22, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v22 .. v22}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 310
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 313
    .end local v22           #sa:Landroid/content/SyncAdapterType;
    :cond_2
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    .local v10, count:I
    :goto_2
    if-ge v14, v10, :cond_13

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v21

    .line 315
    .local v21, pref:Landroid/preference/Preference;
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/sec_settings/AccountPreference;

    move/from16 v31, v0

    if-nez v31, :cond_4

    .line 313
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v4, v21

    .line 319
    check-cast v4, Lcom/android/sec_settings/AccountPreference;

    .line 320
    .local v4, accountPref:Lcom/android/sec_settings/AccountPreference;
    invoke-virtual {v4}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 321
    .local v3, account:Landroid/accounts/Account;
    const/16 v25, 0x0

    .line 322
    .local v25, syncCount:I
    const-wide/16 v17, 0x0

    .line 323
    .local v17, lastSuccessTime:J
    const/16 v27, 0x0

    .line 324
    .local v27, syncIsFailing:Z
    invoke-virtual {v4}, Lcom/android/sec_settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v7

    .line 325
    .local v7, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v28, 0x0

    .line 326
    .local v28, syncingNow:Z
    if-eqz v7, :cond_b

    .line 327
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 328
    .local v8, authority:Ljava/lang/String;
    invoke-static {v3, v8}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v23

    .line 329
    .local v23, status:Landroid/content/SyncStatusInfo;
    invoke-static {v3, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-static {v3, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v31

    if-lez v31, :cond_7

    const/16 v26, 0x1

    .line 332
    .local v26, syncEnabled:Z
    :goto_5
    invoke-static {v3, v8}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    .line 333
    .local v9, authorityIsPending:Z
    if-eqz v11, :cond_8

    iget-object v0, v11, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    new-instance v31, Landroid/accounts/Account;

    iget-object v0, v11, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    iget-object v0, v11, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    const/4 v5, 0x1

    .line 337
    .local v5, activelySyncing:Z
    :goto_6
    if-eqz v23, :cond_9

    if-eqz v26, :cond_9

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v31, v0

    const-wide/16 v33, 0x0

    cmp-long v31, v31, v33

    if-eqz v31, :cond_9

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_9

    const/16 v19, 0x1

    .line 342
    .local v19, lastSyncFailed:Z
    :goto_7
    if-eqz v19, :cond_5

    if-nez v5, :cond_5

    if-nez v9, :cond_5

    .line 343
    const/16 v27, 0x1

    .line 344
    const/4 v6, 0x1

    .line 346
    :cond_5
    or-int v28, v28, v5

    .line 347
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v31, v0

    cmp-long v31, v17, v31

    if-gez v31, :cond_6

    .line 348
    move-object/from16 v0, v23

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v17, v0

    .line 350
    :cond_6
    if-eqz v26, :cond_a

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    const/16 v31, 0x1

    :goto_8
    add-int v25, v25, v31

    .line 351
    goto/16 :goto_4

    .line 329
    .end local v5           #activelySyncing:Z
    .end local v9           #authorityIsPending:Z
    .end local v19           #lastSyncFailed:Z
    .end local v26           #syncEnabled:Z
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 333
    .restart local v9       #authorityIsPending:Z
    .restart local v26       #syncEnabled:Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 337
    .restart local v5       #activelySyncing:Z
    :cond_9
    const/16 v19, 0x0

    goto :goto_7

    .line 350
    .restart local v19       #lastSyncFailed:Z
    :cond_a
    const/16 v31, 0x0

    goto :goto_8

    .line 353
    .end local v5           #activelySyncing:Z
    .end local v8           #authority:Ljava/lang/String;
    .end local v9           #authorityIsPending:Z
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v19           #lastSyncFailed:Z
    .end local v23           #status:Landroid/content/SyncStatusInfo;
    .end local v26           #syncEnabled:Z
    :cond_b
    const-string v31, "AccountSettings"

    const/16 v32, 0x2

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 354
    const-string v31, "AccountSettings"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "no syncadapters found for "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_c
    const-string v31, "com.sec.android.app.sns3.facebook"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v31

    const-string v32, "com.facebook.auth.login"

    invoke-virtual/range {v31 .. v32}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 361
    .local v2, ac:[Landroid/accounts/Account;
    array-length v0, v2

    move/from16 v31, v0

    if-lez v31, :cond_d

    .line 362
    const/16 v31, 0x0

    aget-object v31, v2, v31

    const-string v32, "com.android.contacts"

    invoke-static/range {v31 .. v32}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v31

    if-eqz v31, :cond_e

    const/16 v31, 0x0

    aget-object v31, v2, v31

    const-string v32, "com.android.contacts"

    invoke-static/range {v31 .. v32}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v31

    if-lez v31, :cond_e

    const/4 v13, 0x1

    .line 365
    .local v13, fbsync:Z
    :goto_9
    if-eqz v13, :cond_d

    .line 366
    add-int/lit8 v25, v25, 0x1

    .line 372
    .end local v2           #ac:[Landroid/accounts/Account;
    .end local v13           #fbsync:Z
    :cond_d
    if-eqz v27, :cond_f

    .line 373
    const/16 v31, 0x2

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/android/sec_settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 362
    .restart local v2       #ac:[Landroid/accounts/Account;
    :cond_e
    const/4 v13, 0x0

    goto :goto_9

    .line 374
    .end local v2           #ac:[Landroid/accounts/Account;
    :cond_f
    if-nez v25, :cond_10

    .line 375
    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/android/sec_settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 376
    :cond_10
    if-lez v25, :cond_12

    .line 377
    if-eqz v28, :cond_11

    .line 378
    const/16 v31, 0x3

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/android/sec_settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 380
    :cond_11
    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/android/sec_settings/AccountPreference;->setSyncStatus(IZ)V

    .line 381
    const-wide/16 v31, 0x0

    cmp-long v31, v17, v31

    if-lez v31, :cond_3

    .line 382
    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/android/sec_settings/AccountPreference;->setSyncStatus(IZ)V

    .line 383
    move-wide/from16 v0, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    .line 385
    .local v29, timeString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0907a7

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v29, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/sec_settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 390
    .end local v29           #timeString:Ljava/lang/String;
    :cond_12
    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v4, v0, v1}, Lcom/android/sec_settings/AccountPreference;->setSyncStatus(IZ)V

    goto/16 :goto_3

    .line 394
    .end local v3           #account:Landroid/accounts/Account;
    .end local v4           #accountPref:Lcom/android/sec_settings/AccountPreference;
    .end local v7           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #lastSuccessTime:J
    .end local v21           #pref:Landroid/preference/Preference;
    .end local v25           #syncCount:I
    .end local v27           #syncIsFailing:Z
    .end local v28           #syncingNow:Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v32, v0

    if-eqz v6, :cond_14

    const/16 v31, 0x0

    :goto_a
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 394
    :cond_14
    const/16 v31, 0x8

    goto :goto_a
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
