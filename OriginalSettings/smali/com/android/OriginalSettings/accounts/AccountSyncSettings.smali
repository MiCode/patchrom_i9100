.class public Lcom/android/OriginalSettings/accounts/AccountSyncSettings;
.super Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccounts:[Landroid/accounts/Account;

.field private mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormat:Ljava/text/DateFormat;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mRemoveAccountButton:Landroid/widget/Button;

.field private mSyncNowButton:Landroid/widget/Button;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    .line 87
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->cancelAllAccountsSync()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method private addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v7, 0x0

    .line 250
    new-instance v0, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, p1, p2}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 252
    .local v0, item:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setPersistent(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 254
    .local v1, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 256
    .local v2, providerLabel:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    const-string v4, "AccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider needs a label for authority \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object v2, p2

    .line 260
    :cond_0
    const v4, 0x7f0b0623

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    return-void

    .line 254
    .end local v2           #providerLabel:Ljava/lang/CharSequence;
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cancelAllAccountsSync()V
    .locals 7

    .prologue
    .line 681
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v6, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    array-length v5, v6

    .local v5, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 682
    iget-object v6, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    aget-object v0, v6, v3

    .line 683
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 684
    .local v2, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 685
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 687
    .local v1, authority:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 688
    const/4 v6, 0x0

    invoke-direct {p0, v0, v1, v6}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 681
    .end local v1           #authority:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 693
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 404
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 405
    return-void
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 444
    .local v1, syncInfo:Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    const/4 v2, 0x1

    .line 448
    .end local v1           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 433
    if-eqz p3, :cond_0

    .line 434
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 435
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 440
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 9
    .parameter "startSync"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 410
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 412
    .local v5, pref:Landroid/preference/Preference;
    instance-of v7, v5, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    if-nez v7, :cond_1

    .line 410
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 415
    check-cast v6, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    .line 416
    .local v6, syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v6}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 419
    invoke-virtual {v6}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 422
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v7, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v7, :cond_4

    .line 423
    iget-object v7, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 424
    .local v1, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 426
    iget-object v7, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v7, v0, p1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 430
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private setFeedsState()V
    .locals 30

    .prologue
    .line 459
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 460
    .local v11, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v10

    .line 461
    .local v10, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v22, 0x0

    .line 462
    .local v22, syncIsFailing:Z
    const/4 v4, 0x0

    .line 465
    .local v4, anySyncEnabledAuth:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 467
    const/4 v12, 0x0

    .local v12, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_0
    if-ge v12, v9, :cond_f

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    .line 469
    .local v17, pref:Landroid/preference/Preference;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 467
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v23, v17

    .line 472
    check-cast v23, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    .line 474
    .local v23, syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual/range {v23 .. v23}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, authority:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 477
    .local v2, account:Landroid/accounts/Account;
    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v18

    .line 478
    .local v18, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    .line 479
    .local v21, syncEnabled:Z
    if-nez v18, :cond_5

    const/4 v6, 0x0

    .line 480
    .local v6, authorityIsPending:Z
    :goto_2
    if-nez v18, :cond_6

    const/4 v13, 0x0

    .line 482
    .local v13, initialSync:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v5}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 483
    .local v3, activelySyncing:Z
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_7

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/4 v14, 0x1

    .line 487
    .local v14, lastSyncFailed:Z
    :goto_4
    if-nez v21, :cond_8

    .line 488
    const/4 v14, 0x0

    .line 492
    :goto_5
    if-eqz v14, :cond_1

    if-nez v3, :cond_1

    if-nez v6, :cond_1

    .line 493
    const/16 v22, 0x1

    .line 495
    :cond_1
    const-string v26, "AccountSettings"

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 496
    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update sync status: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " active = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pend ="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_2
    if-nez v18, :cond_9

    const-wide/16 v19, 0x0

    .line 501
    .local v19, successEndTime:J
    :goto_6
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-eqz v26, :cond_a

    .line 502
    move-wide/from16 v0, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 503
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mDateFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 505
    .local v25, timeString:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 509
    .end local v25           #timeString:Ljava/lang/String;
    :goto_7
    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v24

    .line 511
    .local v24, syncState:I
    if-eqz v3, :cond_b

    if-ltz v24, :cond_b

    if-nez v13, :cond_b

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 513
    if-eqz v6, :cond_c

    if-ltz v24, :cond_c

    if-nez v13, :cond_c

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 516
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 517
    const-string v26, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 519
    .local v8, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v15

    .line 520
    .local v15, masterSyncAutomatically:Z
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v7

    .line 521
    .local v7, backgroundDataEnabled:Z
    if-eqz v15, :cond_3

    if-nez v7, :cond_d

    :cond_3
    const/16 v16, 0x1

    .line 522
    .local v16, oneTimeSyncMode:Z
    :goto_a
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 523
    if-nez v16, :cond_4

    if-eqz v21, :cond_e

    :cond_4
    const/16 v26, 0x1

    :goto_b
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 479
    .end local v3           #activelySyncing:Z
    .end local v6           #authorityIsPending:Z
    .end local v7           #backgroundDataEnabled:Z
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v13           #initialSync:Z
    .end local v14           #lastSyncFailed:Z
    .end local v15           #masterSyncAutomatically:Z
    .end local v16           #oneTimeSyncMode:Z
    .end local v19           #successEndTime:J
    .end local v24           #syncState:I
    :cond_5
    move-object/from16 v0, v18

    iget-boolean v6, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 480
    .restart local v6       #authorityIsPending:Z
    :cond_6
    move-object/from16 v0, v18

    iget-boolean v13, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 483
    .restart local v3       #activelySyncing:Z
    .restart local v13       #initialSync:Z
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 490
    .restart local v14       #lastSyncFailed:Z
    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 500
    :cond_9
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v19, v0

    goto/16 :goto_6

    .line 507
    .restart local v19       #successEndTime:J
    :cond_a
    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 511
    .restart local v24       #syncState:I
    :cond_b
    const/16 v26, 0x0

    goto :goto_8

    .line 513
    :cond_c
    const/16 v26, 0x0

    goto :goto_9

    .line 521
    .restart local v7       #backgroundDataEnabled:Z
    .restart local v8       #connManager:Landroid/net/ConnectivityManager;
    .restart local v15       #masterSyncAutomatically:Z
    :cond_d
    const/16 v16, 0x0

    goto :goto_a

    .line 523
    .restart local v16       #oneTimeSyncMode:Z
    :cond_e
    const/16 v26, 0x0

    goto :goto_b

    .line 525
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #activelySyncing:Z
    .end local v5           #authority:Ljava/lang/String;
    .end local v6           #authorityIsPending:Z
    .end local v7           #backgroundDataEnabled:Z
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v13           #initialSync:Z
    .end local v14           #lastSyncFailed:Z
    .end local v15           #masterSyncAutomatically:Z
    .end local v16           #oneTimeSyncMode:Z
    .end local v17           #pref:Landroid/preference/Preference;
    .end local v18           #status:Landroid/content/SyncStatusInfo;
    .end local v19           #successEndTime:J
    .end local v21           #syncEnabled:Z
    .end local v23           #syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    .end local v24           #syncState:I
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->setTextSyncNow(Z)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v22, :cond_10

    const/16 v26, 0x0

    :goto_c
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 529
    return-void

    .line 527
    :cond_10
    const/16 v26, 0x8

    goto :goto_c
