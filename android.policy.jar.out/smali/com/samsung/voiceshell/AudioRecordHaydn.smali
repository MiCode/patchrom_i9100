.class public Lcom/samsung/voiceshell/AudioRecordHaydn;
.super Ljava/lang/Object;
.source "AudioRecordHaydn.java"


# static fields
.field private static final RECORDER_BUFFER_SIZE_16kHz:I = 0x9c40

.field private static final RECORDER_BUFFER_SIZE_44p1kHz:I = 0x15888

.field public static final STATE_READY:I = 0x0

.field public static final STATE_RUNNING:I = 0x1


# instance fields
.field public CommandType:[S

.field private final ROOT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public VElib:Lcom/samsung/voiceshell/VoiceEngine;

.field public VerifiedCommand:S

.field public aRecord:Landroid/media/AudioRecord;

.field final channelNum:I

.field final encodeFormat:I

.field public frameLeftNumber:[S

.field public handler:Landroid/os/Handler;

.field private isCustomVoiceTalkEnable:Z

.field private isRecording:Z

.field private isRunning_all:Z

.field private mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

.field public mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field private mState:I

.field private mWakeUpType:I

.field private oldrms:I

.field private processedSample:I

.field private readBufferSize:I

.field private readLength:I

.field private readSize:I

.field public recordBuffer:[S

.field public rmshandler:Landroid/os/Handler;

.field private sampleDelay_engine:I

.field private sampleDelay_wave:I

.field private sampleRate:I

.field private threadRecord:Ljava/lang/Thread;

.field private weHaveNoModel:Z


# direct methods
.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    .line 21
    const v0, 0xac44

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    .line 22
    iput v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->channelNum:I

    .line 23
    iput v4, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->encodeFormat:I

    .line 27
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 28
    iput v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    .line 29
    iput v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    .line 30
    iput v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    .line 34
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    .line 36
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->frameLeftNumber:[S

    .line 37
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->CommandType:[S

    .line 39
    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 40
    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 43
    iput v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    .line 44
    const/16 v0, 0x44e8

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleDelay_wave:I

    .line 45
    const/16 v0, 0x2274

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleDelay_engine:I

    .line 46
    iput v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    .line 48
    const-string v0, "/data/data/com.vlingo.midas/"

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->ROOT:Ljava/lang/String;

    .line 50
    const-string v0, "AudioRecordHaydn"

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 53
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 55
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 56
    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    .line 58
    iput-short v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VerifiedCommand:S

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    .line 60
    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    .line 124
    new-instance v0, Lcom/samsung/voiceshell/AudioRecordHaydn$1;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$1;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/samsung/voiceshell/AudioRecordHaydn$2;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$2;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    .line 65
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 66
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 67
    invoke-virtual {p0, p1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setVoiceEngineResultListener(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/voiceshell/AudioRecordHaydn;)Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/voiceshell/AudioRecordHaydn;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readLength:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/voiceshell/AudioRecordHaydn;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/voiceshell/AudioRecordHaydn;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/voiceshell/AudioRecordHaydn;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/voiceshell/AudioRecordHaydn;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    return p1
.end method

.method private initAudio()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "initAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/VoiceEngine;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/VoiceEngine;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 96
    const/16 v0, 0x640

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    .line 97
    const v0, 0x9c40

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pcm readSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->recordBuffer:[S

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->oldrms:I

    .line 112
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    iget v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    iget v5, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 117
    return-void

    .line 92
    :cond_0
    const v0, 0xac44

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->sampleRate:I

    goto :goto_0

    .line 101
    :cond_1
    const/16 v0, 0x113a

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readSize:I

    .line 102
    const v0, 0x15888

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->readBufferSize:I

    goto :goto_1
.end method

.method private initThread()V
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/voiceshell/AudioRecordHaydn$3;

    invoke-direct {v1, p0}, Lcom/samsung/voiceshell/AudioRecordHaydn$3;-><init>(Lcom/samsung/voiceshell/AudioRecordHaydn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 286
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 288
    :cond_0
    return-void
.end method

.method private waitForBackgroundRecordThread()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 356
    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 357
    iput-boolean v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 359
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "waitForBackgroundRecordThread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->threadRecord:Ljava/lang/Thread;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public SendHandlerMessage(IS)V
    .locals 3
    .parameter "value"
    .parameter "sValue"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 143
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "verify_result"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v2, "verify_command"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 146
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 147
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method

.method public closeRecord()V
    .locals 2

    .prologue
    .line 329
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "closeRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 337
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->waitForBackgroundRecordThread()V

    .line 339
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 343
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    .line 351
    :cond_1
    monitor-exit p0

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-boolean v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRunning_all:Z

    .line 377
    iput-boolean v3, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 379
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->waitForBackgroundRecordThread()V

    .line 384
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundRecordThread end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 389
    :cond_0
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 390
    iput-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 391
    return-void
.end method

.method public getAudioInstance()Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method public initRecorder()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "initRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initAudio()V

    .line 295
    invoke-direct {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initThread()V

    .line 296
    return-void
.end method

.method public pauseRecord()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "pauseRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 325
    return-void
.end method

.method public rmsSendHandlerMessage(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 167
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 168
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "rms_value"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 171
    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->rmshandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method public setAdaptation(I)I
    .locals 4
    .parameter "verifyResult"

    .prologue
    const/4 v3, 0x1

    .line 395
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "setAdaptation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-ne p1, v3, :cond_0

    .line 399
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v2, "Adaptation Start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v3}, Lcom/samsung/voiceshell/VoiceEngine;->setIsRunningAdaptation(Z)V

    .line 403
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-object v2, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->VElib:Lcom/samsung/voiceshell/VoiceEngine;

    iget-object v2, v2, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath_default:Ljava/lang/String;

    const-string v3, "/data/data/com.vlingo.midas/"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/voiceshell/VoiceEngine;->performContinuousAdaptation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 404
    .local v0, contADAPTreturn:I
    iget-object v1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adaptation End contADAPTreturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0           #contADAPTreturn:I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCustomVoiceTalkFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isCustomVoiceTalkEnable:Z

    .line 76
    return-void
.end method

.method public setVoiceEngineResultListener(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 72
    return-void
.end method

.method public setWakeUpType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 80
    iput p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mWakeUpType:I

    .line 81
    return-void
.end method

.method public setWeHaveNoModel(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->weHaveNoModel:Z

    .line 85
    return-void
.end method

.method public startRecord()V
    .locals 2

    .prologue
    .line 300
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->TAG:Ljava/lang/String;

    const-string v1, "startRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->initRecorder()V

    .line 309
    :cond_0
    iget v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->aRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 312
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->mState:I

    .line 316
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->processedSample:I

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/voiceshell/AudioRecordHaydn;->isRecording:Z

    .line 319
    monitor-exit p0

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
