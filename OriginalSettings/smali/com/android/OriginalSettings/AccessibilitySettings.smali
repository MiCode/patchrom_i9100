.class public Lcom/android/OriginalSettings/AccessibilitySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/OriginalSettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;,
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleTouchExplorationFragment;,
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServiceFragment;,
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;,
        Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAudioCategory:Landroid/preference/PreferenceCategory;

.field private mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mEasyAccessCategory:Landroid/preference/PreferenceCategory;

.field private mFontListPref:Lcom/android/OriginalSettings/flipfont/FontListPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mPowerKeyHold:Landroid/preference/CheckBoxPreference;

.field private mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleScriptInjectionPreference:Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;

.field private mToggleTouchExplorationPreference:Landroid/preference/Preference;

.field private mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

.field private mVisionCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/OriginalSettings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 155
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 157
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;Lcom/android/OriginalSettings/AccessibilitySettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 159
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$1;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$2;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 1043
    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Set;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/OriginalSettings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/Activity;)Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    return-object v0
.end method

.method private static createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 929
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 930
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 932
    invoke-virtual {v0, v3, v3, v1, v3}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setPadding(IIII)V

    .line 933
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 935
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 939
    return-object v0
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 884
    if-nez v0, :cond_0

    .line 885
    const-string v0, ""

    .line 887
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 888
    sget-object v2, Lcom/android/OriginalSettings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 889
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 890
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 892
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_1

    .line 895
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 898
    :cond_2
    return-object v1
.end method

