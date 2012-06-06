.class public Lcom/android/OriginalSettings/SoundSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mEnableLog:Z

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLoadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSilentMode:Landroid/preference/ListPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mVibrateOnRing:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mEnableLog:Z

    .line 123
    new-instance v0, Lcom/android/OriginalSettings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SoundSettings$1;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/android/OriginalSettings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SoundSettings$2;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mEnableLog:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/SoundSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 349
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 342
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 344
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 346
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 392
    return-void
.end method

.method private setPhoneSilentSettingValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 330
    const/4 v0, 0x2

    .line 331
    .local v0, ringerMode:I
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const/4 v0, 0x0

    .line 336
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 337
    return-void

    .line 333
    :cond_1
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setPhoneVibrateSettingValue(Z)V
    .locals 4
    .parameter "vibeOnRing"

    .prologue
    const/4 v1, 0x1

    .line 323
    if-eqz p1, :cond_0

    move v0, v1

    .line 325
    .local v0, vibrateMode:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 326
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 327
    return-void

    .line 323
    .end local v0           #vibrateMode:I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 364
    if-nez p2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 366
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 367
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 368
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x1040489

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 371
    const v0, 0x1040487

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 387
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 375
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 377
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 378
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 379
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 381
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 383
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateState(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 361
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 358
    .local v0, vibrateMode:I
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 359
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 358
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 158
    iget-boolean v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mEnableLog:Z

    if-eqz v11, :cond_0

    .line 159
    const-string v11, "SoundSettings"

    const-string v12, "SoundSettings onCreate() start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 164
    .local v9, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 166
    .local v0, activePhoneType:I
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 170
    const v11, 0x7f050039

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->addPreferencesFromResource(I)V

    .line 173
    const/4 v11, 0x2

    if-eq v11, v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "emergency_tone"

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    :cond_1
    const-string v11, "silent_mode"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    .line 179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 180
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    const-string v11, "ring_volume"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 187
    :goto_0
    const-string v11, "vibrate_on_ring"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    .line 188
    iget-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    const-string v11, "dtmf_tone"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 191
    iget-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 192
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v11, "dtmf_tone"

    const/4 v13, 0x1

    invoke-static {v9, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    const-string v11, "sound_effects"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 195
    iget-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 196
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v11, "sound_effects_enabled"

    const/4 v13, 0x1

    invoke-static {v9, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 198
    const-string v11, "haptic_feedback"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 199
    iget-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 200
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v11, "haptic_feedback_enabled"

    const/4 v13, 0x1

    invoke-static {v9, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    const-string v11, "lock_sounds"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 203
    iget-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 204
    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v11, "lockscreen_sounds_enabled"

    const/4 v13, 0x1

    invoke-static {v9, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    const-string v11, "ringtone"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 208
    const-string v11, "notification_sound"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 210
    const-string v11, "vibrator"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-nez v11, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_2
    const-string v11, "ATT"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 221
    :cond_3
    const/4 v11, 0x2

    if-ne v11, v0, :cond_4

    .line 222
    const-string v11, "emergency_tone"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 224
    .local v2, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v11, "emergency_tone"

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 229
    .end local v2           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_4
    const-string v11, "sound_settings"

    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceGroup;

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 231
    iget-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v12, "musicfx"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 232
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 234
    .local v6, p:Landroid/content/pm/PackageManager;
    const/16 v11, 0x200

    invoke-virtual {v6, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 235
    .local v10, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-gt v11, v12, :cond_5

    .line 241
    iget-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v12, p0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 245
    sget-object v1, Lcom/android/OriginalSettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_5
    if-ge v4, v5, :cond_c

    aget-object v8, v1, v4

    .line 246
    .local v8, prefKey:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 247
    .local v7, pref:Landroid/preference/Preference;
    if-eqz v7, :cond_6

    .line 248
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 245
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 183
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #p:Landroid/content/pm/PackageManager;
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v8           #prefKey:Ljava/lang/String;
    .end local v10           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    iget-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v11, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 192
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 196
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 200
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 204
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 253
    .restart local v3       #i:Landroid/content/Intent;
    .restart local v6       #p:Landroid/content/pm/PackageManager;
    .restart local v10       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_c
    new-instance v11, Lcom/android/OriginalSettings/SoundSettings$3;

    invoke-direct {v11, p0}, Lcom/android/OriginalSettings/SoundSettings$3;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 267
    new-instance v11, Lcom/android/OriginalSettings/SoundSettings$4;

    invoke-direct {v11, p0}, Lcom/android/OriginalSettings/SoundSettings$4;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 274
    new-instance v11, Lcom/android/OriginalSettings/SoundSettings$5;

    invoke-direct {v11, p0}, Lcom/android/OriginalSettings/SoundSettings$5;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 294
    iget-boolean v11, p0, Lcom/android/OriginalSettings/SoundSettings;->mEnableLog:Z

    if-eqz v11, :cond_d

    const-string v11, "SoundSettings"

    const-string v12, "SoundSettings onCreate() end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_d
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 314
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 438
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 443
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    .line 444
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->setPhoneVibrateSettingValue(Z)V

    goto :goto_0

    .line 445
    .restart local p2
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 446
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 396
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    move v0, v1

    .line 430
    :goto_1
    return v0

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 409
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 416
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 412
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_2

    .line 418
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 419
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 422
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 423
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 425
    :cond_9
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 299
    iget-boolean v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mEnableLog:Z

    if-eqz v1, :cond_0

    const-string v1, "SoundSettings"

    const-string v2, "SoundSettings onResume() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 302
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/SoundSettings;->updateState(Z)V

    .line 303
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->lookupRingtoneNames()V

    .line 305
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    iget-boolean v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mEnableLog:Z

    if-eqz v1, :cond_1

    const-string v1, "SoundSettings"

    const-string v2, "SoundSettings onResume() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    return-void
.end method
