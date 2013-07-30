.class public Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/sec_settings/cloud/CloudDialog$DialogListener;


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private categoryDropbox:Landroid/preference/PreferenceGroup;

.field private categorySamsungServices:Landroid/preference/PreferenceGroup;

.field private dialogFragment:Landroid/app/DialogFragment;

.field private isDropboxAvailable:Z

.field private mBackUp:Landroid/preference/Preference;

.field private mCloudReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSync:Landroid/preference/Preference;

.field private mIsConnected:Z

.field private mPrefAddSamsungAccount:Landroid/preference/Preference;

.field private mPrefDropboxAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

.field private mPrefPhotos:Landroid/preference/Preference;

.field private mPrefSamsungAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

.field private mPrefSetAccount:Landroid/preference/Preference;

.field private mPrefUsage:Landroid/preference/Preference;

.field private mPrefVideos:Landroid/preference/Preference;

.field private mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

.field private mSettings:Lcom/android/sec_settings/cloud/CloudSettings;

.field private mStorage:Ljava/lang/String;

.field private setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 59
    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 146
    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 151
    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    .line 156
    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 650
    new-instance v0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$2;-><init>(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)V

    iput-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)Lcom/android/sec_settings/cloud/CloudSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/sec_settings/cloud/CloudSettings;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;Lcom/android/sec_settings/cloud/CloudSettings;)Lcom/android/sec_settings/cloud/CloudSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/sec_settings/cloud/CloudSettings;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->requestDropboxAuth()V

    return-void
.end method

.method private addSamsungAccount()V
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 227
    .local v0, samsungAccount:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 241
    :cond_0
    return-void
.end method

.method private getPreferencesReference()V
    .locals 5

    .prologue
    .line 265
    const-string v1, "category_samsungservices"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    .line 266
    const-string v1, "category_dropbox"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 267
    const-string v1, "pref_add_samsung_account"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    .line 268
    const-string v1, "pref_dataSync"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    .line 269
    const-string v1, "pref_backUp"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    .line 270
    const-string v1, "samsung_account"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/cloud/CloudAccountPreference;

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    .line 271
    const-string v1, "dropbox_sync_account"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/cloud/CloudAccountPreference;

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    .line 272
    const-string v1, "pref_set_account"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    .line 273
    const-string v1, "pref_usage"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    .line 274
    const-string v1, "pref_photos"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    .line 275
    const-string v1, "pref_videos"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    .line 276
    const-string v1, "pref_wifi_only"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    .line 278
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 279
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 280
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 281
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    invoke-virtual {v1, p0}, Lcom/android/sec_settings/cloud/CloudAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    invoke-virtual {v1, p0}, Lcom/android/sec_settings/cloud/CloudAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 284
    const v1, 0x7f090e1b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f090e1f

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, categoryText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.cloudagent"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    .line 200
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->addPreferencesFromResource(I)V

    .line 201
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getPreferencesReference()V

    .line 202
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    goto :goto_0
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 673
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 676
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 677
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 679
    .local v3, wifiNetwork:Landroid/net/NetworkInfo;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 681
    .local v2, mobileNetwork:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 683
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 692
    .end local v0           #activeNetwork:Landroid/net/NetworkInfo;
    .end local v2           #mobileNetwork:Landroid/net/NetworkInfo;
    .end local v3           #wifiNetwork:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 685
    .restart local v0       #activeNetwork:Landroid/net/NetworkInfo;
    .restart local v2       #mobileNetwork:Landroid/net/NetworkInfo;
    .restart local v3       #wifiNetwork:Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .line 687
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v0           #activeNetwork:Landroid/net/NetworkInfo;
    .end local v2           #mobileNetwork:Landroid/net/NetworkInfo;
    .end local v3           #wifiNetwork:Landroid/net/NetworkInfo;
    :cond_3
    move v4, v5

    .line 692
    goto :goto_0
.end method

.method private onBackUpClicked()V
    .locals 4

    .prologue
    .line 574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v0, mIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.sCloudBackupApp"

    const-string v3, "com.sec.android.sCloudBackupApp.SamsungBackup"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 576
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->startActivity(Landroid/content/Intent;)V

    .line 577
    return-void
.end method

.method private onDataSyncClicked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 583
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 585
    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    .line 586
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 587
    const-string v0, "account"

    aget-object v1, v4, v5

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 588
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09079c

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 593
    :cond_0
    return-void
.end method

