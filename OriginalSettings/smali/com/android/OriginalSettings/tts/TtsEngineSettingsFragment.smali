.class public Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mEngineSettingsIntent:Landroid/content/Intent;

.field private mEngineSettingsPreference:Landroid/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInstallVoicesPreference:Landroid/preference/Preference;

.field private mLocalePreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 56
    return-void
.end method

.method private getEngineLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEngineName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installVoiceData()V
    .locals 5

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    :try_start_0
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing voice data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to install TTS data, no acitivty found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDefaultLocalePref(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, availableLangs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 114
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, currentLocale:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v1, v7, [Ljava/lang/CharSequence;

    .line 118
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/CharSequence;

    .line 120
    .local v2, entryValues:[Ljava/lang/CharSequence;
    const/4 v6, -0x1

    .line 121
    .local v6, selectedLanguageIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 122
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, langCountryVariant:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 124
    .local v5, loc:Ljava/util/Locale;
    array-length v7, v4

    if-ne v7, v11, :cond_2

    .line 125
    new-instance v5, Ljava/util/Locale;

    .end local v5           #loc:Ljava/util/Locale;
    aget-object v7, v4, v10

    invoke-direct {v5, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 132
    .restart local v5       #loc:Ljava/util/Locale;
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    .line 134
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    aput-object v7, v2, v3

    .line 135
    aget-object v7, v2, v3

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    move v6, v3

    .line 121
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_2
    array-length v7, v4

    if-ne v7, v12, :cond_3

    .line 127
    new-instance v5, Ljava/util/Locale;

    .end local v5           #loc:Ljava/util/Locale;
    aget-object v7, v4, v10

    aget-object v8, v4, v11

    invoke-direct {v5, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5       #loc:Ljava/util/Locale;
    goto :goto_1

    .line 128
    :cond_3
    array-length v7, v4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 129
    new-instance v5, Ljava/util/Locale;

    .end local v5           #loc:Ljava/util/Locale;
    aget-object v7, v4, v10

    aget-object v8, v4, v11

    aget-object v9, v4, v12

    invoke-direct {v5, v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5       #loc:Ljava/util/Locale;
    goto :goto_1

    .line 141
    .end local v4           #langCountryVariant:[Ljava/lang/String;
    .end local v5           #loc:Ljava/util/Locale;
    :cond_4
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 142
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 143
    const/4 v7, -0x1

    if-le v6, v7, :cond_5

    .line 144
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 150
    :goto_2
    return-void

    .line 146
    :cond_5
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 147
    iget-object v8, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateVoiceDetails()V
    .locals 6

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "voices"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 90
    .local v3, voiceDataDetails:Landroid/content/Intent;
    const-string v4, "availableVoices"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    .local v0, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "unavailableVoices"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 95
    .local v2, unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 96
    :cond_0
    const-string v4, "TtsEngineSettings"

    const-string v5, "TTS data check failed (available == null)."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 101
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 105
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->updateDefaultLocalePref(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 107
    :cond_3
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 108
    .local v1, empty:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 109
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f050040

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->addPreferencesFromResource(I)V

    .line 62
    new-instance v1, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 64
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 65
    .local v0, root:Landroid/preference/PreferenceScreen;
    const-string v1, "tts_default_lang"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    .line 66
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string v1, "tts_engine_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    .line 68
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    const-string v1, "tts_install_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    .line 70
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05a0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 83
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->updateVoiceDetails()V

    .line 84
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, v1, p2}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 171
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->installVoiceData()V

    .line 179
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/tts/TtsEngineSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
