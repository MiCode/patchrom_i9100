.class public Lcom/android/sec_settings/fmm/TabletRemoteControls;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "TabletRemoteControls.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mGoogleAccountContext:Landroid/content/Context;

.field private mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mGoogleAccountPref:Landroid/preference/Preference;

.field private mHasGoogleAccount:Z

.field private mHasGoogleDescription:Z

.field private mHasSamsungAccount:Z

.field private mNetworkPref:Landroid/preference/CheckBoxPreference;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    .line 75
    new-instance v0, Lcom/android/sec_settings/fmm/TabletRemoteControls$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/sec_settings/fmm/TabletRemoteControls$1;-><init>(Lcom/android/sec_settings/fmm/TabletRemoteControls;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/fmm/TabletRemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/fmm/TabletRemoteControls;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private updateAccountInformation()V
    .locals 11

    .prologue
    const v10, 0x7f09079e

    const v9, 0x7f0400d5

    const v8, 0x7f040096

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 201
    .local v1, manager:Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 202
    .local v2, samsungAccnts:[Landroid/accounts/Account;
    array-length v3, v2

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    .line 203
    iget-boolean v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    aget-object v6, v2, v5

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v7, v7, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 213
    :goto_1
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 214
    .local v0, googleAccnts:[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_3

    :goto_2
    iput-boolean v4, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    .line 215
    iget-boolean v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    if-eqz v3, :cond_4

    .line 216
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    aget-object v4, v0, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 227
    :goto_3
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    :cond_0
    return-void

    .end local v0           #googleAccnts:[Landroid/accounts/Account;
    :cond_1
    move v3, v5

    .line 202
    goto :goto_0

    .line 208
    :cond_2
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 209
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    const v6, 0x7f090924

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 210
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    .restart local v0       #googleAccnts:[Landroid/accounts/Account;
    :cond_3
    move v4, v5

    .line 214
    goto :goto_2

    .line 220
    :cond_4
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 221
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    const v4, 0x7f090925

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 222
    iget-object v3, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_3
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 192
    if-eqz p2, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v8, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v6, "TabletRemoteControls"

    const-string v7, "TabletRemoteControls"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, activity:Landroid/app/Activity;
    new-instance v6, Landroid/widget/Switch;

    invoke-direct {v6, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    .line 94
    instance-of v6, v0, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_0

    move-object v5, v0

    .line 95
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 96
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 97
    .local v4, padding:I
    iget-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v4, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 98
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    .line 103
    .end local v4           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    iget-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    const v6, 0x7f07004f

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->addPreferencesFromResource(I)V

    .line 107
    const-string v6, "samsung_account"

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    .line 108
    const-string v6, "google_account"

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    .line 109
    const-string v6, "location_network"

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    .line 112
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 113
    .local v1, desc:[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_1

    .line 114
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.osp.app.signin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 115
    aget-object v6, v1, v3

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 120
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    iget-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 127
    const/4 v3, 0x0

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_2

    .line 128
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 129
    aget-object v6, v1, v3

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 130
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    .line 135
    :cond_2
    iget-boolean v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasGoogleDescription:Z

    if-eqz v6, :cond_3

    .line 137
    :try_start_1
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :goto_3
    iget-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/sec_settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 145
    iget-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f090556

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 147
    :cond_4
    iget-object v6, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "network"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    return-void

    .line 113
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TabletRemoteControls"

    const-string v7, "No Package name for account type com.osp.app.signin"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 127
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 138
    :catch_1
    move-exception v2

    .line 139
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TabletRemoteControls"

    const-string v7, "No Package name for account type com.google"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 180
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 181
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 250
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 238
    iget-boolean v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-nez v0, :cond_0

    .line 239
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v9, mIntent:Landroid/content/Intent;
    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.AccountView"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v0, "MODE"

    const-string v1, "REMOTE_CONTROLS"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, v9}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    .end local v9           #mIntent:Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 245
    iget-boolean v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasGoogleAccount:Z

    if-nez v0, :cond_0

    .line 246
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v8, addAccountOptions:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 153
    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "FMMPreferences"

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "pref_fmm"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 163
    :goto_0
    iget-object v4, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "remote_control"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "remote_control"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    invoke-direct {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->updateAccountInformation()V

    .line 169
    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mHasSamsungAccount:Z

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/TabletRemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    return-void

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 163
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 186
    iget-object v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/sec_settings/fmm/TabletRemoteControls;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_0
    return-void
.end method
