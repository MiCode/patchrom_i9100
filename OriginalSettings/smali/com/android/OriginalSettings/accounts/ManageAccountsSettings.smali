.class public Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;
.super Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/OriginalSettings/DialogCreatable;


# instance fields
.field private mAddAccountButton1:Landroid/widget/Button;

.field private mAddAccountButton2:Landroid/widget/Button;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncSwitch:Landroid/widget/Switch;

.field private mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoIcon:Landroid/widget/ImageView;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mOneButtonLayout:Landroid/widget/LinearLayout;

.field private mSyncAllButton:Landroid/widget/Button;

.field private mTwoButtonsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private cancelSyncAllForEnabledProviders()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    .line 465
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 466
    return-void
.end method

.method private requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 4
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 491
    if-eqz p3, :cond_0

    .line 492
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : request : account = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 502
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 498
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : cancel : account = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncAllForEnabledProviders(Z)V
    .locals 11
    .parameter "startSync"

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 471
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 472
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/OriginalSettings/AccountPreference;

    .line 473
    .local v6, pref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {v6}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 474
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v6}, Lcom/android/OriginalSettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v1

    .line 475
    .local v1, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 476
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    .local v2, authority:Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 478
    .local v7, syncEnabled:Z
    iget-object v8, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v7, :cond_0

    .line 479
    :cond_1
    invoke-direct {p0, v0, v2, p1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 483
    .end local v2           #authority:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #syncEnabled:Z
    :cond_2
    const-string v8, "AccountSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ManageAccountsSettings : requestOrCancelSyncAllForEnabledProviders : no syncadapters found for [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_4
    return-void
.end method

.method private setTextSyncAll(Z)V
    .locals 16
    .parameter "bAnySyncEnabledAuth"

    .prologue
    .line 322
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v4

    .line 323
    .local v4, currentSync:Landroid/content/SyncInfo;
    if-eqz v4, :cond_1

    const/4 v9, 0x1

    .line 324
    .local v9, isSyncActive:Z
    :goto_0
    const/4 v8, 0x0

    .line 325
    .local v8, isAnyAuthority:Z
    const/4 v12, 0x0

    .line 326
    .local v12, syncPendingCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    .line 328
    .local v11, preferenceCount:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v11, :cond_4

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/OriginalSettings/AccountPreference;

    .line 330
    .local v10, pref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {v10}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 331
    .local v1, account:Landroid/accounts/Account;
    invoke-virtual {v10}, Lcom/android/OriginalSettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v2

    .line 332
    .local v2, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 333
    const/4 v8, 0x1

    .line 334
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    .local v3, authority:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 336
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 323
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #authority:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #isAnyAuthority:Z
    .end local v9           #isSyncActive:Z
    .end local v10           #pref:Lcom/android/OriginalSettings/AccountPreference;
    .end local v11           #preferenceCount:I
    .end local v12           #syncPendingCount:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 340
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #i:I
    .restart local v8       #isAnyAuthority:Z
    .restart local v9       #isSyncActive:Z
    .restart local v10       #pref:Lcom/android/OriginalSettings/AccountPreference;
    .restart local v11       #preferenceCount:I
    .restart local v12       #syncPendingCount:I
    :cond_2
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ManageAccountsSettings : setSyncButtonText : no syncadapters found for [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 347
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_4
    if-nez v11, :cond_5

    .line 349
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : Sync button is removed !!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local p1
    :goto_3
    return-void

    .line 352
    .restart local p1
    :cond_5
    if-nez v9, :cond_8

    if-nez v12, :cond_8

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v14, 0x7f0b07c6

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    .line 356
    if-eqz v8, :cond_7

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v14}, Landroid/widget/Switch;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_6

    .end local p1
    :goto_4
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    :goto_5
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ManageAccountsSettings : Sync button is [ Sync all ] and enable is [ "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->isEnabled()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 369
    :catch_0
    move-exception v5

    .line 370
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : setTextSyncAll() : Null Pointer Exception!!!"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 357
    .end local v5           #e:Ljava/lang/NullPointerException;
    .restart local p1
    :cond_6
    const/16 p1, 0x1

    goto :goto_4

    .line 359
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_5

    .line 363
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const v14, 0x7f0b0612

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 367
    const-string v13, "AccountSettings"

    const-string v14, "ManageAccountsSettings : Sync button is [ Cancel sync ] !!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private startAccountSettings(Lcom/android/OriginalSettings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 193
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 194
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0604

    invoke-virtual {p1}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 199
    return-void
.end method

.method private startSyncAllForEnabledProvider()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    .line 460
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 461
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 17
    .parameter "accounts"

    .prologue
    .line 377
    const-string v7, ""

    .line 378
    .local v7, SalesCode:Ljava/lang/String;
    const-string v12, ""

    .line 379
    .local v12, myphonebook_isd:Ljava/lang/String;
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 383
    const/4 v9, 0x0

    .local v9, i:I
    move-object/from16 v0, p1

    array-length v13, v0

    .local v13, n:I
    :goto_1
    if-ge v9, v13, :cond_5

    .line 384
    aget-object v3, p1, v9

    .line 385
    .local v3, account:Landroid/accounts/Account;
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 387
    .local v5, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x1

    .line 388
    .local v15, showAccount:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 389
    const/4 v15, 0x0

    .line 390
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v8, arr$:[Ljava/lang/String;
    array-length v11, v8

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v11, :cond_1

    aget-object v14, v8, v10

    .line 391
    .local v14, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 392
    const/4 v15, 0x1

    .line 398
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #requestedAuthority:Ljava/lang/String;
    :cond_1
    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 400
    .local v6, providerName:Ljava/lang/CharSequence;
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 403
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v16, "com.android.tmo_myphonebook"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 433
    :cond_2
    new-instance v1, Lcom/android/OriginalSettings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/OriginalSettings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    .line 435
    .local v1, preference:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    .end local v1           #preference:Lcom/android/OriginalSettings/AccountPreference;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #providerName:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 390
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v14       #requestedAuthority:Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 439
    .end local v3           #account:Landroid/accounts/Account;
    .end local v5           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v14           #requestedAuthority:Ljava/lang/String;
    .end local v15           #showAccount:Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 107
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 109
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    .line 110
    const v3, 0x7f0800f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    .line 111
    const v3, 0x7f0800ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    .line 113
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mOneButtonLayout:Landroid/widget/LinearLayout;

    .line 118
    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mTwoButtonsLayout:Landroid/widget/LinearLayout;

    .line 120
    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    .line 121
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 125
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 132
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 134
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const v4, 0x7f0b07c9

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const v4, 0x7f0b07ca

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 144
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 145
    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$1;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 156
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 3

    .prologue
    .line 445
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/AccountPreference;

    .line 447
    .local v1, pref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 448
    invoke-virtual {v1}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v1           #pref:Lcom/android/OriginalSettings/AccountPreference;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccountButton1:Landroid/widget/Button;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAddAccountButton2:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 506
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Add account button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 520
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mSyncAllButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0b07c6

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 512
    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Sync all button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->startSyncAllForEnabledProvider()V

    .line 518
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto :goto_0

    .line 515
    :cond_3
    const-string v1, "AccountSettings"

    const-string v2, "ManageAccountsSettings : Cancel sync button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->cancelSyncAllForEnabledProviders()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 98
    const v1, 0x7f040051

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 166
    instance-of v1, p2, Lcom/android/OriginalSettings/AccountPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 168
    check-cast v0, Lcom/android/OriginalSettings/AccountPreference;

    .line 170
    .local v0, pref:Lcom/android/OriginalSettings/AccountPreference;
    if-eqz v0, :cond_0

    .line 185
    :cond_0
    check-cast p2, Lcom/android/OriginalSettings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/OriginalSettings/AccountPreference;)V

    .line 189
    const/4 v1, 0x1

    .end local v0           #pref:Lcom/android/OriginalSettings/AccountPreference;
    :goto_0
    return v1

    .line 187
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onStart()V

    .line 92
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 93
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onStop()V

    .line 161
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 162
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 30

    .prologue
    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    if-nez v26, :cond_0

    .line 319
    :goto_0
    return-void

    .line 246
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Switch;->setChecked(Z)V

    .line 251
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v11

    .line 253
    .local v11, currentSync:Landroid/content/SyncInfo;
    const/4 v6, 0x0

    .line 254
    .local v6, anySyncFailed:Z
    const/4 v5, 0x0

    .line 257
    .local v5, anySyncEnabledAuth:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v20

    .line 258
    .local v20, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v25, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, k:I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .local v16, n:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    .line 260
    aget-object v18, v20, v14

    .line 261
    .local v18, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v18 .. v18}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 262
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 265
    .end local v18           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v12, 0x0

    .local v12, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    .local v10, count:I
    :goto_2
    if-ge v12, v10, :cond_f

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    .line 267
    .local v17, pref:Landroid/preference/Preference;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/OriginalSettings/AccountPreference;

    move/from16 v26, v0

    if-nez v26, :cond_4

    .line 265
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v3, v17

    .line 271
    check-cast v3, Lcom/android/OriginalSettings/AccountPreference;

    .line 272
    .local v3, accountPref:Lcom/android/OriginalSettings/AccountPreference;
    invoke-virtual {v3}, Lcom/android/OriginalSettings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 273
    .local v2, account:Landroid/accounts/Account;
    const/16 v21, 0x0

    .line 274
    .local v21, syncCount:I
    const/16 v23, 0x0

    .line 275
    .local v23, syncIsFailing:Z
    invoke-virtual {v3}, Lcom/android/OriginalSettings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v7

    .line 276
    .local v7, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    .line 277
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 278
    .local v8, authority:Ljava/lang/String;
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v19

    .line 279
    .local v19, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-static {v2, v8}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_6

    const/16 v22, 0x1

    .line 282
    .local v22, syncEnabled:Z
    :goto_5
    invoke-static {v2, v8}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v9

    .line 283
    .local v9, authorityIsPending:Z
    if-eqz v11, :cond_7

    iget-object v0, v11, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    new-instance v26, Landroid/accounts/Account;

    iget-object v0, v11, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v11, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    const/4 v4, 0x1

    .line 287
    .local v4, activelySyncing:Z
    :goto_6
    if-eqz v19, :cond_8

    if-eqz v22, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_8

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    const/4 v15, 0x1

    .line 292
    .local v15, lastSyncFailed:Z
    :goto_7
    if-eqz v15, :cond_5

    if-nez v4, :cond_5

    if-nez v9, :cond_5

    .line 293
    const/16 v23, 0x1

    .line 294
    const/4 v6, 0x1

    .line 296
    :cond_5
    if-eqz v22, :cond_9

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x1

    :goto_8
    add-int v21, v21, v26

    .line 297
    goto/16 :goto_4

    .line 279
    .end local v4           #activelySyncing:Z
    .end local v9           #authorityIsPending:Z
    .end local v15           #lastSyncFailed:Z
    .end local v22           #syncEnabled:Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_5

    .line 283
    .restart local v9       #authorityIsPending:Z
    .restart local v22       #syncEnabled:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    .line 287
    .restart local v4       #activelySyncing:Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_7

    .line 296
    .restart local v15       #lastSyncFailed:Z
    :cond_9
    const/16 v26, 0x0

    goto :goto_8

    .line 299
    .end local v4           #activelySyncing:Z
    .end local v8           #authority:Ljava/lang/String;
    .end local v9           #authorityIsPending:Z
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v15           #lastSyncFailed:Z
    .end local v19           #status:Landroid/content/SyncStatusInfo;
    .end local v22           #syncEnabled:Z
    :cond_a
    const-string v26, "AccountSettings"

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 300
    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "no syncadapters found for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_b
    const/16 v24, 0x1

    .line 304
    .local v24, syncStatus:I
    if-eqz v23, :cond_d

    .line 305
    const/16 v24, 0x2

    .line 306
    const/4 v5, 0x1

    .line 313
    :cond_c
    :goto_9
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/OriginalSettings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_3

    .line 307
    :cond_d
    if-nez v21, :cond_e

    .line 308
    const/16 v24, 0x1

    goto :goto_9

    .line 309
    :cond_e
    if-lez v21, :cond_c

    .line 310
    const/16 v24, 0x0

    .line 311
    const/4 v5, 0x1

    goto :goto_9

    .line 316
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #accountPref:Lcom/android/OriginalSettings/AccountPreference;
    .end local v7           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #pref:Landroid/preference/Preference;
    .end local v21           #syncCount:I
    .end local v23           #syncIsFailing:Z
    .end local v24           #syncStatus:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v6, :cond_10

    const/16 v26, 0x0

    :goto_a
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    if-eqz v6, :cond_11

    const/16 v26, 0x0

    :goto_b
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->setTextSyncAll(Z)V

    goto/16 :goto_0

    .line 316
    :cond_10
    const/16 v26, 0x8

    goto :goto_a

    .line 317
    :cond_11
    const/16 v26, 0x8

    goto :goto_b
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/OriginalSettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 208
    return-void
.end method
