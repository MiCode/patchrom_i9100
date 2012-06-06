.class public Lcom/android/OriginalSettings/DevelopmentSettings;
.super Landroid/preference/PreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPluggedType:I

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPluggedType:I

    .line 123
    new-instance v0, Lcom/android/OriginalSettings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DevelopmentSettings$1;-><init>(Lcom/android/OriginalSettings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private ShowErrorPopup()V
    .locals 3

    .prologue
    .line 485
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 486
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0702

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 488
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 489
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/DevelopmentSettings$2;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/DevelopmentSettings$2;-><init>(Lcom/android/OriginalSettings/DevelopmentSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 493
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 494
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/DevelopmentSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPluggedType:I

    return p1
.end method

.method private currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 281
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    :goto_0
    return v1

    .line 284
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 285
    .local v0, enabled:Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private initIntentFilter()V
    .locals 3

    .prologue
    .line 479
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 480
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 482
    return-void
.end method

.method private removeHdcpOptionsForProduction()V
    .locals 3

    .prologue
    .line 197
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "hdcp_checking"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 199
    .local v0, hdcpChecking:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    .end local v0           #hdcpChecking:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 418
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 419
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 420
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 401
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 402
    .local v1, scale:F
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 403
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 404
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 405
    .local v2, val:F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_0

    .line 406
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 407
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v2           #val:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 403
    .restart local v0       #i:I
    .restart local v1       #scale:F
    .restart local v2       #val:F
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v2           #val:F
    :cond_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 412
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 413
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 433
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 434
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 435
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 436
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 437
    .local v2, val:I
    if-lt v2, v1, :cond_0

    .line 438
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 439
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 447
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 435
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v2           #val:I
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 444
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 445
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 369
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 371
    return-void
.end method

.method private updateFlingerOptions()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 323
    :try_start_0
    const-string v8, "SurfaceFlinger"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 324
    .local v2, flinger:Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 327
    .local v3, reply:Landroid/os/Parcel;
    const-string v8, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    const/16 v8, 0x3f2

    const/4 v9, 0x0

    invoke-interface {v2, v8, v0, v3, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 330
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 332
    .local v5, showCpu:I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .local v1, enableGL:I
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 334
    .local v6, showUpdates:I
    iget-object v8, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {v8, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 336
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 337
    .local v4, showBackground:I
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #enableGL:I
    .end local v2           #flinger:Landroid/os/IBinder;
    .end local v3           #reply:Landroid/os/Parcel;
    .end local v4           #showBackground:I
    .end local v5           #showCpu:I
    .end local v6           #showUpdates:I
    :cond_1
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 362
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 245
    const/4 v3, 0x1

    .line 246
    .local v3, index:I
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 247
    .local v1, hdcpChecking:Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 248
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, currentValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, summaries:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 252
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    move v3, v2

    .line 257
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 258
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 261
    .end local v0           #currentValue:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #summaries:[Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    return-void

    .line 251
    .restart local v0       #currentValue:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v4       #summaries:[Ljava/lang/String;
    .restart local v5       #values:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 395
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 397
    return-void
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b05d2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b05d1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 306
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 467
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 316
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 318
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 297
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 298
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 424
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 425
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 426
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v0           #scale:F
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 451
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 452
    .local v0, limit:I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 453
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v0           #limit:I
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 375
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 379
    .local v0, service:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 384
    :goto_1
    return-void

    .line 375
    .end local v0           #service:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 382
    .restart local v0       #service:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeFlingerOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 346
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 347
    .local v1, flinger:Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, data:Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/16 v2, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v0           #data:Landroid/os/Parcel;
    .end local v1           #flinger:Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 365
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void

    .line 365
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 388
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    return-void

    .line 459
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 294
    :goto_1
    return-void

    .line 290
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 589
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 590
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkClicked:Z

    .line 591
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 151
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 154
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 158
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 162
    :cond_0
    const-string v3, "enable_adb"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 163
    const-string v3, "keep_screen_on"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v3, "allow_mock_location"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 167
    const-string v3, "strict_mode"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v3, "pointer_location"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v3, "show_touches"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    .line 170
    const-string v3, "show_screen_updates"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v3, "show_cpu_usage"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    .line 172
    const-string v3, "force_hw_ui"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    .line 173
    const-string v3, "window_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 174
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v3, "transition_animation_scale"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 176
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    .line 180
    const-string v3, "app_process_limit"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 181
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    .line 186
    const-string v3, "verifier_device_identifier"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 187
    .local v1, verifierDeviceIdentifier:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 188
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v2

    .line 189
    .local v2, verifierIndentity:Landroid/content/pm/VerifierDeviceIdentity;
    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {v2}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->removeHdcpOptionsForProduction()V

    .line 194
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialog()V

    .line 609
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 610
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 604
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "DevelopmentSettings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 474
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 565
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHdcpValues()V

    .line 579
    :goto_0
    return v0

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 570
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 572
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 575
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 576
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 579
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 500
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 506
    iget v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPluggedType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 507
    const-string v2, "DevelopmentSettings"

    const-string v3, "USB connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 509
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 513
    :goto_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->ShowErrorPopup()V

    goto :goto_0

    .line 511
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 519
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkClicked:Z

    .line 520
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialog()V

    .line 521
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b050c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b050b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040013

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    .line 528
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 530
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 533
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 534
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 538
    :cond_8
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 539
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    .line 542
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 543
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 544
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_c

    .line 545
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 546
    :cond_c
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d

    .line 547
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 548
    :cond_d
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_e

    .line 549
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeFlingerOptions()V

    goto/16 :goto_0

    .line 550
    :cond_e
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 551
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 552
    :cond_f
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_10

    .line 553
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 554
    :cond_10
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 555
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 556
    :cond_11
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isMockLocationEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 220
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v4, "mock_location"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHdcpValues()V

    .line 227
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updatePasswordSummary()V

    .line 228
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 229
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 230
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 231
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V

    .line 232
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 233
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 234
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 235
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 236
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 237
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 240
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->initIntentFilter()V

    .line 242
    return-void

    :cond_1
    move v1, v3

    .line 220
    goto :goto_0

    :cond_2
    move v1, v3

    .line 222
    goto :goto_1

    :cond_3
    move v2, v3

    .line 224
    goto :goto_2
.end method
