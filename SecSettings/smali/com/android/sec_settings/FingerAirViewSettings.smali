.class public Lcom/android/sec_settings/FingerAirViewSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mFullText:Landroid/preference/CheckBoxPreference;

.field private mHighlight:Landroid/preference/CheckBoxPreference;

.field private mInforamtionPreview:Landroid/preference/CheckBoxPreference;

.field private mMagnifier:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowUpIndicator:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    iget-object v0, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 120
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f07002f

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/FingerAirViewSettings;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    .line 50
    new-instance v1, Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 51
    iget-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 54
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 55
    iget-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 57
    iget-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 61
    iget-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    .line 64
    .end local v0           #padding:I
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 68
    const-string v1, "highlight"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v1, "magnifier"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v1, "show_up_indicator"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v1, "information_preview"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    .line 72
    const-string v1, "full_text"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    .line 73
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    iget-object v2, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_highlight"

    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    :goto_0
    return v1

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_magnifier"

    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 130
    :cond_3
    iget-object v2, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_show_up_indicator"

    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 134
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_information_preview"

    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 136
    :cond_7
    iget-object v2, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 137
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_full_text"

    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 141
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 78
    const-string v3, "FingerAirViewSettings"

    const-string v4, "onResume()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 85
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 86
    .local v0, fingerAirViewState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 88
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 89
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 90
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 91
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 92
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 94
    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mHighlight:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_highlight"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_magnifier"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mShowUpIndicator:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_show_up_indicator"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    iget-object v3, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mFullText:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_full_text"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    :goto_5
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    return-void

    .end local v0           #fingerAirViewState:Z
    :cond_1
    move v0, v2

    .line 85
    goto :goto_0

    .restart local v0       #fingerAirViewState:Z
    :cond_2
    move v3, v2

    .line 94
    goto :goto_1

    :cond_3
    move v3, v2

    .line 95
    goto :goto_2

    :cond_4
    move v3, v2

    .line 96
    goto :goto_3

    :cond_5
    move v3, v2

    .line 97
    goto :goto_4

    :cond_6
    move v1, v2

    .line 98
    goto :goto_5
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 105
    iget-object v0, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/sec_settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_0
    return-void
.end method
