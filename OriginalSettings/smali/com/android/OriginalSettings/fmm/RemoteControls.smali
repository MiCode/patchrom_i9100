.class public Lcom/android/OriginalSettings/fmm/RemoteControls;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "RemoteControls.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentLocation;,
        Lcom/android/OriginalSettings/fmm/RemoteControls$GoogleAccount;,
        Lcom/android/OriginalSettings/fmm/RemoteControls$SamsungAccount;,
        Lcom/android/OriginalSettings/fmm/RemoteControls$FragmentAccount;
    }
.end annotation


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 276
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 115
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 65
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 69
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    .line 71
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 72
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 73
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 76
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 77
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 79
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 87
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 108
    const v1, 0x7f040081

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "GoogleAccountPreferences"

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    .local v0, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v3, "pref_fmm"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 103
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "remote_control"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    return-void

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method
