.class Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
.super Ljava/lang/Thread;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/samsung/voiceshell/VoiceEngineResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultipleWakeUpVoiceEngineThread"
.end annotation


# instance fields
.field private final MSG_CREATE_WAKEUP_CMD:I

.field private final MSG_DESTROY_WAKEUP_CMD:I

.field private final MSG_INIT_WAKEUP_CMD:I

.field private final MSG_LAUNCH_CMD:I

.field private final MSG_QUIT_LOOPER:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

.field private final MSG_START_VERIFY_CMD:I

.field private final MSG_TERMINATE_VERIFY_CMD:I

.field private mContext:Landroid/content/Context;

.field private mIsRunning:Z

.field private mIsSupportMultipleWakeUp:Z

.field private mVEPowerManager:Landroid/os/PowerManager;

.field private mVThreadHandler:Landroid/os/Handler;

.field private mVoiceVerifyStarted:Z

.field private mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    .line 148
    const-string v0, "MultipleWakeUpVoiceEngineThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z

    .line 132
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z

    .line 138
    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_CREATE_WAKEUP_CMD:I

    .line 139
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_INIT_WAKEUP_CMD:I

    .line 140
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_START_VERIFY_CMD:I

    .line 141
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_TERMINATE_VERIFY_CMD:I

    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_DESTROY_WAKEUP_CMD:I

    .line 143
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_QUIT_LOOPER:I

    .line 144
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_LAUNCH_CMD:I

    .line 145
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->MSG_SET_VOICE_RECOGNITION_FAIL_CMD:I

    .line 149
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;

    .line 150
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mWakeUpCmdRecognizer:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVoiceVerifyStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVEPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->dismissLockScreen()V

    return-void
.end method

.method private dismissLockScreen()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->goToUnlockScreen()V

    .line 345
    return-void
.end method


# virtual methods
.method public OnEnrollResult(III)V
    .locals 0
    .parameter "job"
    .parameter "count"
    .parameter "check"

    .prologue
    .line 377
    return-void
.end method

.method public OnRmsForWave(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 382
    return-void
.end method

.method public OnVerifyResult(IS)V
    .locals 3
    .parameter "verifyResult"
    .parameter "commandResult"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVerifyResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsRunning:Z

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mIsRunning is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 359
    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnVerifyResult() verify cancel result returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_2
    const/16 v0, -0xa

    if-eq p1, v0, :cond_3

    const/16 v0, -0xb

    if-ne p1, v0, :cond_4

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnVerifyResult() failed due to data file exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_4
    const/16 v0, -0xc

    if-ne p1, v0, :cond_5

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleLockScreen;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->access$000(Lcom/android/internal/policy/impl/sec/CircleLockScreen;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnVerifyResult() voice recognition failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->setVoiceRecognitionFailCue()V

    goto :goto_0

    .line 369
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 370
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->launch(S)V

    goto :goto_0
.end method

.method public isSupportMultipleWakeUp()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mIsSupportMultipleWakeUp:Z

    return v0
.end method

.method public launch(S)V
    .locals 3
    .parameter "cmd"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 331
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    return-void
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    return-void
.end method

.method protected removeAllMsgs()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 157
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpCreate()V

    .line 279
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 281
    return-void
.end method

.method public setVoiceRecognitionFailCue()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->this$0:Lcom/android/internal/policy/impl/sec/CircleLockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleLockScreen;->setVoiceRecognitionFailed()V

    .line 339
    return-void
.end method

.method public wakeUpCreate()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    return-void
.end method

.method public wakeUpDestroy()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    return-void
.end method

.method public wakeUpInit()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 305
    return-void
.end method

.method public wakeUpStartVerify()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    return-void
.end method

.method public wakeUpTerminateVerify()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 313
    return-void
.end method

.method public wakeUpTerminateVerifyAfter(J)V
    .locals 4
    .parameter "delayMillis"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->mVThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x64

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 318
    return-void
.end method
