.class public Lcom/android/phone/CallTextToSpeech;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTextToSpeech$1;,
        Lcom/android/phone/CallTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static mInstance:Lcom/android/phone/CallTextToSpeech;


# instance fields
.field private DEFAULT_TTS_STREAM:Ljava/lang/String;

.field private DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

.field private final INVALID_VOLUME_LEVEL:I

.field private IsTtsInitiated:Z

.field private NewVoicemail:Ljava/lang/String;

.field private incomingCallInfo:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mOriginNotiVolume:I

.field private mOriginRingVolume:I

.field private mOriginTtsVolume:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsId:I

.field private mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v0, Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "TtsId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 45
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 46
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 49
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    .line 52
    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->INVALID_VOLUME_LEVEL:I

    .line 53
    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 54
    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 55
    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    .line 59
    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    .line 65
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->incomingCallInfo:Ljava/lang/String;

    .line 66
    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 69
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    .line 71
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    .line 78
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 79
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 80
    iput-object p1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    .line 81
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 84
    iput p2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    .line 85
    new-instance v1, Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/CallTextToSpeech$TtsListener;-><init>(Lcom/android/phone/CallTextToSpeech;Lcom/android/phone/CallTextToSpeech$1;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    .line 86
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 88
    iget-boolean v1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/CallTextToSpeech;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallTextToSpeech;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;
    .locals 2
    .parameter "context"
    .parameter "TtsId"

    .prologue
    .line 110
    const-class v1, Lcom/android/phone/CallTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    .line 113
    :cond_0
    new-instance v0, Lcom/android/phone/CallTextToSpeech;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    .line 114
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resetVolumeForTts(I)V
    .locals 5
    .parameter "TtsId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 302
    packed-switch p1, :pswitch_data_0

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    if-eq v0, v3, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 308
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 311
    :cond_1
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    if-eq v0, v3, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 314
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    goto :goto_0

    .line 320
    :pswitch_1
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    if-eq v0, v3, :cond_0

    .line 321
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 324
    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setVolumeForTts(I)V
    .locals 7
    .parameter "TtsId"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v4, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 260
    packed-switch p1, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    .line 265
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    .line 269
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 278
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-le v0, v6, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-gt v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    .line 291
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private speakTts(I)V
    .locals 11
    .parameter "TtsId"

    .prologue
    const v10, 0x7f0e029e

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    sget-object v5, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Getting into speak TTS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v2

    .line 148
    .local v2, locale:Ljava/util/Locale;
    sget-object v5, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInit...TTS - isLanguageAvailable() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v5

    if-eq v5, v9, :cond_2

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 160
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 161
    .local v1, TtsCallerInfo:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v3, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_0

    .line 173
    const-string v5, "streamType"

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v5, "utteranceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS ended : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 180
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 181
    if-nez v1, :cond_4

    .line 182
    sget-object v5, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const-string v6, "TTS_IDLE : callerinfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto/16 :goto_0

    .line 156
    .end local v1           #TtsCallerInfo:Ljava/lang/String;
    .end local v3           #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    sget-object v5, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const-string v6, "onInit...TTS - set Locale.US , maybe not configured"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1

    .line 186
    .restart local v1       #TtsCallerInfo:Ljava/lang/String;
    .restart local v3       #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v8

    .line 188
    .local v4, values:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 191
    .local v0, TTSCombinedString:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 193
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 199
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v4           #values:[Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 202
    const/4 v0, 0x0

    .line 203
    .restart local v0       #TTSCombinedString:Ljava/lang/CharSequence;
    const-string v5, "streamType"

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v5, "utteranceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS ended : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    .line 209
    if-nez v1, :cond_5

    .line 210
    sget-object v5, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const-string v6, "TTS_DURING_CALL : callerinfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto/16 :goto_0

    .line 214
    :cond_5
    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v8

    .line 216
    .restart local v4       #values:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 221
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 227
    .end local v0           #TTSCombinedString:Ljava/lang/CharSequence;
    .end local v4           #values:[Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_6

    .line 228
    iget v5, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v5}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    .line 230
    const-string v5, "streamType"

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :goto_2
    const-string v5, "utteranceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS ended : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v6, 0x7f0e019e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    .line 240
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    invoke-virtual {v5, v6, v8, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 241
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    .line 233
    :cond_6
    const-string v5, "streamType"

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public IsSpeakingTts()Z
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, IsSpeakingTts:Z
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 130
    :cond_0
    return v0
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    .line 337
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    .line 339
    :cond_0
    return-void
.end method

.method public stopTts()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 253
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallTextToSpeech;->resetVolumeForTts(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->destroy()V

    .line 256
    :cond_0
    return-void
.end method
