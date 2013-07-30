.class public Lcom/android/sec_settings/SoundSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;

.field public static final REVERB_URI:Landroid/net/Uri;

.field private static myContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

.field private mAutoHapticDialog:Landroid/app/AlertDialog;

.field mAutoHapticNoPopup:Z

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mGSMRingtone:Lcom/android/sec_settings/DefaultRingtonePreference;

.field private mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLoadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mPhoneProfile:Landroid/preference/Preference;

.field private mPhoneVibration:Landroid/preference/Preference;

.field private mProfileMode:I

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/sec_settings/DefaultRingtonePreference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVolume:Lcom/android/sec_settings/RingerVolumePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ringtone2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sec_settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .line 169
    const-string v0, "content://com.android.settings.reverb.params"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/sec_settings/SoundSettings;->REVERB_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 172
    iput-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 173
    iput-boolean v0, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 177
    iput v0, p0, Lcom/android/sec_settings/SoundSettings;->mDirect:I

    .line 178
    iput-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 189
    new-instance v0, Lcom/android/sec_settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/SoundSettings$1;-><init>(Lcom/android/sec_settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/sec_settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/sec_settings/SoundSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/sec_settings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/SoundSettings;->setSystemSound()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/sec_settings/SoundSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/sec_settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/sec_settings/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 540
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 533
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 535
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 537
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 531
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
    .line 620
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 621
    return-void
.end method

.method private setSystemSound()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 576
    const-string v0, "off"

    invoke-direct {p0}, Lcom/android/sec_settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 585
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 582
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 583
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 882
    const-string v1, "SoundSettings"

    const-string v2, "UpdateMediaDB"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 884
    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 887
    if-ltz v3, :cond_0

    .line 888
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 893
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 895
    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMediaDB - extension("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), mimeType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    if-nez v3, :cond_2

    const-string v4, "3ga"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 900
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 926
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 927
    const-string v3, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v3, "title"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v3, "mime_type"

    const-string v4, "audio/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v3, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 932
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 933
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 934
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 935
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaDB - tempUri("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), newUri("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :goto_0
    return-object v0

    .line 901
    :cond_2
    :try_start_1
    const-string v1, "audio"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 902
    const-string v1, "SoundSettings"

    const-string v2, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 905
    :catch_0
    move-exception v1

    .line 906
    const-string v2, "SoundSettings"

    const-string v3, "updateMediaDB - exception is Occured - return null"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateRingtoneData(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v1, 0x1

    .line 941
    if-ne p1, v1, :cond_1

    .line 942
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/sec_settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 948
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/sec_settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 10
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 588
    if-nez p2, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 590
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 591
    const/4 v1, 0x0

    .line 592
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x1040507

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 594
    .local v9, summary:Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 599
    :goto_1
    if-nez v1, :cond_3

    .line 600
    const v0, 0x1040505

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 616
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 595
    :catch_0
    move-exception v8

    .line 596
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v0, "SoundSettings"

    const-string v2, "No data for ringtoneUri"

    invoke-static {v0, v2, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 604
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
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

    .line 606
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 607
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 610
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 612
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private updateState(Z)V
    .locals 10
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 545
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    .line 548
    .local v8, ringerMode:I
    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CHM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    :cond_2
    iget v1, p0, Lcom/android/sec_settings/SoundSettings;->mProfileMode:I

    if-nez v1, :cond_3

    .line 551
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f0909c6

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 568
    :goto_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 569
    .local v9, values:Landroid/content/ContentValues;
    const-string v1, "profile_silent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/SoundSettings;->mProfileMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 571
    .local v6, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v9, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 552
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_3
    iget v1, p0, Lcom/android/sec_settings/SoundSettings;->mProfileMode:I

    if-ne v1, v3, :cond_4

    .line 553
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090bde

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 554
    :cond_4
    iget v1, p0, Lcom/android/sec_settings/SoundSettings;->mProfileMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 555
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090bdf

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 556
    :cond_5
    iget v1, p0, Lcom/android/sec_settings/SoundSettings;->mProfileMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 557
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090be0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 558
    :cond_6
    iget v1, p0, Lcom/android/sec_settings/SoundSettings;->mProfileMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 559
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f090be1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 561
    :cond_7
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 562
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/sec_settings/SoundSettings;->mProfileMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 563
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 564
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const-string v2, "profile_name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 565
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 717
    const v0, 0x7f0908fb

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f09042c

    const/4 v4, 0x0

    .line 809
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    :cond_0
    const-string v0, "SoundSettings"

    const-string v1, "handleRingtonePicked() : Not changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    const-string v0, "SoundSettings"

    const-string v1, "updateRingtoneData(ringtoneType)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0, p2}, Lcom/android/sec_settings/SoundSettings;->updateRingtoneData(I)V

    .line 843
    :goto_1
    return-void

    .line 819
    :cond_1
    const-string v0, "SoundSettings"

    const-string v1, "handleRingtonePicked updating media DB"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    invoke-direct {p0, p1}, Lcom/android/sec_settings/SoundSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 823
    if-nez p1, :cond_2

    .line 824
    const-string v0, "SoundSettings"

    const-string v1, "handleRingtonePicked - pickedUri is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 830
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 831
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 834
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRingtonePicked - pickedUri("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), ringtoneType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRingtonePicked(IllegalArgumentException): pickedUri is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 776
    invoke-super {p0, p1, p2, p3}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 778
    packed-switch p1, :pswitch_data_0

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 780
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 781
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 782
    .local v0, pickedUri:Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 787
    .end local v0           #pickedUri:Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 788
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 789
    .restart local v0       #pickedUri:Landroid/net/Uri;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 218
    invoke-super/range {p0 .. p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 220
    .local v17, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    .line 222
    .local v3, activePhoneType:I
    const-string v20, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/AudioManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 224
    const v20, 0x7f070065

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/sec_settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 228
    const-string v20, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/sec_settings/DefaultRingtonePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mRingtone:Lcom/android/sec_settings/DefaultRingtonePreference;

    .line 232
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mRingtone:Lcom/android/sec_settings/DefaultRingtonePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/DefaultRingtonePreference;->setObject(Lcom/android/sec_settings/SoundSettings;)V

    .line 233
    const-string v20, "ringtone2"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/sec_settings/DefaultRingtonePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mGSMRingtone:Lcom/android/sec_settings/DefaultRingtonePreference;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mGSMRingtone:Lcom/android/sec_settings/DefaultRingtonePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/DefaultRingtonePreference;->setObject(Lcom/android/sec_settings/SoundSettings;)V

    .line 235
    const-string v20, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/sec_settings/RingerVolumePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mVolume:Lcom/android/sec_settings/RingerVolumePreference;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mVolume:Lcom/android/sec_settings/RingerVolumePreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/RingerVolumePreference;->setObject(Lcom/android/sec_settings/SoundSettings;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 239
    .local v4, activity:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/sec_settings/SoundSettings;->mDirect:I

    .line 242
    const-string v20, "Direct"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mDirect : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/sec_settings/SoundSettings;->mDirect:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const-string v21, "com.android.settings"

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v20

    sput-object v20, Lcom/android/sec_settings/SoundSettings;->myContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v0, v3, :cond_1

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0001

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-nez v20, :cond_2

    .line 262
    const-string v20, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 266
    :cond_2
    const-string v20, "gps_notification_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 271
    const-string v20, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "vibrate_when_ringing"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "vibrate"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mute"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 277
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 281
    :goto_3
    const-string v20, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "dtmf_tone"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    const-string v20, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "sound_effects_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    const-string v20, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "haptic_feedback_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    const-string v20, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "lockscreen_sounds_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_10

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    const-string v20, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 303
    const-string v20, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 304
    const-string v20, "ringtone2"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    .line 306
    const-string v20, "autohaptic_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    const-string v20, "phone_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    .line 311
    const-string v20, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Vibrator;

    .line 312
    .local v19, vibrator:Landroid/os/Vibrator;
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v20

    if-nez v20, :cond_11

    .line 313
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "vibration_feedback_intensity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    :cond_5
    :goto_8
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_6

    .line 333
    const-string v20, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 335
    .local v9, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v20, "emergency_tone"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 361
    .end local v9           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 364
    const-string v20, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    const-string v21, "phone_profile"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    .line 367
    const-string v20, "CTC"

    const-string v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "CHM"

    const-string v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 372
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    const-string v21, "musicfx"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 373
    new-instance v10, Landroid/content/Intent;

    const-string v20, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v10, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 375
    .local v13, p:Landroid/content/pm/PackageManager;
    const/16 v20, 0x200

    move/from16 v0, v20

    invoke-virtual {v13, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 376
    .local v18, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_8

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 385
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/sec_settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_14

    .line 386
    sget-object v5, Lcom/android/sec_settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_9
    if-ge v11, v12, :cond_13

    aget-object v15, v5, v11

    .line 387
    .local v15, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 388
    .local v14, pref:Landroid/preference/Preference;
    if-eqz v14, :cond_9

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 230
    .end local v4           #activity:Landroid/content/Intent;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #p:Landroid/content/pm/PackageManager;
    .end local v14           #pref:Landroid/preference/Preference;
    .end local v15           #prefKey:Ljava/lang/String;
    .end local v18           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19           #vibrator:Landroid/os/Vibrator;
    :cond_a
    const-string v20, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/sec_settings/DefaultRingtonePreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mRingtone:Lcom/android/sec_settings/DefaultRingtonePreference;

    goto/16 :goto_0

    .line 250
    .restart local v4       #activity:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 251
    .local v8, e:Ljava/lang/Exception;
    const-string v20, "SoundSettings"

    const-string v21, "GPS sound settings: error getting activity of create package context"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 273
    .end local v8           #e:Ljava/lang/Exception;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 279
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 283
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 287
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 291
    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 299
    :cond_10
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 326
    .restart local v19       #vibrator:Landroid/os/Vibrator;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_12

    .line 327
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/sec_settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 392
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i:Landroid/content/Intent;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #p:Landroid/content/pm/PackageManager;
    .restart local v18       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_13
    const-string v20, "category_calls_and_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 393
    .local v6, callsAndNotificationCategory:Landroid/preference/PreferenceCategory;
    const v20, 0x7f090772

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 396
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #callsAndNotificationCategory:Landroid/preference/PreferenceCategory;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_14
    new-instance v20, Lcom/android/sec_settings/SoundSettings$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/sec_settings/SoundSettings$2;-><init>(Lcom/android/sec_settings/SoundSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 414
    new-instance v20, Lcom/android/sec_settings/SoundSettings$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/sec_settings/SoundSettings$3;-><init>(Lcom/android/sec_settings/SoundSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 421
    new-instance v20, Lcom/android/sec_settings/SoundSettings$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/sec_settings/SoundSettings$4;-><init>(Lcom/android/sec_settings/SoundSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/sec_settings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 430
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, download_contents:Ljava/lang/String;
    const-string v20, "Ringtone"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_15

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const-string v21, "download_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    :cond_15
    invoke-static {}, Lcom/android/sec_settings/Utils;->isDomesticModel()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 437
    const-string v20, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/ListPreference;

    .line 438
    .local v16, removable:Landroid/preference/ListPreference;
    if-eqz v16, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 440
    .end local v16           #removable:Landroid/preference/ListPreference;
    :cond_16
    return-void
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 796
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 797
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 800
    if-ne p1, v2, :cond_0

    .line 801
    invoke-virtual {p0, v0, v2}, Lcom/android/sec_settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 806
    :goto_0
    return-void

    .line 804
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 521
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 522
    invoke-static {}, Lcom/android/sec_settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 677
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 678
    .local v5, key:Ljava/lang/String;
    const-string v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceChange : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v9, "emergency_tone"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 681
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 682
    .local v6, value:I
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "emergency_tone"

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v6           #value:I
    :cond_0
    :goto_0
    return v8

    .line 684
    :catch_0
    move-exception v2

    .line 685
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "SoundSettings"

    const-string v9, "could not persist emergency tone setting"

    invoke-static {v7, v9, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 687
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v9, "autohaptic_settings"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 688
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 690
    .local v4, enable:Z
    if-eqz v4, :cond_2

    .line 692
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "com.android.settings_reverb"

    invoke-virtual {v9, v10, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 693
    .local v0, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2

    .line 694
    const-string v9, "DoNotShowDialog"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 695
    .local v1, doNotShow:Z
    if-nez v1, :cond_2

    iget-boolean v9, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticNoPopup:Z

    if-nez v9, :cond_2

    .line 696
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->showGuideDialog()V

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 699
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v9, "com.ensight.android.radioalarm"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 700
    const-string v9, "com.google.android.apps.books"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 701
    const-string v9, "com.samsung.SMT"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 702
    const-string v9, "com.google.android.tts"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    const-string v9, "com.sec.android.app.dmb"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 704
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    .end local v0           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v1           #doNotShow:Z
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iput-boolean v7, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 709
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-ne v4, v8, :cond_3

    move v7, v8

    :cond_3
    const/4 v10, 0x6

    const/4 v11, -0x1

    invoke-static {v9, v7, v10, v11}, Lcom/android/sec_settings/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 625
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 626
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    iget-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 673
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_2
    return v1

    :cond_1
    move v0, v1

    .line 626
    goto :goto_0

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 629
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    .line 632
    :cond_4
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 637
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps_noti_sound_enabled"

    iget-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_4

    .line 639
    :cond_6
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 640
    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 641
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 642
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 655
    :goto_5
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 645
    :cond_7
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 646
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 649
    :cond_8
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 650
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    goto :goto_5

    .line 652
    :cond_9
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_5

    :cond_a
    move v0, v1

    .line 655
    goto :goto_6

    .line 658
    :cond_b
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 659
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto :goto_7

    .line 662
    :cond_d
    iget-object v2, p0, Lcom/android/sec_settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_f

    .line 663
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto :goto_8

    .line 666
    :cond_f
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 444
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 447
    iget v3, p0, Lcom/android/sec_settings/SoundSettings;->mDirect:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 448
    iget-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mVolume:Lcom/android/sec_settings/RingerVolumePreference;

    invoke-virtual {v3}, Lcom/android/sec_settings/RingerVolumePreference;->directVolume()V

    .line 453
    :cond_0
    :goto_0
    iput v5, p0, Lcom/android/sec_settings/SoundSettings;->mDirect:I

    .line 456
    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_profile_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/sec_settings/SoundSettings;->mProfileMode:I

    .line 461
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/sec_settings/SoundSettings;->updateState(Z)V

    .line 462
    invoke-direct {p0}, Lcom/android/sec_settings/SoundSettings;->lookupRingtoneNames()V

    .line 465
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->updateDeviceVibrationName()V

    .line 468
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    .local v0, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_3

    .line 470
    const-string v3, "enable"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 471
    .local v1, enable:Z
    iget-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 472
    if-eqz v1, :cond_6

    .line 473
    iput-boolean v6, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 478
    .end local v1           #enable:Z
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/sec_settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 479
    invoke-direct {p0}, Lcom/android/sec_settings/SoundSettings;->setSystemSound()V

    .line 481
    iget-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_4

    .line 482
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    new-instance v3, Lcom/android/sec_settings/SoundSettings$5;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/SoundSettings$5;-><init>(Lcom/android/sec_settings/SoundSettings;)V

    iput-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_4
    :goto_2
    return-void

    .line 450
    .end local v0           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    :cond_5
    iget v3, p0, Lcom/android/sec_settings/SoundSettings;->mDirect:I

    if-ne v3, v6, :cond_0

    .line 451
    iget-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mRingtone:Lcom/android/sec_settings/DefaultRingtonePreference;

    invoke-virtual {v3}, Lcom/android/sec_settings/DefaultRingtonePreference;->directRingtone()V

    goto :goto_0

    .line 475
    .restart local v0       #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .restart local v1       #enable:Z
    :cond_6
    iput-boolean v5, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticNoPopup:Z

    goto :goto_1

    .line 500
    .end local v1           #enable:Z
    :cond_7
    iget-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_4

    .line 501
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 502
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    new-instance v3, Lcom/android/sec_settings/SoundSettings$6;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/SoundSettings$6;-><init>(Lcom/android/sec_settings/SoundSettings;)V

    iput-object v3, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 514
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public showGuideDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 722
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 723
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 725
    iput-object v4, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 729
    const v2, 0x7f04004d

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 730
    const v0, 0x7f0b0029

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 732
    const v3, 0x7f090c3d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 733
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 734
    const v0, 0x7f090c3c

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 735
    const v0, 0x7f0905e3

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 737
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 738
    iget-object v0, p0, Lcom/android/sec_settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sec_settings/SoundSettings$7;

    invoke-direct {v1, p0, v2}, Lcom/android/sec_settings/SoundSettings$7;-><init>(Lcom/android/sec_settings/SoundSettings;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 751
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    if-nez v1, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 760
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v2, "vibration_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    iget-object v1, p0, Lcom/android/sec_settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v2, "vibration_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 770
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