.method private handleToggleAutoRotateScreenPreferenceClick()V
    .locals 4

    .prologue
    .line 415
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 417
    .local v1, wm:Landroid/view/IWindowManager;
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V

    .line 425
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 420
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 423
    .local v0, exc:Landroid/os/RemoteException;
    const-string v2, "AccessibilitySettings"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 399
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_1
    return-void

    .line 398
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 23

    .prologue
    .line 433
    const-string v19, "services_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 434
    const-string v19, "system_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 437
    const-string v19, "toggle_large_text_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    .line 440
    const-string v19, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 441
    const-string v19, "GT-I9100"

    const-string v20, "GT-N7000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "GT-I9100"

    const-string v20, "GT-I9220"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 442
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    const v20, 0x7f07000b

    invoke-virtual/range {v19 .. v20}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 443
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 446
    const-string v19, "toggle_power_button_ends_call_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    .line 448
    const/16 v19, 0x1a

    invoke-static/range {v19 .. v19}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 450
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 454
    :cond_3
    const-string v19, "toggle_auto_rotate_screen_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    .line 458
    const-string v19, "toggle_touch_exploration_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    .line 461
    const-string v19, "select_long_press_timeout_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v19

    if-nez v19, :cond_4

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070035

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 467
    .local v18, timeoutValues:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070034

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 470
    .local v16, timeoutTitles:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 471
    .local v17, timeoutValueCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v4, v0, :cond_4

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    move-object/from16 v19, v0

    aget-object v20, v18, v4

    aget-object v21, v16, v4

    invoke-interface/range {v19 .. v21}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    .end local v4           #i:I
    .end local v16           #timeoutTitles:[Ljava/lang/String;
    .end local v17           #timeoutValueCount:I
    .end local v18           #timeoutValues:[Ljava/lang/String;
    :cond_4
    const-string v19, "toggle_script_injection_preference"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;

    .line 481
    const-string v19, "vision_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    .line 482
    const-string v19, "high_contrast"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    .line 483
    const-string v19, "screen_zoom"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    .line 484
    const-string v19, "MONOTYPE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Lcom/android/OriginalSettings/flipfont/FontListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontListPref:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    .line 485
    const-string v19, "torch_light"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    .line 486
    const-string v19, "mono_audio_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    .line 487
    const-string v19, "audio_preference_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    .line 489
    const-string v19, "easy_access"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mEasyAccessCategory:Landroid/preference/PreferenceCategory;

    .line 490
    const-string v19, "call_answering_ending"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    .line 491
    const-string v19, "power_key_hold"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontListPref:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090003

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mEasyAccessCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 514
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090003

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v21, "high_contrast"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v21, "screen_zoom"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v21, "torch_light"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v21, "mono_audio_db"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v21, "power_key_hold"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 531
    const-string v19, "GT-I9100"

    const-string v20, "GT-N7000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string v19, "GT-I9100"

    const-string v20, "GT-I9220"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 532
    :cond_6
    const-string v10, "com.android.calendar"

    .line 533
    .local v10, mPackageName_1:Ljava/lang/String;
    const-string v11, "com.sec.android.widgetapp.diotek.smemo"

    .line 534
    .local v11, mPackageName_2:Ljava/lang/String;
    const-string v12, "com.android.email"

    .line 535
    .local v12, mPackageName_3:Ljava/lang/String;
    const-string v13, "com.android.contacts"

    .line 536
    .local v13, mPackageName_4:Ljava/lang/String;
    const-string v14, "com.android.mms"

    .line 538
    .local v14, mPackageName_5:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 539
    .local v15, mPm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 540
    .local v5, info_1:Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 541
    .local v6, info_2:Landroid/content/pm/ApplicationInfo;
    const/4 v7, 0x0

    .line 542
    .local v7, info_3:Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .line 543
    .local v8, info_4:Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 546
    .local v9, info_5:Landroid/content/pm/ApplicationInfo;
    const/16 v19, 0x0

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v15, v10, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 547
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v11, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 548
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 549
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v13, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 550
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 556
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    .line 558
    :try_start_1
    const-string v19, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b07b6

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 560
    const-string v19, "AccessibilitySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Packages : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    .end local v5           #info_1:Landroid/content/pm/ApplicationInfo;
    .end local v6           #info_2:Landroid/content/pm/ApplicationInfo;
    .end local v7           #info_3:Landroid/content/pm/ApplicationInfo;
    .end local v8           #info_4:Landroid/content/pm/ApplicationInfo;
    .end local v9           #info_5:Landroid/content/pm/ApplicationInfo;
    .end local v10           #mPackageName_1:Ljava/lang/String;
    .end local v11           #mPackageName_2:Ljava/lang/String;
    .end local v12           #mPackageName_3:Ljava/lang/String;
    .end local v13           #mPackageName_4:Ljava/lang/String;
    .end local v14           #mPackageName_5:Ljava/lang/String;
    .end local v15           #mPm:Landroid/content/pm/PackageManager;
    :cond_7
    :goto_6
    return-void

    .line 518
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 520
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 522
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 524
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 526
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 551
    .restart local v5       #info_1:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #info_2:Landroid/content/pm/ApplicationInfo;
    .restart local v7       #info_3:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #info_4:Landroid/content/pm/ApplicationInfo;
    .restart local v9       #info_5:Landroid/content/pm/ApplicationInfo;
    .restart local v10       #mPackageName_1:Ljava/lang/String;
    .restart local v11       #mPackageName_2:Ljava/lang/String;
    .restart local v12       #mPackageName_3:Ljava/lang/String;
    .restart local v13       #mPackageName_4:Ljava/lang/String;
    .restart local v14       #mPackageName_5:Ljava/lang/String;
    .restart local v15       #mPm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 553
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "AccessibilitySettings"

    const-string v20, "Package name is not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 561
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 562
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v19, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b07b6

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 563
    const-string v19, "AccessibilitySettings"

    const-string v20, "ApplicationInfo is not found"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 572
    .end local v3           #e:Ljava/lang/RuntimeException;
    .end local v5           #info_1:Landroid/content/pm/ApplicationInfo;
    .end local v6           #info_2:Landroid/content/pm/ApplicationInfo;
    .end local v7           #info_3:Landroid/content/pm/ApplicationInfo;
    .end local v8           #info_4:Landroid/content/pm/ApplicationInfo;
    .end local v9           #info_5:Landroid/content/pm/ApplicationInfo;
    .end local v10           #mPackageName_1:Ljava/lang/String;
    .end local v11           #mPackageName_2:Ljava/lang/String;
    .end local v12           #mPackageName_3:Ljava/lang/String;
    .end local v13           #mPackageName_4:Ljava/lang/String;
    .end local v14           #mPackageName_5:Ljava/lang/String;
    .end local v15           #mPm:Landroid/content/pm/PackageManager;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 869
    .local v3, installedServiceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    sget-object v4, Lcom/android/OriginalSettings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 870
    .local v4, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 871
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 872
    .local v2, installedServiceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 873
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 874
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .local v1, installedService:Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 879
    .end local v1           #installedService:Landroid/content/ComponentName;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 819
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v2, v3, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 823
    const-string v3, "key_install_accessibility_service_offered_once"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 825
    :cond_2
    if-eqz v0, :cond_0

    .line 826
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_install_accessibility_service_offered_once"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 429
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 430
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateServicesPreferences()V

    .line 638
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateSystemPreferences()V

    .line 639
    return-void
