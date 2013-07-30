.class public Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleAccessibilityServicePreferenceFragment"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private final initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mShownDialogId:I

.field private mSummaryPreference:Landroid/preference/Preference;

.field private mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 1615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1902
    new-instance v0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private installActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 1909
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/sec_settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;
    invoke-static {v0}, Lcom/android/sec_settings/AccessibilitySettings;->access$1000(Landroid/app/Activity;)Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    .line 1910
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;-><init>(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1933
    return-void
.end method

.method private processArguments()V
    .locals 10

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 1939
    .local v1, arguments:Landroid/os/Bundle;
    const-string v8, "preference_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 1942
    const-string v8, "checked"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1943
    .local v2, enabled:Z
    iget-object v8, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v8, v2}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1946
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1947
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1948
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 1949
    const-string v8, "title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1950
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1954
    .end local v7           #title:Ljava/lang/String;
    :cond_1
    const-string v8, "summary"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1955
    .local v6, summary:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1958
    const-string v8, "settings_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1959
    .local v5, settingsTitle:Ljava/lang/String;
    const-string v8, "settings_component_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1960
    .local v3, settingsComponentName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1961
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 1963
    .local v4, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1964
    iput-object v5, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 1965
    iput-object v4, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 1966
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 1971
    .end local v4           #settingsIntent:Landroid/content/Intent;
    :cond_2
    const-string v8, "enable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1975
    const-string v8, "enable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1979
    const-string v8, "disable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1983
    const-string v8, "disable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1985
    return-void
.end method


