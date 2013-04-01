.class public Lcom/sec/android/app/fm/ChannelNameToSpeech;
.super Ljava/lang/Object;
.source "ChannelNameToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static _instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;


# instance fields
.field private mSpeech:[Ljava/lang/String;

.field mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->_instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/fm/ChannelNameToSpeech;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/sec/android/app/fm/ChannelNameToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->_instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;

    invoke-direct {v0}, Lcom/sec/android/app/fm/ChannelNameToSpeech;-><init>()V

    sput-object v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->_instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;

    .line 35
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->_instance:Lcom/sec/android/app/fm/ChannelNameToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected activityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 62
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 63
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 65
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 66
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[TextToSpeech]check voice data pass"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v1, "[TextToSpeech]we dont have any data lets go for installation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected destroy()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 115
    :cond_0
    return-void
.end method

.method public onInit(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 98
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "[TextToSpeech]on init"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mSpeech:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mSpeech:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/sec/android/app/fm/ChannelNameToSpeech;->mSpeech:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    const-string v2, "[TextToSpeech]speech is over.."

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;)V

    .line 106
    return-void
.end method
