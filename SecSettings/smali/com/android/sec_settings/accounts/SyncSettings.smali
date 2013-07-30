.class public Lcom/android/sec_settings/accounts/SyncSettings;
.super Lcom/android/sec_settings/accounts/AccountPreferenceBase;
.source "SyncSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/sec_settings/DialogCreatable;


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

.field private mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;-><init>()V

    return-void
.end method

.method private removeAccountPreferences()V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 188
    .local v1, parent:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 189
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/sec_settings/AccountPreference;

    if-eqz v2, :cond_0

    .line 190
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 192
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    return-void
.end method

.method private startAccountSettings(Lcom/android/sec_settings/AccountPreference;)V
    .locals 3
    .parameter "acctPref"

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->finish()V

    .line 175
    return-void
.end method


# virtual methods
.method public bridge synthetic addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->addPreferencesForType(Ljava/lang/String;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->removeAccountPreferences()V

    .line 202
    const/4 v7, 0x0

    .local v7, i:I
    array-length v11, p1

    .local v11, n:I
    :goto_1
    if-ge v7, v11, :cond_6

    .line 203
    aget-object v2, p1, v7

    .line 204
    .local v2, account:Landroid/accounts/Account;
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/accounts/SyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 206
    .local v4, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 207
    .local v13, showAccount:Z
    iget-object v1, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 208
    const/4 v13, 0x0

    .line 209
    iget-object v6, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v10, v6

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v10, :cond_1

    aget-object v12, v6, v8

    .line 210
    .local v12, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const/4 v13, 0x1

    .line 218
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #requestedAuthority:Ljava/lang/String;
    :cond_1
    const-string v1, "com.facebook.auth.login"

    iget-object v5, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-ne v13, v1, :cond_4

    .line 219
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    array-length v1, p1

    if-ge v9, v1, :cond_4

    .line 220
    const-string v1, "com.sec.android.app.sns3.facebook"

    aget-object v5, p1, v9

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    const/4 v13, 0x0

    .line 219
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 209
    .end local v9           #j:I
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #requestedAuthority:Ljava/lang/String;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 226
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local v12           #requestedAuthority:Ljava/lang/String;
    :cond_4
    if-eqz v13, :cond_5

    .line 227
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 228
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/sec_settings/AccountPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Z)V

    .line 230
    .local v0, preference:Lcom/android/sec_settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 231
    iget-object v1, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    .end local v0           #preference:Lcom/android/sec_settings/AccountPreference;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 234
    .end local v2           #account:Landroid/accounts/Account;
    .end local v4           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #showAccount:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->onSyncStateUpdated()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 89
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->updateAuthDescriptions()V

    .line 92
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 240
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 242
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/sec_settings/AccountPreference;

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/AccountPreference;

    .line 245
    .local v0, accPref:Lcom/android/sec_settings/AccountPreference;
    invoke-virtual {v0}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/accounts/SyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-virtual {v0}, Lcom/android/sec_settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/accounts/SyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    .end local v0           #accPref:Lcom/android/sec_settings/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/accounts/SyncSettings;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sync_switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    .line 65
    iget-object v0, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mAutoSyncPreference:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/sec_settings/accounts/SyncSettings$1;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/accounts/SyncSettings$1;-><init>(Lcom/android/sec_settings/accounts/SyncSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/accounts/SyncSettings;->setHasOptionsMenu(Z)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super/range {p0 .. p3}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v10

    .line 99
    .local v10, view:Landroid/view/View;
    if-eqz v10, :cond_0

    instance-of v11, v10, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 101
    .local v3, defaultDisplay:Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 102
    .local v5, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    const/high16 v11, 0x4080

    iget v12, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v8, v11

    .line 104
    .local v8, paddingTop:I
    const/high16 v11, 0x40a0

    iget v12, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v7, v11

    .line 106
    .local v7, paddingLR:I
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x101032f

    invoke-direct {v0, v11, v12, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    .local v0, addButton:Landroid/widget/Button;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v2, buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f80

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const v11, 0x7f09079e

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setText(I)V

    .line 111
    new-instance v11, Lcom/android/sec_settings/accounts/SyncSettings$2;

    invoke-direct {v11, p0}, Lcom/android/sec_settings/accounts/SyncSettings$2;-><init>(Lcom/android/sec_settings/accounts/SyncSettings;)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v6, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x101032f

    invoke-direct {v6, v11, v12, v13}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    .local v6, okButton:Landroid/widget/Button;
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const v11, 0x104000a

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(I)V

    .line 124
    new-instance v11, Lcom/android/sec_settings/accounts/SyncSettings$3;

    invoke-direct {v11, p0}, Lcom/android/sec_settings/accounts/SyncSettings$3;-><init>(Lcom/android/sec_settings/accounts/SyncSettings;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v9, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    .local v9, space:Landroid/view/View;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v7, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, bottomLayout:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v4, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    const v11, 0x108009a

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 139
    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 140
    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v11, v10

    .line 145
    check-cast v11, Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    .end local v0           #addButton:Landroid/widget/Button;
    .end local v1           #bottomLayout:Landroid/widget/LinearLayout;
    .end local v2           #buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #defaultDisplay:Landroid/view/Display;
    .end local v4           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #metrics:Landroid/util/DisplayMetrics;
    .end local v6           #okButton:Landroid/widget/Button;
    .end local v7           #paddingLR:I
    .end local v8           #paddingTop:I
    .end local v9           #space:Landroid/view/View;
    :cond_0
    return-object v10
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 161
    instance-of v0, p2, Lcom/android/sec_settings/AccountPreference;

    if-eqz v0, :cond_0

    .line 162
    check-cast p2, Lcom/android/sec_settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/sec_settings/accounts/SyncSettings;->startAccountSettings(Lcom/android/sec_settings/AccountPreference;)V

    .line 166
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 164
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onStart()V

    .line 79
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 81
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->onStop()V

    .line 155
    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 156
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 157
    return-void
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    new-instance v0, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/sec_settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 183
    iget-object v0, p0, Lcom/android/sec_settings/accounts/SyncSettings;->mDialogFragment:Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/sec_settings/accounts/SyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/sec_settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
