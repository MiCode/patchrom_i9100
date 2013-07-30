.class public Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

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

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/sec_settings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mIsOnlyImeSettings:Z

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mSettingsObserver:Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 72
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 559
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/sec_settings/inputmethod/InputMethodPreference;
    .locals 9
    .parameter "imi"
    .parameter "imiSize"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 427
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 430
    .local v6, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, settingsActivity:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    :goto_0
    new-instance v0, Lcom/android/sec_settings/inputmethod/InputMethodPreference;

    iget-object v3, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/inputmethod/InputMethodPreference;-><init>(Lcom/android/sec_settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 440
    .local v0, pref:Lcom/android/sec_settings/inputmethod/InputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, v6}, Lcom/android/sec_settings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    return-object v0

    .line 435
    .end local v0           #pref:Lcom/android/sec_settings/inputmethod/InputMethodPreference;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "languageCode"
    .parameter "locales"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, count:I
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 362
    .local v4, localeCode:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 364
    add-int/lit8 v1, v1, 0x1

    .line 365
    if-le v1, v5, :cond_0

    .line 370
    .end local v4           #localeCode:Ljava/lang/String;
    :goto_1
    return v6

    .line 361
    .restart local v4       #localeCode:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v4           #localeCode:Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 549
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 550
    .local v1, devices:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 551
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 552
    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    const/4 v3, 0x1

    .line 556
    .end local v0           #device:Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 550
    .restart local v0       #device:Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v0           #device:Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private showKeyboardLayoutDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 507
    new-instance v0, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, fragment:Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 510
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private updateActiveInputMethodsSummary()V
    .locals 3

    .prologue
    .line 402
    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/sec_settings/inputmethod/InputMethodPreference;

    .line 403
    .local v1, pref:Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/sec_settings/inputmethod/InputMethodPreference;

    if-eqz v2, :cond_0

    .line 404
    check-cast v1, Lcom/android/sec_settings/inputmethod/InputMethodPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/sec_settings/inputmethod/InputMethodPreference;->updateSummary()V

    goto :goto_0

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 408
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 7

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 412
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 414
    .local v2, curPref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/sec_settings/inputmethod/InputMethodAndSubtypeUtil;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 417
    .local v1, curIme:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 536
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 539
    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 541
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 546
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :goto_1
    return-void

    .line 541
    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 544
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 451
    iget-object v10, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 452
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 453
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 454
    .local v2, devices:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 455
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 456
    .local v1, device:Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 459
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, inputDeviceDescriptor:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 462
    .local v7, keyboardLayoutDescriptor:Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 465
    .local v6, keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 466
    .local v8, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 467
    if-eqz v6, :cond_2

    .line 468
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    :goto_2
    new-instance v10, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v10, p0, v5}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 479
    iget-object v10, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5       #inputDeviceDescriptor:Ljava/lang/String;
    .restart local v7       #keyboardLayoutDescriptor:Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 462
    goto :goto_1

    .line 470
    .restart local v6       #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .restart local v8       #pref:Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f090646

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 484
    .end local v1           #device:Landroid/view/InputDevice;
    .end local v2           #devices:[I
    .end local v3           #i:I
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 485
    iget-object v9, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_5

    .line 486
    iget-object v9, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 487
    .local v8, pref:Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 488
    iget-object v9, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 490
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 492
    .end local v4           #i:I
    .end local v8           #pref:Landroid/preference/Preference;
    .restart local v3       #i:I
    :cond_5
    iget-object v9, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 493
    iget-object v9, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 494
    .local v0, count:I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 495
    iget-object v9, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 496
    .restart local v8       #pref:Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 497
    iget-object v9, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 494
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 500
    .end local v8           #pref:Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 504
    .end local v0           #count:I
    .end local v3           #i:I
    :goto_5
    return-void

    .line 502
    :cond_7
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 447
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 448
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/android/sec_settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v0

    .line 211
    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    const v2, 0x7f090649

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 219
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 220
    const-class v1, Lcom/android/sec_settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 229
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    const v0, 0x7f09064a

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 234
    const-class v0, Lcom/android/sec_settings/inputmethod/UserDictionaryList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 525
    invoke-super {p0, p1, p2, p3}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 527
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_descriptor"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, inputDeviceDescriptor:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 531
    invoke-direct {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    .line 533
    .end local v0           #inputDeviceDescriptor:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 102
    const v0, 0x7f09000e

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "phone_language"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 121
    :goto_1
    new-instance v0, Lcom/android/sec_settings/VoiceInputOutputSettings;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/VoiceInputOutputSettings;-><init>(Lcom/android/sec_settings/SettingsPreferenceFragment;)V

    invoke-virtual {v0}, Lcom/android/sec_settings/VoiceInputOutputSettings;->onCreate()V

    .line 124
    const-string v0, "hard_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 125
    const-string v0, "keyboard_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 127
    const-string v0, "game_controller_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 131
    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-boolean v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 136
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 140
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 145
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 152
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sevenknowledge.sevennotesproduct.samsung"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 111
    :cond_2
    const-string v0, "phone_language"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 159
    iget-boolean v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v0, :cond_4

    .line 160
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    const-string v1, "current_input_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09066c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    const v1, 0x7f0400d6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 164
    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    if-nez v0, :cond_5

    move v1, v2

    :goto_3
    move v3, v2

    .line 169
    :goto_4
    if-ge v3, v1, :cond_6

    .line 170
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 171
    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/sec_settings/inputmethod/InputMethodPreference;

    move-result-object v0

    .line 172
    iget-object v4, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_3

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 177
    :goto_5
    if-ge v2, v1, :cond_7

    .line 178
    iget-object v3, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 183
    :cond_7
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 184
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/sec_settings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 189
    const-string v0, "spellcheckers_settings"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/inputmethod/SpellCheckersPreference;

    .line 191
    if-eqz v0, :cond_8

    .line 192
    invoke-virtual {v0, p0, v1}, Lcom/android/sec_settings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/android/sec_settings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 195
    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 197
    return-void

    .line 104
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 313
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 318
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 323
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 299
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 301
    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    iget-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/sec_settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/sec_settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 308
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 328
    invoke-static {}, Lcom/android/sec_settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    .line 356
    :goto_0
    return v4

    .line 331
    :cond_0
    instance-of v5, p2, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_3

    .line 332
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 356
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 334
    :cond_2
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 337
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    .line 339
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    move-object v0, p2

    .line 340
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 341
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 342
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v5, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 343
    iget-object v5, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v6, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_5

    .line 344
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 342
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 350
    .end local v1           #i:I
    :cond_6
    iget-object v5, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 240
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 242
    iget-object v6, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v6, p0, v10}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 244
    iget-boolean v6, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v6, :cond_1

    .line 245
    iget-object v6, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v6, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 247
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, language:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 256
    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, localeString:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 263
    iget-object v6, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #localeString:Ljava/lang/String;
    :cond_0
    const-string v6, "VZW"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 268
    const-string v6, "key_user_dictionary_settings"

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    .line 280
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 281
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    sget-object v6, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    .line 282
    iget-object v6, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v9, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 284
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v9, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 258
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    .restart local v1       #conf:Landroid/content/res/Configuration;
    .restart local v3       #language:Ljava/lang/String;
    :cond_2
    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #localeString:Ljava/lang/String;
    goto :goto_0

    .line 273
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #localeString:Ljava/lang/String;
    :cond_3
    const-string v6, "key_user_dictionary_settings"

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 274
    .local v5, remove:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .end local v5           #remove:Landroid/preference/PreferenceScreen;
    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #i:I
    :cond_4
    move v6, v8

    .line 284
    goto :goto_3

    .line 289
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    :cond_5
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 292
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-static {p0, v6, v7, v10}, Lcom/android/sec_settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/sec_settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 294
    invoke-direct {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->updateActiveInputMethodsSummary()V

    .line 295
    return-void
.end method

.method public onSetupKeyboardLayouts(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/sec_settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 517
    const-string v1, "input_device_descriptor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    iput-object v0, p0, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 520
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 521
    return-void
.end method
