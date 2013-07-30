.class public Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static isFacewithVoice:Z


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/sec_settings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordConfirmed:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mWaitingForConfirmation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 495
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V
    .locals 13
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 432
    .local v2, entries:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "lockscreen.biometric_weak_fallback"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 434
    .local v6, onlyShowFallback:Z
    iget-object v10, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {v10}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v9

    .line 437
    .local v9, weakBiometricAvailable:Z
    const/4 v4, 0x1

    .line 439
    .local v4, isVoiceTalkAvailable:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.vlingo.midas"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_17

    .line 445
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 446
    .local v7, pref:Landroid/preference/Preference;
    instance-of v10, v7, Landroid/preference/PreferenceScreen;

    if-eqz v10, :cond_2

    move-object v10, v7

    .line 447
    check-cast v10, Landroid/preference/PreferenceScreen;

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, key:Ljava/lang/String;
    const/4 v1, 0x1

    .line 449
    .local v1, enabled:Z
    const/4 v8, 0x1

    .line 450
    .local v8, visible:Z
    const-string v10, "unlock_set_off"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 451
    if-gtz p1, :cond_3

    const/4 v1, 0x1

    .line 477
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    if-eqz v6, :cond_16

    invoke-direct {p0, v5}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 478
    :cond_1
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 444
    .end local v1           #enabled:Z
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #visible:Z
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 440
    .end local v3           #i:I
    .end local v7           #pref:Landroid/preference/Preference;
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_0

    .line 451
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #enabled:Z
    .restart local v3       #i:I
    .restart local v5       #key:Ljava/lang/String;
    .restart local v7       #pref:Landroid/preference/Preference;
    .restart local v8       #visible:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 452
    :cond_4
    const-string v10, "unlock_set_none"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 453
    if-gtz p1, :cond_5

    const/4 v1, 0x1

    :goto_4
    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 456
    :cond_6
    const-string v10, "unlock_set_motion"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 457
    if-gtz p1, :cond_7

    const/4 v1, 0x1

    :goto_5
    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .line 460
    :cond_8
    const-string v10, "unlock_set_biometric_weak"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 461
    const v10, 0x8000

    if-le p1, v10, :cond_9

    iget-boolean v10, p2, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v10, :cond_a

    :cond_9
    const/4 v1, 0x1

    .line 463
    :goto_6
    move v8, v9

    goto :goto_2

    .line 461
    :cond_a
    const/4 v1, 0x0

    goto :goto_6

    .line 464
    :cond_b
    const-string v10, "unlock_set_biometric_weak_with_voice"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 465
    const v10, 0x8000

    if-gt p1, v10, :cond_c

    const/4 v1, 0x1

    .line 466
    :goto_7
    if-eqz v9, :cond_d

    if-eqz v4, :cond_d

    const/4 v8, 0x1

    :goto_8
    goto :goto_2

    .line 465
    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 466
    :cond_d
    const/4 v8, 0x0

    goto :goto_8

    .line 467
    :cond_e
    const-string v10, "unlock_set_signature"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 468
    const v10, 0x9000

    if-gt p1, v10, :cond_f

    const/4 v1, 0x1

    .line 469
    :goto_9
    iget-object v10, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {v10}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v8

    goto :goto_2

    .line 468
    :cond_f
    const/4 v1, 0x0

    goto :goto_9

    .line 470
    :cond_10
    const-string v10, "unlock_set_pattern"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 471
    const/high16 v10, 0x1

    if-gt p1, v10, :cond_11

    const/4 v1, 0x1

    :goto_a
    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x0

    goto :goto_a

    .line 472
    :cond_12
    const-string v10, "unlock_set_pin"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 473
    const/high16 v10, 0x2

    if-gt p1, v10, :cond_13

    const/4 v1, 0x1

    :goto_b
    goto/16 :goto_2

    :cond_13
    const/4 v1, 0x0

    goto :goto_b

    .line 474
    :cond_14
    const-string v10, "unlock_set_password"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 475
    const/high16 v10, 0x6

    if-gt p1, v10, :cond_15

    const/4 v1, 0x1

    :goto_c
    goto/16 :goto_2

    :cond_15
    const/4 v1, 0x0

    goto :goto_c

    .line 479
    :cond_16
    if-nez v1, :cond_2

    .line 480
    const v10, 0x7f09018e

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(I)V

    .line 481
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 485
    .end local v1           #enabled:Z
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v8           #visible:Z
    :cond_17
    return-void
