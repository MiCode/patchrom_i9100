.class public Lcom/android/OriginalSettings/tts/TextToSpeechSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;


# instance fields
.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mDrivingMode:Landroid/preference/CheckBoxPreference;

.field private mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPlayExample:Landroid/preference/Preference;

.field private mPreviousEngine:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 78
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 97
    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 98
    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 105
    new-instance v0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/OriginalSettings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 117
    new-instance v0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings$2;-><init>(Lcom/android/OriginalSettings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    return-void
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5
    .parameter "engine"

    .prologue
    .line 442
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

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

.method private displayDataAlert(Ljava/lang/String;)V
    .locals 8
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    .line 364
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying data alert for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 367
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b059a

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v6, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 371
    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/tts/TextToSpeechSettings$3;

    invoke-direct {v3, p0, p1}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/OriginalSettings/tts/TextToSpeechSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 380
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 381
    return-void
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 284
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 285
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, currentLang:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, strings:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, langs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 292
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    aget-object v4, v3, v1

    .line 297
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 291
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #langs:[Ljava/lang/String;
    .restart local v3       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSampleText()V
    .locals 7

    .prologue
    .line 230
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, currentEngine:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->maybeUpdateTtsLanguage(Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 241
    .local v1, currentLocale:Ljava/util/Locale;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v3, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 244
    const-string v4, "language"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v4, "country"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v4, "variant"

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    :cond_1
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const/16 v4, 0x7bf

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get sample text, no activity found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSettings()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 174
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/CheckBoxPreference;

    const-string v9, "driving_mode_on"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {v8, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    :try_start_0
    const-string v7, "tts_default_rate"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRate:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget v8, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 184
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 188
    const/4 v5, 0x0

    .line 189
    .local v5, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lmiui/preference/BasePreferenceActivity;

    if-eqz v7, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .end local v5           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    check-cast v5, Lmiui/preference/BasePreferenceActivity;

    .line 196
    .restart local v5       #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 198
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v7}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v3

    .line 199
    .local v3, engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 200
    .local v1, engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    new-instance v2, Lcom/android/OriginalSettings/tts/TtsEnginePreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, v1, p0, v5}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/OriginalSettings/tts/TtsEnginePreference$RadioButtonGroupState;Lmiui/preference/BasePreferenceActivity;)V

    .line 202
    .local v2, enginePref:Lcom/android/OriginalSettings/tts/TtsEnginePreference;
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 179
    .end local v1           #engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2           #enginePref:Lcom/android/OriginalSettings/tts/TtsEnginePreference;
    .end local v3           #engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v7, 0x64

    iput v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRate:I

    goto :goto_0

    .line 192
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5       #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "TextToSpeechSettings used outside a PreferenceActivity"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 205
    .restart local v3       #engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "currentEngine"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_0

    .line 210
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 213
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, locale:[Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .local v3, newLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 217
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 223
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, sample:Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 304
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 456
    iget-object v5, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, engine:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 459
    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no engine bound"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return-void

    .line 463
    :cond_0
    if-nez p1, :cond_1

    .line 464
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 471
    iget-object v5, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 472
    .local v1, engineCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 473
    iget-object v5, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 474
    .local v4, p:Landroid/preference/Preference;
    instance-of v5, v4, Lcom/android/OriginalSettings/tts/TtsEnginePreference;

    if-eqz v5, :cond_3

    move-object v2, v4

    .line 475
    check-cast v2, Lcom/android/OriginalSettings/tts/TtsEnginePreference;

    .line 476
    .local v2, enginePref:Lcom/android/OriginalSettings/tts/TtsEnginePreference;
    invoke-virtual {v2}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 477
    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/tts/TtsEnginePreference;->setVoiceDataDetails(Landroid/content/Intent;)V

    .line 483
    .end local v2           #enginePref:Lcom/android/OriginalSettings/tts/TtsEnginePreference;
    .end local v4           #p:Landroid/preference/Preference;
    :cond_2
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0

    .line 472
    .restart local v4       #p:Landroid/preference/Preference;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private shouldDisplayDataAlert(Ljava/lang/String;)Z
    .locals 2
    .parameter "engine"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    .line 488
    .local v0, info:Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-boolean v1, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4
    .parameter "engine"

    .prologue
    .line 388
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 395
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    .line 398
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_0
    :goto_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 412
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateWidgetState(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 361
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 276
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 277
    invoke-direct {p0, p2, p3}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 279
    invoke-direct {p0, p3}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f050041

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 138
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 139
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 141
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 143
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 145
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 146
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 148
    const-string v0, "toggle_tts_driving"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/CheckBoxPreference;

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->initSettings()V

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 161
    :cond_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 169
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 323
    const-string v1, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_rate"

    iget v3, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 344
    iget-object v2, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getSampleText()V

    .line 355
    :goto_0
    return v1

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    iget-object v4, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v1, v0

    .line 355
    goto :goto_0
.end method

.method public onUpdateEngine(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 431
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 434
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .parameter "current"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    .line 504
    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->shouldDisplayDataAlert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->displayDataAlert(Ljava/lang/String;)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    goto :goto_0
.end method