.method private registerCloudReceiver()V
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 430
    new-instance v1, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$1;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment$1;-><init>(Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;)V

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 476
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 484
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestCloudStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 400
    iget-boolean v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->isDropboxAvailable:Z

    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Status - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 408
    invoke-static {v3, v4, v4}, Lcom/android/sec_settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/sec_settings/cloud/CloudDialog$DialogListener;)Lcom/android/sec_settings/cloud/CloudDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 409
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCloudStorageUsage()V
    .locals 3

    .prologue
    .line 417
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Storage Usage - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_STORAGE_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v1, "com.sec.android.cloudagent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    return-void
.end method

.method private requestDropboxAuth()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sec.android.cloudagent.DROPBOX_AUTH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "storageVender"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string v1, "requestSignIn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 253
    return-void
.end method

.method private samsungAccountExists()Z
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 212
    .local v0, samsungAccount:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 213
    array-length v1, v0

    if-nez v1, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 217
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 0
    .parameter "pref"
    .parameter "preferenceGroup"
    .parameter "isShow"

    .prologue
    .line 386
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 387
    if-eqz p3, :cond_1

    .line 388
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private startFragment(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 701
    .line 702
    const/4 v3, 0x0

    .line 704
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 718
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 723
    :cond_0
    return-void

    .line 706
    :pswitch_0
    const-class v0, Lcom/android/sec_settings/cloud/CloudPhotosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 708
    const v3, 0x7f090e21

    .line 709
    goto :goto_0

    .line 711
    :pswitch_1
    const-class v0, Lcom/android/sec_settings/cloud/CloudVideosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 712
    const v3, 0x7f090e22

    .line 713
    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startWifiActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, i:Landroid/content/Intent;
    const-string v1, "extra_prefs_show_button_bar"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 730
    const-string v1, "extra_prefs_set_back_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v1, "wifi_enable_next_on_connect"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 733
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 734
    return-void
.end method

.method private unregisterCloudReceiver()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 496
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    return-void
.end method

.method private updatePreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->samsungAccountExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 311
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 318
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 320
    .local v0, samsungAccount:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    aget-object v2, v0, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/cloud/CloudAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    .end local v0           #samsungAccount:[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v4}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 326
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 327
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    .line 328
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->categorySamsungServices:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 620
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 643
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 645
    return-void

    .line 623
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 624
    const-string v0, "CloudSettings"

    const-string v1, "Samsung account added successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :pswitch_1
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed in with result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 636
    :pswitch_2
    const-string v0, "CloudSettings"

    const-string v1, "completeWifiActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCancelButtonClick()V
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 613
    return-void

    .line 612
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    .line 168
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->init()V

    .line 170
    iget-boolean v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090e2e

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 173
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->startWifiActivity()V

    .line 175
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 258
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 259
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 188
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 190
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 4

    .prologue
    .line 599
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, i:Landroid/content/Intent;
    const-string v1, "wifiOnly"

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 601
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
    const-string v1, "CloudSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudSettingsMainFragment Wifi Only option changed -->  sending intent with Cloud Status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 14
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v13, 0x0

    .line 505
    iget-boolean v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z

    if-nez v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090e2e

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 564
    :cond_0
    :goto_0
    return v6

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefAddSamsungAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 514
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->addSamsungAccount()V

    goto :goto_0

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->onDataSyncClicked()V

    goto :goto_0

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->onBackUpClicked()V

    goto :goto_0

    .line 519
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 520
    invoke-direct {p0, v13}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 522
    invoke-direct {p0, v6}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 523
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 525
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 527
    array-length v0, v4

    if-lez v0, :cond_0

    .line 528
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 529
    const-string v0, "account"

    aget-object v1, v4, v13

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09079c

    aget-object v4, v4, v13

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 534
    :cond_7
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Lcom/android/sec_settings/cloud/CloudAccountPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 536
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.dropbox.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 538
    array-length v1, v0

    if-lez v1, :cond_0

    .line 539
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 540
    const-string v1, "account"

    aget-object v2, v0, v13

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 541
    const-string v1, "account_type"

    aget-object v2, v0, v13

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f090e1f

    aget-object v0, v0, v13

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 546
    :cond_8
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 549
    if-nez v0, :cond_9

    .line 550
    const/4 v0, 0x3

    const v1, 0x7f090e36

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/sec_settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/sec_settings/cloud/CloudDialog$DialogListener;)Lcom/android/sec_settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 552
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0, v13}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 553
    iget-object v0, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    const-string v1, "wifiOnly"

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 558
    const-string v0, "CloudSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudSettingsMainFragment Wifi Only option changed -->  sending intent with Cloud Status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 180
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V

    .line 181
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    .line 182
    invoke-direct {p0}, Lcom/android/sec_settings/cloud/CloudSettingsMainFragment;->updatePreferences()V

    .line 183
    return-void
.end method