.end method

.method private getSignatureIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/sec_settings/ChooseLockGeneric;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 532
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    const-string v1, "lockscreen.signature_fallback"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f090177

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 541
    const-string v2, "com.sec.android.signaturelock"

    const-string v3, "com.sec.android.signaturelock.SetupIntro"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v2, "showTutorial"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-static {v2, v5, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 544
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 545
    return-object v1
.end method

.method private updatePreferencesOrFinish()V
    .locals 13

    .prologue
    const v12, 0x7f09018f

    const/4 v11, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 278
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "lockscreen.password_type"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 279
    .local v6, quality:I
    if-ne v6, v9, :cond_b

    .line 281
    const-string v8, "minimum_quality"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 282
    new-instance v0, Llibcore/util/MutableBoolean;

    invoke-direct {v0, v10}, Llibcore/util/MutableBoolean;-><init>(Z)V

    .line 283
    .local v0, allowBiometric:Llibcore/util/MutableBoolean;
    invoke-direct {p0, v6, v0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v6

    .line 284
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 285
    .local v5, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 286
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 288
    :cond_0
    const v8, 0x7f07005c

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 291
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 292
    invoke-virtual {p0, v12}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, mText:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    if-nez v8, :cond_5

    .line 294
    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 296
    invoke-virtual {p0, v12}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 340
    .local v2, isFallback:Z
    if-nez v2, :cond_1

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 349
    .local v7, root:Landroid/preference/PreferenceScreen;
    const-string v8, "unlock_set_motion"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    .end local v7           #root:Landroid/preference/PreferenceScreen;
    :cond_2
    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v8, :cond_a

    .line 354
    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v8, v11}, Landroid/app/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 355
    const/high16 v8, 0x4

    invoke-direct {p0, v8, v0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    .line 366
    .end local v0           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v2           #isFallback:Z
    .end local v4           #mText:Ljava/lang/String;
    .end local v5           #prefScreen:Landroid/preference/PreferenceScreen;
    :goto_1
    return-void

    .line 298
    .restart local v0       #allowBiometric:Llibcore/util/MutableBoolean;
    .restart local v4       #mText:Ljava/lang/String;
    .restart local v5       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_motion_tilt_to_unlock"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    .line 300
    const v8, 0x7f090a59

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 303
    :cond_4
    const v8, 0x7f090190

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 306
    :cond_5
    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 308
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_face_with_voice"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 309
    .local v3, isfacevalue:I
    if-ne v3, v11, :cond_6

    .line 311
    const v8, 0x7f090185

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 314
    :cond_6
    const v8, 0x7f090191

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 316
    .end local v3           #isfacevalue:I
    :cond_7
    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 318
    const v8, 0x7f090192

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 320
    :cond_8
    iget-object v8, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 334
    const v8, 0x7f090195

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 323
    :sswitch_0
    const v8, 0x7f090193

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 324
    goto/16 :goto_0

    .line 327
    :sswitch_1
    const v8, 0x7f090194

    invoke-virtual {p0, v8}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    goto/16 :goto_0

    .line 357
    .restart local v2       #isFallback:Z
    :cond_9
    invoke-direct {p0, v6, v0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    goto/16 :goto_1

    .line 360
    :cond_a
    invoke-direct {p0, v6, v0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    goto/16 :goto_1

    .line 364
    .end local v0           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v2           #isFallback:Z
    .end local v4           #mText:Ljava/lang/String;
    .end local v5           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_b
    invoke-virtual {p0, v6, v10}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto/16 :goto_1

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
    .end sparse-switch
.end method

.method private upgradeQuality(ILlibcore/util/MutableBoolean;)I
    .locals 2
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    const v1, 0x8000

    .line 370
    invoke-direct {p0, p1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 371
    invoke-direct {p0, p1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 372
    invoke-direct {p0, p1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result v0

    .line 373
    .local v0, encryptionQuality:I
    if-le v0, p1, :cond_0

    .line 376
    if-eqz p2, :cond_2

    .line 377
    if-gt p1, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p1, v0

    .line 385
    .end local p1
    :goto_1
    return p1

    .line 377
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 379
    :cond_2
    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 390
    iget-object v1, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 391
    .local v0, minQuality:I
    if-ge p1, v0, :cond_0

    .line 392
    move p1, v0

    .line 394
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 406
    .local v1, encryptionStatus:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 408
    .local v0, encrypted:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 409
    const/high16 v2, 0x2

    if-ge p1, v2, :cond_1

    .line 410
    const/high16 p1, 0x2

    .line 413
    :cond_1
    return p1

    .line 406
    .end local v0           #encrypted:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 419
    const/high16 p1, 0x1

    .line 422
    :cond_0
    return p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 666
    const v0, 0x7f0908fe

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-super {p0, p1, p2, p3}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 249
    iput-boolean v3, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 251
    const-string v0, "ChooseLockGeneric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 254
    invoke-direct {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 266
    :goto_0
    return-void

    .line 255
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 257
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 259
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 112
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 115
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 116
    new-instance v2, Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/sec_settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/sec_settings/ChooseLockSettingsHelper;

    .line 119
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "confirm_credentials"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    .local v0, confirmCredentials:Z
    if-nez v0, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 124
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 126
    iget-object v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    .line 130
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 131
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    iput-boolean v3, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 138
    :cond_2
    iget-boolean v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_5

    .line 139
    invoke-direct {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 150
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v2, v4

    .line 121
    goto :goto_0

    .line 140
    :cond_5
    iget-boolean v2, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_3

    .line 141
    new-instance v1, Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/sec_settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 143
    .local v1, helper:Lcom/android/sec_settings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v6, v6}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 144
    iput-boolean v3, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 145
    invoke-direct {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 147
    :cond_6
    iput-boolean v3, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f040101

    const v10, 0x102000a

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 216
    invoke-super {p0, p1, p2, p3}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 217
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 220
    .local v2, onlyShowFallback:Z
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 222
    .local v4, voiceFallback:Z
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "lockscreen.signature_fallback"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 225
    .local v1, isSignature:Z
    const-string v5, "ChooseLockGeneric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateView : onlyShowFallback:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " voiceFallback:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v11, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, header:Landroid/view/View;
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v0, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 243
    .end local v0           #header:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v3

    .line 234
    :cond_1
    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v11, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 237
    .restart local v0       #header:Landroid/view/View;
    if-eqz v1, :cond_2

    move-object v5, v0

    .line 238
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09017e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_2
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v0, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x8000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 160
    const-string v3, "ChooseLockGeneric"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChooseLockGeneric : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v3, "unlock_set_motion"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 166
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/sec_settings/ChooseLockMotion;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 167
    const-string v4, "confirm_credentials"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    if-eqz v2, :cond_0

    .line 170
    const/16 v1, 0x65

    invoke-virtual {p0, v3, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 210
    :goto_0
    return v0

    .line 173
    :cond_0
    const/high16 v1, 0x200

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_0

    .line 179
    :cond_1
    const-string v3, "unlock_set_off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    invoke-virtual {p0, v1, v0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 182
    :cond_2
    const-string v3, "unlock_set_none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_motion_tilt_to_unlock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-virtual {p0, v1, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 188
    :cond_3
    const-string v3, "unlock_set_biometric_weak"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    invoke-virtual {p0, v6, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 191
    :cond_4
    const-string v3, "unlock_set_biometric_weak_with_voice"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 192
    sput-boolean v0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    .line 193
    invoke-virtual {p0, v6, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 195
    :cond_5
    const-string v3, "unlock_set_signature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 196
    const v2, 0x9000

    invoke-virtual {p0, v2, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 198
    :cond_6
    const-string v3, "unlock_set_pattern"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 199
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 201
    :cond_7
    const-string v3, "unlock_set_pin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 202
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 204
    :cond_8
    const-string v3, "unlock_set_password"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 205
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 208
    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 273
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x67

    const/16 v10, 0x65

    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 559
    iget-boolean v1, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to update password without confirming it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 565
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "lockscreen.signature_fallback"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 568
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v6

    .line 570
    const-string v1, "ChooseLockGeneric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUnlockMethodAndFinish : quality : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isFallback : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/high16 v1, 0x2

    if-lt v6, v1, :cond_5

    .line 573
    const-string v1, "ChooseLockGeneric"

    const-string v7, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_NUMERIC"

    invoke-static {v1, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v1, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    .line 575
    if-ge v1, v0, :cond_f

    .line 578
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 579
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/android/sec_settings/ChooseLockPassword;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v7

    .line 580
    const-string v8, "lockscreen.password_type"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v6, "lockscreen.password_min"

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    const-string v0, "lockscreen.password_max"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string v0, "confirm_credentials"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 586
    const-string v0, "lockscreen.signature_fallback"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    const-string v0, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 593
    :cond_1
    if-eqz v4, :cond_3

    .line 594
    if-eqz v5, :cond_2

    .line 595
    invoke-virtual {p0, v7, v11}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 662
    :goto_1
    return-void

    .line 597
    :cond_2
    invoke-virtual {p0, v7, v10}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 601
    :cond_3
    const/high16 v0, 0x200

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0, v7}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 661
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_1

    .line 604
    :cond_5
    const/high16 v0, 0x1

    if-ne v6, v0, :cond_b

    .line 605
    const-string v0, "ChooseLockGeneric"

    const-string v1, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_SOMETHING"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 607
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 608
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v0, :cond_8

    const-class v0, Lcom/android/sec_settings/ChooseLockPatternTutorial;

    :goto_4
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 611
    const-string v0, "key_lock_method"

    const-string v6, "pattern"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v0, "confirm_credentials"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 613
    const-string v0, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    const-string v0, "lockscreen.signature_fallback"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 618
    const-string v0, "ChooseLockGeneric"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockscreen.biometric_weak_with_voice_fallback : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 621
    const-string v0, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 624
    :cond_6
    if-eqz v4, :cond_a

    .line 625
    if-eqz v5, :cond_9

    .line 626
    invoke-virtual {p0, v1, v11}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :cond_7
    move v0, v3

    .line 606
    goto :goto_3

    .line 608
    :cond_8
    const-class v0, Lcom/android/sec_settings/ChooseLockPattern;

    goto :goto_4

    .line 628
    :cond_9
    invoke-virtual {p0, v1, v10}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 632
    :cond_a
    const/high16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 635
    :cond_b
    const v0, 0x8000

    if-ne v6, v0, :cond_d

    .line 636
    const-string v0, "ChooseLockGeneric"

    const-string v1, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_BIOMETRIC_WEAK"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sget-boolean v0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    if-nez v0, :cond_c

    .line 640
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/sec_settings/ChooseLockFaceWarning;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 651
    :goto_5
    sput-boolean v3, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->isFacewithVoice:Z

    goto/16 :goto_2

    .line 646
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v4, Lcom/android/sec_settings/ChooseLockFaceWarning;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    const-string v1, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 649
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 652
    :cond_d
    const v0, 0x9000

    if-ne v6, v0, :cond_e

    .line 653
    invoke-direct {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getSignatureIntent()Landroid/content/Intent;

    move-result-object v0

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 655
    :cond_e
    if-nez v6, :cond_4

    .line 656
    const-string v0, "ChooseLockGeneric"

    const-string v1, "updateUnlockMethodAndFinish : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 658
    iget-object v0, p0, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/sec_settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/sec_settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 659
    invoke-virtual {p0}, Lcom/android/sec_settings/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_2

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method