# virtual methods
.method public onCheckingstatus(Z)Z
    .locals 9
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    .line 1699
    if-eqz p1, :cond_0

    .line 1700
    const/4 v2, 0x0

    .local v2, TCountry:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, TLanguage:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, KCountry:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1701
    .local v1, KLanguage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 1704
    .local v4, conf:Landroid/content/res/Configuration;
    :try_start_0
    iget-object v7, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v2

    .line 1705
    iget-object v7, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1706
    iget-object v7, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 1707
    iget-object v7, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1712
    :goto_0
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 1731
    .end local v0           #KCountry:Ljava/lang/String;
    .end local v1           #KLanguage:Ljava/lang/String;
    .end local v2           #TCountry:Ljava/lang/String;
    .end local v3           #TLanguage:Ljava/lang/String;
    .end local v4           #conf:Landroid/content/res/Configuration;
    :cond_0
    :goto_1
    return v6

    .line 1708
    .restart local v0       #KCountry:Ljava/lang/String;
    .restart local v1       #KLanguage:Ljava/lang/String;
    .restart local v2       #TCountry:Ljava/lang/String;
    .restart local v3       #TLanguage:Ljava/lang/String;
    .restart local v4       #conf:Landroid/content/res/Configuration;
    :catch_0
    move-exception v5

    .line 1709
    .local v5, e:Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1716
    .end local v5           #e:Ljava/lang/NullPointerException;
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1717
    :cond_2
    iget-object v7, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v8, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v7

    if-lez v7, :cond_0

    .line 1718
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    .line 1719
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1862
    packed-switch p2, :pswitch_data_0

    .line 1898
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1864
    :pswitch_0
    iget v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-eq v3, v0, :cond_0

    iget v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v3, v4, :cond_3

    .line 1865
    :cond_0
    iget v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v3, v0, :cond_2

    .line 1866
    .local v0, checked:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onCheckingstatus(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1867
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v2, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1868
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1869
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 1900
    .end local v0           #checked:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1865
    goto :goto_0

    .line 1871
    :cond_3
    iget v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v3, v5, :cond_1

    .line 1872
    iget v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v3, v5, :cond_4

    .line 1873
    .restart local v0       #checked:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1874
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v2, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1875
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1876
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    :cond_4
    move v0, v2

    .line 1872
    goto :goto_2

    .line 1880
    :pswitch_1
    iget v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-eq v3, v0, :cond_5

    iget v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v3, v4, :cond_7

    .line 1881
    :cond_5
    iget v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v3, v4, :cond_6

    .line 1882
    .restart local v0       #checked:Z
    :goto_3
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v2, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1883
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1884
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    :cond_6
    move v0, v2

    .line 1881
    goto :goto_3

    .line 1885
    :cond_7
    iget v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1886
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.TTS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 1888
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->finish()V

    goto :goto_1

    .line 1862
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 1626
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1627
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->context:Landroid/content/Context;

    .line 1628
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1629
    .local v0, arguments:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1631
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1632
    new-instance v2, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 1665
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1666
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1667
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v3, 0x7f0400ee

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1668
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1669
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "dialogId"

    .prologue
    const/high16 v9, 0x104

    const v8, 0x1010355

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1793
    const/4 v2, 0x0

    .line 1794
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 1795
    .local v0, message:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1796
    .local v1, temp_title:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1827
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1798
    :pswitch_0
    iput v5, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 1799
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1800
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1829
    :goto_0
    if-eq p1, v5, :cond_0

    if-ne p1, v6, :cond_1

    .line 1830
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1849
    :goto_1
    return-object v3

    .line 1803
    :pswitch_1
    iput v6, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 1804
    iget-object v2, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1805
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1806
    goto :goto_0

    .line 1808
    :pswitch_2
    iput v7, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 1809
    const v3, 0x7f0906b0

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1810
    const v3, 0x7f0906b1

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1811
    goto :goto_0

    .line 1813
    :pswitch_3
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 1814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0906b2

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1815
    check-cast v1, Ljava/lang/String;

    .line 1816
    const v3, 0x7f090120

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1817
    const v3, 0x7f0906b3

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1818
    goto :goto_0

    .line 1820
    :pswitch_4
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 1821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0906b2

    invoke-virtual {p0, v4}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1822
    check-cast v1, Ljava/lang/String;

    .line 1823
    const v3, 0x7f090120

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1824
    const v3, 0x7f0906b4

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1825
    goto/16 :goto_0

    .line 1839
    :cond_1
    if-ne p1, v7, :cond_2

    .line 1840
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090865

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_1

    .line 1849
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_1

    .line 1796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1785
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1786
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1787
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1788
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1789
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1690
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1691
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1694
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1695
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 1696
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 12
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    #calls: Lcom/android/sec_settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    invoke-static {v9}, Lcom/android/sec_settings/AccessibilitySettings;->access$800(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 1739
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 1741
    .local v8, toggledService:Landroid/content/ComponentName;
    if-eqz p2, :cond_0

    .line 1743
    const/4 v0, 0x1

    .line 1744
    .local v0, accessibilityEnabled:Z
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1762
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1766
    .local v4, enabledServicesBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1767
    .local v2, enabledService:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    const/16 v9, 0x3a

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1747
    .end local v0           #accessibilityEnabled:Z
    .end local v2           #enabledService:Landroid/content/ComponentName;
    .end local v4           #enabledServicesBuilder:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    .line 1748
    .local v1, enabledAndInstalledServiceCount:I
    invoke-static {}, Lcom/android/sec_settings/AccessibilitySettings;->access$900()Ljava/util/Set;

    move-result-object v7

    .line 1749
    .local v7, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1750
    .restart local v2       #enabledService:Landroid/content/ComponentName;
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1751
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1755
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    const/4 v9, 0x1

    if-gt v1, v9, :cond_3

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 1758
    .restart local v0       #accessibilityEnabled:Z
    :goto_3
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1755
    .end local v0           #accessibilityEnabled:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 1770
    .end local v1           #enabledAndInstalledServiceCount:I
    .end local v7           #installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v0       #accessibilityEnabled:Z
    .restart local v4       #enabledServicesBuilder:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1771
    .local v5, enabledServicesBuilderLength:I
    if-lez v5, :cond_6

    .line 1772
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1774
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1779
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1781
    return-void

    .line 1779
    :cond_7
    const/4 v9, 0x0

    goto :goto_4
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1681
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 1682
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1683
    .local v0, isTalkBackEnabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1684
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1685
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 1686
    return-void

    .end local v0           #isTalkBackEnabled:Z
    :cond_0
    move v0, v1

    .line 1682
    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 1673
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1674
    invoke-direct {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->installActionBarToggleSwitch()V

    .line 1675
    invoke-direct {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->processArguments()V

    .line 1676
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1677
    invoke-virtual {p0}, Lcom/android/sec_settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1678
    return-void
.end method
