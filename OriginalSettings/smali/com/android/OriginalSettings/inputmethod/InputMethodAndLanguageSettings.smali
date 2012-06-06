.class public Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private mHaveHardKeyboard:Z

.field private mImis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOnlyImeSettings:Z

.field private mLanguagePref:Landroid/preference/Preference;

.field private mSettingsObserver:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 65
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method private createImePreferenceHierarchy(Landroid/preference/PreferenceGroup;)V
    .locals 8
    .parameter "root"

    .prologue
    .line 321
    const-string v6, "hard_keyboard"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 322
    .local v2, hardKeyPref:Landroid/preference/Preference;
    iget-boolean v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v6, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 324
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v6, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 332
    :cond_1
    if-eqz v2, :cond_2

    .line 333
    iget-boolean v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v6, :cond_4

    .line 334
    check-cast v2, Landroid/preference/PreferenceCategory;

    .end local v2           #hardKeyPref:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 339
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 340
    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 342
    iget-boolean v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v6, :cond_3

    .line 344
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 345
    .local v1, currentIme:Landroid/preference/PreferenceScreen;
    const-string v6, "current_input_method"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04f2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 350
    .end local v1           #currentIme:Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    if-nez v6, :cond_5

    const/4 v0, 0x0

    .line 351
    .local v0, N:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 352
    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 353
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v4, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    move-result-object v5

    .line 354
    .local v5, pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 336
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v5           #pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    .restart local v2       #hardKeyPref:Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 350
    .end local v2           #hardKeyPref:Landroid/preference/Preference;
    :cond_5
    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 357
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_6
    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 358
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_7

    .line 359
    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 358
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 361
    :cond_7
    return-void
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    .locals 9
    .parameter "imi"
    .parameter "imiSize"

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 302
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 305
    .local v6, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, settingsActivity:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :goto_0
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 315
    .local v0, pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 317
    return-object v0

    .line 310
    .end local v0           #pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private updateActiveInputMethodsSummary()V
    .locals 3

    .prologue
    .line 277
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    .line 278
    .local v1, pref:Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    if-eqz v2, :cond_0

    .line 279
    check-cast v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->updateSummary()V

    goto :goto_0

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 283
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 7

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 287
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 289
    .local v2, curPref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 292
    .local v1, curIme:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f050016

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 90
    const v1, 0x7f0b008b

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "phone_language"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    :goto_1
    new-instance v1, Lcom/android/OriginalSettings/VoiceInputOutputSettings;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    invoke-virtual {v1}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->onCreate()V

    .line 112
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 113
    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    .line 116
    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    .line 121
    const-string v0, "keyboard_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->createImePreferenceHierarchy(Landroid/preference/PreferenceGroup;)V

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/OriginalSettings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 125
    const-string v0, "spellcheckers_settings"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/inputmethod/SpellCheckersPreference;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p0, v1}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 131
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 133
    return-void

    .line 99
    :cond_1
    const-string v1, "phone_language"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 113
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 92
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 215
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 217
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    :goto_0
    return v3

    .line 225
    :cond_0
    instance-of v5, p2, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 226
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 245
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    .line 228
    :cond_2
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 231
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    .line 233
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    move-object v0, p2

    .line 234
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 235
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    iget-boolean v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v5, :cond_1

    .line 236
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 237
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v6, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_5

    .line 238
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v3, v4

    .line 240
    goto :goto_0

    .line 236
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 174
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 175
    iget-boolean v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 178
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v7, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, locale:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #locale:Ljava/lang/String;
    :cond_0
    iget-boolean v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v4, :cond_2

    .line 195
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 196
    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v7, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 198
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v7, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 198
    goto :goto_1

    .line 204
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 206
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateActiveInputMethodsSummary()V

    .line 207
    return-void
.end method