.end method

.method private setTextSyncNow(Z)V
    .locals 13
    .parameter "bAnySyncEnabledAuth"

    .prologue
    const/4 v9, 0x1

    .line 634
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v1

    .line 635
    .local v1, currentSync:Landroid/content/SyncInfo;
    const/4 v3, 0x0

    .line 636
    .local v3, isAnyAuthority:Z
    const/4 v4, 0x0

    .line 637
    .local v4, isSyncOn:Z
    const/4 v7, 0x0

    .line 638
    .local v7, syncPendingCount:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .line 640
    .local v6, preferenceCount:I
    if-eqz v1, :cond_1

    iget-object v10, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 641
    const-string v10, "AccountSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AccountSyncSettings : currentSync : authority = [ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_4

    .line 646
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 647
    .local v5, pref:Landroid/preference/Preference;
    instance-of v10, v5, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    if-nez v10, :cond_2

    .line 645
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 643
    .end local v2           #i:I
    .end local v5           #pref:Landroid/preference/Preference;
    :cond_1
    const-string v10, "AccountSettings"

    const-string v11, "AccountSyncSettings : currentSync : nothing !!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 650
    .restart local v2       #i:I
    .restart local v5       #pref:Landroid/preference/Preference;
    :cond_2
    const/4 v3, 0x1

    move-object v8, v5

    .line 651
    check-cast v8, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    .line 652
    .local v8, syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v8}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, authority:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-static {v10, v0}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 654
    add-int/lit8 v7, v7, 0x1

    .line 657
    :cond_3
    iget-object v10, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-static {v10, v0}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 658
    const/4 v4, 0x1

    goto :goto_2

    .line 662
    .end local v0           #authority:Ljava/lang/String;
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v8           #syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 663
    iget-object v10, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    const v11, 0x7f0b07c8

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 664
    iget-object v10, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 673
    .end local p1
    :goto_3
    const-string v9, "AccountSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AccountSyncSettings : Sync button is [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ] and enabled is [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->isEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ] !!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-void

    .line 666
    .restart local p1
    :cond_5
    iget-object v10, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    const v11, 0x7f0b07c7

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 667
    if-eqz v3, :cond_7

    .line 668
    iget-object v10, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    if-eqz v11, :cond_6

    .end local p1
    :goto_4
    invoke-virtual {v10, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .restart local p1
    :cond_6
    move p1, v9

    goto :goto_4

    .line 670
    :cond_7
    iget-object v9, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3
.end method

.method private startSyncForEnabledProviders()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 400
    return-void
.end method

.method private updateAccountCheckboxes([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 540
    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 542
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v9

    .line 543
    .local v9, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 545
    .local v1, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    array-length v7, v9

    .local v7, n:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 546
    aget-object v8, v9, v4

    .line 547
    .local v8, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 548
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 549
    .local v2, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 550
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_0
    const-string v11, "AccountSettings"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 554
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onAccountUpdated: added authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to accountType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    iget-object v11, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 561
    :cond_2
    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 565
    .end local v8           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    if-ge v4, v7, :cond_4

    .line 566
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 568
    :cond_4
    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 570
    const/4 v4, 0x0

    array-length v7, p1

    :goto_3
    if-ge v4, v7, :cond_a

    .line 571
    aget-object v0, p1, v4

    .line 572
    .local v0, account:Landroid/accounts/Account;
    const-string v11, "AccountSettings"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 573
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "looking for sync adapters that match account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_5
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 576
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_9

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v11, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 577
    :cond_6
    const/4 v5, 0x0

    .local v5, j:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, m:I
    :goto_4
    if-ge v5, v6, :cond_9

    .line 578
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 580
    .local v3, authority:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    .line 581
    .local v10, syncState:I
    const-string v11, "AccountSettings"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 582
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  found authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_7
    if-lez v10, :cond_8

    .line 585
    invoke-direct {p0, v0, v3}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 577
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 570
    .end local v3           #authority:Ljava/lang/String;
    .end local v5           #j:I
    .end local v6           #m:I
    .end local v10           #syncState:I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 591
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 592
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_5
    if-ge v4, v7, :cond_b

    .line 593
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 592
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 595
    :cond_b
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "prefs"

    .prologue
    .line 619
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 620
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 621
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 622
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 627
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 619
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 171
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 173
    const v0, 0x7f08000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    .line 177
    const v0, 0x7f080012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mSyncNowButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$2;-><init>(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mRemoveAccountButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$3;-><init>(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f0801bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0801bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f0801ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 208
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 534
    iput-object p1, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    .line 535
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 536
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 537
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 216
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mDateFormat:Ljava/text/DateFormat;

    .line 217
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 220
    .local v1, arguments:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 221
    const-string v2, "AccountSettings"

    const-string v3, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 226
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 227
    const-string v2, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 602
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 604
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 606
    .local v1, providerName:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 607
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 609
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v2, p0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 611
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 612
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 615
    .end local v0           #prefs:Landroid/preference/PreferenceScreen;
    :cond_0
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 616
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 158
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f0b061f

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 95
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0620

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b061c

    new-instance v3, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings$1;-><init>(Lcom/android/OriginalSettings/accounts/AccountSyncSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 138
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0621

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 144
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0624

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0625

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 163
    const v1, 0x7f040006

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 167
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onPause()V

    .line 246
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 247
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 370
    instance-of v7, p2, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    if-eqz v7, :cond_3

    move-object v5, p2

    .line 371
    check-cast v5, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;

    .line 372
    .local v5, syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, authority:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 374
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 375
    .local v3, syncAutomatically:Z
    invoke-virtual {v5}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 376
    invoke-direct {p0, v0, v1, v6}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 393
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v3           #syncAutomatically:Z
    .end local v5           #syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    :cond_0
    :goto_0
    return v6

    .line 378
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authority:Ljava/lang/String;
    .restart local v3       #syncAutomatically:Z
    .restart local v5       #syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    :cond_1
    invoke-virtual {v5}, Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v4

    .line 379
    .local v4, syncOn:Z
    move v2, v3

    .line 380
    .local v2, oldSyncState:Z
    if-eq v4, v2, :cond_0

    .line 382
    invoke-static {v0, v1, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 386
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v4, :cond_0

    .line 387
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 393
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #oldSyncState:Z
    .end local v3           #syncAutomatically:Z
    .end local v4           #syncOn:Z
    .end local v5           #syncPref:Lcom/android/OriginalSettings/accounts/SyncStateCheckBoxPreference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 237
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 238
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 240
    invoke-super {p0}, Lcom/android/OriginalSettings/accounts/AccountPreferenceBase;->onResume()V

    .line 241
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;->setFeedsState()V

    goto :goto_0
.end method
