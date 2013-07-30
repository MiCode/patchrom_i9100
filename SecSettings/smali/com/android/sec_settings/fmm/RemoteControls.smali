.class public Lcom/android/sec_settings/fmm/RemoteControls;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "RemoteControls.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/fmm/RemoteControls$FragmentLocation;,
        Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;,
        Lcom/android/sec_settings/fmm/RemoteControls$FragmentAccount;
    }
.end annotation


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/sec_settings/fmm/RemoteControls$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/sec_settings/fmm/RemoteControls$1;-><init>(Lcom/android/sec_settings/fmm/RemoteControls;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/fmm/RemoteControls;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 179
    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 85
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    .line 87
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 88
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 89
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 91
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 94
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    .line 102
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 154
    const v0, 0x7f0400d4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 159
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, deviceType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 162
    .local v2, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b0135

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 163
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b026c

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 164
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b026d

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 167
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 175
    return-void

    .line 168
    .restart local v2       #transaction:Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "RemoteControls"

    const-string v4, "can\'t perform transaction.commit()"

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v9, 0x7f0b026c

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 107
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 108
    iget-object v6, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 109
    iget-object v6, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "FMMPreferences"

    invoke-virtual {v6, v7, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 114
    .local v2, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v6, "pref_fmm"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    iget-object v6, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 119
    :goto_0
    iget-object v6, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "remote_control"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_4

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "remote_control"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;

    .line 126
    .local v0, SA:Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;
    #getter for: Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;
    invoke-static {v0}, Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;->access$200(Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    if-nez v4, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 128
    .local v3, transaction:Landroid/app/FragmentTransaction;
    #getter for: Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;->mSamsungDescription:Landroid/accounts/AuthenticatorDescription;
    invoke-static {v0}, Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;->access$200(Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    if-nez v4, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/RemoteControls;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 131
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v3           #transaction:Landroid/app/FragmentTransaction;
    :cond_2
    :goto_2
    return-void

    .line 117
    .end local v0           #SA:Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;
    :cond_3
    iget-object v6, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 119
    goto :goto_1

    .line 132
    .restart local v0       #SA:Lcom/android/sec_settings/fmm/RemoteControls$SamsungAccount;
    .restart local v3       #transaction:Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "RemoteControls"

    const-string v5, "can\'t perform transaction.commit()"

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 147
    iget-object v0, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_0
    return-void
.end method
