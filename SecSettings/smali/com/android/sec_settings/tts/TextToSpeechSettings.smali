.class public Lcom/android/sec_settings/tts/TextToSpeechSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/sec_settings/tts/TtsEnginePreference$RadioButtonGroupState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static ENGINE_UPDATE_NOT:Z

.field private static ENGINE_UPDATE_ONINIT:Z

.field private static sSettingsObserver:Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;


# instance fields
.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPlayExample:Landroid/preference/Preference;

.field private mPreviousEngine:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->ENGINE_UPDATE_ONINIT:Z

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->ENGINE_UPDATE_NOT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 113
    iput-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 114
    iput-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 121
    new-instance v0, Lcom/android/sec_settings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/sec_settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 133
    new-instance v0, Lcom/android/sec_settings/tts/TextToSpeechSettings$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings$2;-><init>(Lcom/android/sec_settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 571
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/tts/TextToSpeechSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateState()V

    return-void
.end method

.method private checkLocaleAvailable(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 13
    .parameter "currentEngine"
    .parameter "newLocale"

    .prologue
    const/4 v12, 0x0

    .line 595
    move-object v8, p2

    .line 597
    .local v8, ret:Ljava/util/Locale;
    iget-object v10, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10, p2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v6

    .line 599
    .local v6, languageResult:I
    iget-object v10, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    const-string v11, "com.google.android.tts"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 603
    if-nez v6, :cond_0

    .line 604
    add-int/lit8 v6, v6, -0x1

    .line 608
    :cond_0
    packed-switch v6, :pswitch_data_0

    .line 626
    iget-object v10, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 627
    .local v3, engineCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 628
    iget-object v10, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v5}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 629
    .local v7, p:Landroid/preference/Preference;
    instance-of v10, v7, Lcom/android/sec_settings/tts/TtsEnginePreference;

    if-eqz v10, :cond_2

    move-object v4, v7

    .line 630
    check-cast v4, Lcom/android/sec_settings/tts/TtsEnginePreference;

    .line 631
    .local v4, enginePref:Lcom/android/sec_settings/tts/TtsEnginePreference;
    invoke-virtual {v4}, Lcom/android/sec_settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 632
    invoke-virtual {v4}, Lcom/android/sec_settings/tts/TtsEnginePreference;->getVoiceDataDetails()Landroid/content/Intent;

    move-result-object v1

    .line 637
    .local v1, data:Landroid/content/Intent;
    :try_start_0
    const-string v10, "availableVoices"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 643
    .local v0, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 645
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 647
    .local v9, topLocale:[Ljava/lang/String;
    new-instance v8, Ljava/util/Locale;

    .end local v8           #ret:Ljava/util/Locale;
    aget-object v10, v9, v12

    const/4 v11, 0x1

    aget-object v11, v9, v11

    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-direct {v8, v10, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .end local v0           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #data:Landroid/content/Intent;
    .end local v3           #engineCount:I
    .end local v4           #enginePref:Lcom/android/sec_settings/tts/TtsEnginePreference;
    .end local v5           #i:I
    .end local v7           #p:Landroid/preference/Preference;
    .end local v9           #topLocale:[Ljava/lang/String;
    .restart local v8       #ret:Ljava/util/Locale;
    :cond_1
    :goto_1
    return-object v8

    .line 610
    :pswitch_0
    new-instance v8, Ljava/util/Locale;

    .end local v8           #ret:Ljava/util/Locale;
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .restart local v8       #ret:Ljava/util/Locale;
    goto :goto_1

    .line 614
    :pswitch_1
    new-instance v8, Ljava/util/Locale;

    .end local v8           #ret:Ljava/util/Locale;
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .restart local v8       #ret:Ljava/util/Locale;
    goto :goto_1

    .line 619
    :pswitch_2
    new-instance v8, Ljava/util/Locale;

    .end local v8           #ret:Ljava/util/Locale;
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 620
    .restart local v8       #ret:Ljava/util/Locale;
    goto :goto_1

    .line 638
    .restart local v1       #data:Landroid/content/Intent;
    .restart local v3       #engineCount:I
    .restart local v4       #enginePref:Lcom/android/sec_settings/tts/TtsEnginePreference;
    .restart local v5       #i:I
    .restart local v7       #p:Landroid/preference/Preference;
    :catch_0
    move-exception v2

    .line 639
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v10, "TextToSpeechSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "shutting down TTS engine"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 627
    .end local v1           #data:Landroid/content/Intent;
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v4           #enginePref:Lcom/android/sec_settings/tts/TtsEnginePreference;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5
    .parameter "engine"

    .prologue
    .line 495
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
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

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayDataAlert(Ljava/lang/String;)V
    .locals 8
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    .line 417
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

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090726

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v6, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 423
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 424
    const v2, 0x104000a

    new-instance v3, Lcom/android/sec_settings/tts/TextToSpeechSettings$3;

    invoke-direct {v3, p0, p1}, Lcom/android/sec_settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/sec_settings/tts/TextToSpeechSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 433
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 434
    return-void
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 329
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 330
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, currentLang:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, strings:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, langs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 337
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    aget-object v4, v3, v1

    .line 342
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 336
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #langs:[Ljava/lang/String;
    .restart local v3       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
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
    .line 276
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, currentEngine:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    sget-boolean v4, Lcom/android/sec_settings/tts/TextToSpeechSettings;->ENGINE_UPDATE_NOT:Z

    invoke-direct {p0, v0, v4}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->maybeUpdateTtsLanguage(Ljava/lang/String;Z)V

    .line 281
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 287
    .local v1, currentLocale:Ljava/util/Locale;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 290
    const-string v4, "language"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v4, "country"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v4, "variant"

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :cond_1
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const/16 v4, 0x7bf

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v2

    .line 299
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

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSettings()V
    .locals 9

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 220
    .local v6, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v7, "tts_default_rate"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRate:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    iget-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget v8, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    iget-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    iget-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 230
    const/4 v5, 0x0

    .line 231
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 238
    .restart local v5       #preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 240
    iget-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v7}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v3

    .line 241
    .local v3, engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 242
    .local v1, engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    new-instance v2, Lcom/android/sec_settings/tts/TtsEnginePreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, v1, p0, v5}, Lcom/android/sec_settings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/sec_settings/tts/TtsEnginePreference$RadioButtonGroupState;Landroid/preference/PreferenceActivity;)V

    .line 244
    .local v2, enginePref:Lcom/android/sec_settings/tts/TtsEnginePreference;
    iget-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 221
    .end local v1           #engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2           #enginePref:Lcom/android/sec_settings/tts/TtsEnginePreference;
    .end local v3           #engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v7, 0x64

    iput v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRate:I

    goto :goto_0

    .line 234
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "TextToSpeechSettings used outside a PreferenceActivity"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    .restart local v3       #engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;Z)V
    .locals 8
    .parameter "currentEngine"
    .parameter "shouldUpdateEngine"

    .prologue
    .line 251
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    .line 252
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 255
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, locale:[Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->checkLocaleAvailable(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    .line 261
    .local v3, newLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 263
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    .line 264
    :cond_0
    const-string v4, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading language ahead of sample check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 269
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_1
    return-void
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, sample:Ljava/lang/String;
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 349
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :cond_0
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got sample text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_2

    .line 360
    iget-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 365
    :goto_1
    return-void

    .line 354
    :cond_1
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using default sample text :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :cond_2
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 508
    iget-object v5, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, engine:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 511
    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no engine bound"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 515
    :cond_0
    if-nez p1, :cond_1

    .line 516
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 523
    iget-object v5, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 524
    .local v1, engineCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 525
    iget-object v5, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 526
    .local v4, p:Landroid/preference/Preference;
    instance-of v5, v4, Lcom/android/sec_settings/tts/TtsEnginePreference;

    if-eqz v5, :cond_3

    move-object v2, v4

    .line 527
    check-cast v2, Lcom/android/sec_settings/tts/TtsEnginePreference;

    .line 528
    .local v2, enginePref:Lcom/android/sec_settings/tts/TtsEnginePreference;
    invoke-virtual {v2}, Lcom/android/sec_settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 529
    invoke-virtual {v2, p1}, Lcom/android/sec_settings/tts/TtsEnginePreference;->setVoiceDataDetails(Landroid/content/Intent;)V

    .line 534
    .end local v2           #enginePref:Lcom/android/sec_settings/tts/TtsEnginePreference;
    .end local v4           #p:Landroid/preference/Preference;
    :cond_2
    sget-boolean v5, Lcom/android/sec_settings/tts/TextToSpeechSettings;->ENGINE_UPDATE_ONINIT:Z

    invoke-direct {p0, v0, v5}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->maybeUpdateTtsLanguage(Ljava/lang/String;Z)V

    .line 536
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0

    .line 524
    .restart local v4       #p:Landroid/preference/Preference;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private shouldDisplayDataAlert(Ljava/lang/String;)Z
    .locals 2
    .parameter "engine"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    .line 541
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
    .line 437
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating default synth to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    .line 451
    iget-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 454
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_0
    :goto_0
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating engine : Attempting to connect to engine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 465
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
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

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 184
    iget-object v3, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/DrivingModeSettings;->areAllDrivingModeOptionsDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 191
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 184
    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateWidgetState(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 414
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 321
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 322
    invoke-direct {p0, p2, p3}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 324
    invoke-direct {p0, p3}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 147
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 152
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 154
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 155
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 157
    const-string v0, "driving_mode_settings"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    .line 158
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f09089f

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 163
    :cond_0
    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->initSettings()V

    .line 170
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 200
    :cond_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 309
    const-string v0, "TextToSpeechSettings"

    const-string v1, "TTS engine for settings screen initialized."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    const-string v0, "TextToSpeechSettings"

    const-string v1, "TTS engine for settings screen failed to initialize successfully."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 209
    :cond_0
    sget-object v0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;

    if-eqz v0, :cond_1

    .line 210
    sget-object v0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;->stopObserving()V

    .line 211
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;

    .line 213
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 368
    const-string v5, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_rate"

    iget v6, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v5, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v5, v5

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 376
    :cond_0
    const-string v4, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS default rate changed, now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_1
    :goto_0
    return v3

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TextToSpeechSettings"

    const-string v5, "could not persist default TTS rate setting"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 380
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v5, "driving_mode_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 381
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 382
    .local v2, value:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, intent:Landroid/content/Intent;
    if-ne v2, v3, :cond_4

    .line 385
    const-string v4, "DrivingMode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    :goto_2
    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 391
    const-string v4, "TextToSpeechSettings"

    const-string v5, "Driving mode changed broadcast"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #value:I
    :cond_3
    move v2, v4

    .line 381
    goto :goto_1

    .line 387
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #value:I
    :cond_4
    const-string v5, "DrivingMode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getSampleText()V

    .line 405
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 175
    invoke-direct {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateState()V

    .line 177
    sget-object v0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;-><init>(Lcom/android/sec_settings/tts/TextToSpeechSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;

    .line 179
    sget-object v0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings$SettingsObserver;->startObserving()V

    .line 181
    :cond_0
    return-void
.end method

.method public onUpdateEngine(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 475
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating engine: Successfully bound to the engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 480
    :cond_0
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Updating engine: Failed to bind to engine, reverting."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 484
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 487
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .parameter "current"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    .line 557
    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->shouldDisplayDataAlert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->displayDataAlert(Ljava/lang/String;)V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/sec_settings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    goto :goto_0
.end method