.end method

.method private updateServicesPreferences()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 647
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 649
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 653
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 655
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 658
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_5

    .line 659
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 661
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 663
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 665
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 666
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 672
    if-eqz v1, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 674
    :goto_2
    if-eqz v4, :cond_4

    .line 675
    const v11, 0x7f0b0525

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    :goto_3
    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 681
    const-class v11, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServiceFragment;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 684
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 685
    const-string v12, "preference_key"

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v12, "checked"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 687
    const-string v4, "title"

    invoke-virtual {v11, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 690
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 691
    const v4, 0x7f0b0535

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 693
    :cond_0
    const-string v10, "summary"

    invoke-virtual {v11, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 697
    const-string v10, "enable_warning_title"

    const v12, 0x7f0b052b

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v10, "enable_warning_message"

    const v12, 0x7f0b052c

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v10, "disable_warning_title"

    const v12, 0x7f0b052d

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v10, "disable_warning_message"

    const v12, 0x7f0b052e

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    .line 710
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 711
    const-string v10, "settings_title"

    const v12, 0x7f0b0523

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v10, "settings_component_name"

    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 658
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 655
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 672
    goto/16 :goto_2

    .line 677
    :cond_4
    const v11, 0x7f0b0526

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 722
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 723
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$3;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$3;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 737
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    const v1, 0x7f040090

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 740
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 742
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 744
    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 756
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 757
    const-string v0, "GT-I9100"

    const-string v3, "GT-N7000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9100"

    const-string v3, "GT-I9220"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 761
    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 766
    if-ne v0, v5, :cond_4

    move v0, v1

    .line 768
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 772
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 774
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 777
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 778
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 779
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "touch_exploration_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    .line 781
    :goto_2
    if-eqz v0, :cond_7

    .line 782
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    const v3, 0x7f0b0525

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checked"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 796
    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "long_press_timeout"

    iget v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 798
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 800
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 803
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_script_injection"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 805
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 808
    const-string v0, "GT-I9100"

    const-string v1, "GT-N7000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GT-I9100"

    const-string v1, "GT-I9220"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 809
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 811
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 815
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 766
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 772
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 779
    goto :goto_2

    .line 786
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    const v3, 0x7f0b0526

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checked"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 792
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_9
    move v1, v2

    .line 803
    goto :goto_4
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 581
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 582
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 583
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 584
    add-int/lit8 v4, v0, -0x1

    .line 588
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 586
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 241
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 242
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->initializeAllPreferences()V

    .line 243
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 838
    packed-switch p1, :pswitch_data_0

    .line 861
    :goto_0
    return-object v0

    .line 840
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0530

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0531

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/AccessibilitySettings$4;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$4;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 838
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 275
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 276
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 277
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 280
    const-string v6, "AccessibilitySettings"

    const-string v9, "onPreferenceChange : "

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    move-object v4, p2

    .line 283
    check-cast v4, Ljava/lang/String;

    .line 284
    .local v4, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "long_press_timeout"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 286
    iget-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v6, v7

    .line 328
    .end local v4           #stringValue:Ljava/lang/String;
    .end local p2
    :goto_0
    return v6

    .line 289
    .restart local p2
    :cond_0
    const-string v6, "font_size"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 291
    const-string v6, "GT-I9100"

    const-string v9, "GT-N7000"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "GT-I9100"

    const-string v9, "GT-I9220"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 293
    :cond_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 294
    .local v5, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "font_size"

    invoke-static {v6, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    const-string v6, "AccessibilitySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPreferenceChange : fontsize =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, i:Landroid/content/Intent;
    const-string v6, "font_size"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_3

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v9, 0x7f0b08f4

    invoke-static {v6, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 303
    :cond_3
    const-string v6, "AccessibilitySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.settings.FONT_SIZE_CHANGED broadcast. extra(font_size) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #i:Landroid/content/Intent;
    .end local v5           #value:I
    :goto_1
    move v6, v7

    .line 326
    goto/16 :goto_0

    .restart local p2
    :cond_4
    move-object v6, p2

    .line 306
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/AccessibilitySettings;->floatToIndex(F)I

    move-result v0

    .line 307
    .local v0, fontIndex:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "font_size"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 308
    .local v3, previousIndex:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "font_size"

    invoke-static {v6, v9, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    if-ge v3, v10, :cond_6

    if-ne v0, v10, :cond_6

    .line 310
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .restart local v1       #i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    const-string v6, "AccessibilitySettings"

    const-string v8, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v1           #i:Landroid/content/Intent;
    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/AccessibilitySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 323
    iget-object v6, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/AccessibilitySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto :goto_1

    .line 314
    :cond_6
    if-ne v3, v10, :cond_5

    if-ge v0, v10, :cond_5

    .line 315
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v1       #i:Landroid/content/Intent;
    const-string v6, "large_font"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    const-string v6, "AccessibilitySettings"

    const-string v8, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #fontIndex:I
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #previousIndex:I
    :cond_7
    move v6, v8

    .line 328
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 333
    const-string v4, "AccessibilitySettings"

    const-string v5, "onPreferenceTreeClick : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 393
    :goto_0
    return v2

    .line 337
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleToggleAutoRotateScreenPreferenceClick()V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 344
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 345
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "high_contrast"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 347
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "high_contrast"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 349
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 350
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 351
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_zoom"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 353
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_zoom"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 355
    :cond_7
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 356
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 357
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "torch_light"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 359
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setFlashLed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AccessibilitySettings"

    const-string v3, "could not turn on torch light"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 364
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "torch_light"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setFlashLed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 367
    :catch_1
    move-exception v0

    .line 368
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "AccessibilitySettings"

    const-string v3, "could not turn off torch light"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 371
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, mono_intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 374
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mono_audio_db"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    const-string v3, "mono"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 381
    const-string v2, "AccessibilitySettings"

    const-string v3, "Mono Audio broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 377
    :cond_a
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mono_audio_db"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    const-string v2, "mono"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 382
    .end local v1           #mono_intent:Landroid/content/Intent;
    :cond_b
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 383
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 384
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_key_hold"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 386
    :cond_c
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "power_key_hold"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 388
    :cond_d
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 390
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 248
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->loadInstalledServices()V

    .line 250
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateAllPreferences()V

    .line 251
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-ne v0, v3, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 256
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 257
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_contrast"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 259
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_zoom"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 261
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "torch_light"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 263
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mono_audio_db"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_key_hold"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 270
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 257
    goto :goto_0

    :cond_3
    move v0, v2

    .line 259
    goto :goto_1

    :cond_4
    move v0, v2

    .line 261
    goto :goto_2

    :cond_5
    move v0, v2

    .line 263
    goto :goto_3

    :cond_6
    move v1, v2

    .line 265
    goto :goto_4
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 9
    .parameter "pref"

    .prologue
    const/4 v8, 0x0

    .line 593
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/AccessibilitySettings;->floatToIndex(F)I

    move-result v3

    .line 601
    .local v3, index:I
    const-string v5, "AccessibilitySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : font index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 603
    .local v1, fontIndex:I
    const-string v5, "AccessibilitySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Settings.System.FONT_SIZE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 605
    const/4 v3, 0x4

    .line 606
    const-string v5, "AccessibilitySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 612
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 613
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, fontSizeNames:[Ljava/lang/String;
    const v5, 0x7f0b0346

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 616
    return-void

    .line 594
    .end local v1           #fontIndex:I
    .end local v2           #fontSizeNames:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "AccessibilitySettings"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 5
    .parameter "objValue"

    .prologue
    .line 621
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 622
    .local v1, fontScale:F
    const-string v2, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/high16 v2, 0x3fc0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 624
    const v1, 0x3fa66666

    .line 625
    const-string v2, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 630
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v1           #fontScale:F
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AccessibilitySettings"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
