.class public Lcom/sec/android/app/fm/listplayer/FMListPlayerService;
.super Landroid/app/Service;
.source "FMListPlayerService.java"


# static fields
.field private static final INVALID_CHARS:[Ljava/lang/String;

.field private static mLongKeyCnt:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private TempLongKeyCnt:I

.field private isPlayerReceiverRegisterd:Z

.field private isStorageReceiverRegisterd:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiverPalmTouch:Landroid/content/BroadcastReceiver;

.field private mCurrentPlayingId:J

.field private mEventHandler:Landroid/os/Handler;

.field private mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

.field private mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPausedByCall:Z

.field private mPlayerReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->INVALID_CHARS:[Ljava/lang/String;

    .line 126
    sput v3, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mLongKeyCnt:I

    .line 598
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I

    .line 272
    iput-boolean v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlayerReceiverRegisterd:Z

    .line 274
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$2;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    iput-boolean v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isStorageReceiverRegisterd:Z

    .line 322
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$3;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    iput-boolean v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z

    .line 393
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$4;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 428
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$5;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mEventHandler:Landroid/os/Handler;

    .line 600
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$6;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 634
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mCurrentPlayingId:J

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mCurrentPlayingId:J

    return-wide v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    sput p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mLongKeyCnt:I

    return p0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mLongKeyCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mLongKeyCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->TempLongKeyCnt:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)Lcom/sec/android/app/fm/listplayer/FMListPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private registerBroadcastReceiverPalmTouch(Z)V
    .locals 3
    .parameter "register"

    .prologue
    .line 647
    if-eqz p1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mBroadcastReceiverPalmTouch:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    new-instance v1, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$7;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mBroadcastReceiverPalmTouch:Landroid/content/BroadcastReceiver;

    .line 668
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 669
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    const-string v1, "android.intent.action.PALM_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mBroadcastReceiverPalmTouch:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 674
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mBroadcastReceiverPalmTouch:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mBroadcastReceiverPalmTouch:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 676
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mBroadcastReceiverPalmTouch:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private registerMediaButtonProcessListener()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.app.fm.listplayer.Media_Button_Recieved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService$1;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    return-void
.end method

.method private registerPlayerReceiver()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlayerReceiverRegisterd:Z

    .line 311
    return-void
.end method

.method private registerStorageReceiver()V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isStorageReceiverRegisterd:Z

    .line 341
    return-void
.end method

.method private requestAudioFocus()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 475
    const-string v3, "FMListPlayerService"

    const-string v4, "requestAudioFocus()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, focusResult:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 479
    if-ne v0, v2, :cond_2

    .line 482
    :cond_0
    if-nez v0, :cond_1

    .line 483
    const-string v2, "FMListPlayerService"

    const-string v3, "requestAudioFocus is failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v2, 0x0

    .line 487
    :cond_1
    return v2

    .line 477
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private unRegisterMediaButtonProcessListener()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMediaButtonProcessReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    :cond_0
    return-void
.end method

.method private unregisterPlayerReceiver()V
    .locals 2

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlayerReceiverRegisterd:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPlayerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlayerReceiverRegisterd:Z

    .line 318
    :cond_0
    return-void
.end method

.method private unregisterStorageReceiver()V
    .locals 4

    .prologue
    .line 345
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isStorageReceiverRegisterd:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isStorageReceiverRegisterd:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "FMListPlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterStorageReceiver() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getContentURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->getContentURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayingId()J
    .locals 2

    .prologue
    .line 637
    iget-wide v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mCurrentPlayingId:J

    return-wide v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getPlayerDuration()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 380
    const-string v0, "FMListPlayerService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 246
    const-string v0, "FMListPlayerService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initService(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    .line 257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerBroadcastReceiverPalmTouch(Z)V

    .line 264
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioManager:Landroid/media/AudioManager;

    .line 266
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    .line 269
    invoke-direct {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerMediaButtonProcessListener()V

    .line 270
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 356
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 357
    const-string v0, "FMListPlayerService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v0, "FMListPlayerService"

    const-string v1, "cancel recording while service on destroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->stopPlay()V

    .line 365
    invoke-static {}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->releaseService()V

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerBroadcastReceiverPalmTouch(Z)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->removeAllOnPlayerStateChangedObserver()V

    .line 375
    invoke-direct {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->unRegisterMediaButtonProcessListener()V

    .line 376
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 460
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 461
    const-string v0, "FMListPlayerService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz p1, :cond_0

    .line 464
    const-string v0, "FMListPlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {p0}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->initService(Lcom/sec/android/app/fm/listplayer/FMListPlayerService;)V

    .line 467
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 387
    const-string v0, "FMListPlayerService"

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public pausePlay()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->pausePlay()V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z

    .line 534
    return-void
.end method

.method registerMotionListener()V
    .locals 2

    .prologue
    .line 616
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 617
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 618
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 619
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->release()V

    .line 507
    return-void
.end method

.method public removeOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->removeOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V

    .line 503
    return-void
.end method

.method public resetPath()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->resetPath()V

    .line 571
    return-void
.end method

.method public resumePlay()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "FMListPlayerService"

    const-string v1, "resumePlay in."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-direct {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->requestAudioFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    const-string v0, "FMListPlayerService"

    const-string v1, "resumePlay out. fail by audio focus"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->resumePlay()V

    .line 544
    const-string v0, "FMListPlayerService"

    const-string v1, "resumePlay out. success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public seek(IZ)V
    .locals 1
    .parameter "msec"
    .parameter "restart"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->seek(IZ)V

    .line 575
    return-void
.end method

.method public setCurrentPlayingId(J)V
    .locals 0
    .parameter "currentPlayingId"

    .prologue
    .line 641
    iput-wide p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mCurrentPlayingId:J

    .line 642
    return-void
.end method

.method public setOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->setOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V

    .line 499
    return-void
.end method

.method public startPlay(Landroid/net/Uri;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 510
    const-string v1, "FMListPlayerService"

    const-string v2, "startPlay in."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->requestAudioFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    const-string v1, "FMListPlayerService"

    const-string v2, "startPlay out. fail by audio focus"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_0
    return v0

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerMotionListener()V

    .line 517
    invoke-direct {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerPlayerReceiver()V

    .line 518
    invoke-direct {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->registerStorageReceiver()V

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->startPlay(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    const-string v0, "FMListPlayerService"

    const-string v1, "startPlay out. success"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    const-string v1, "FMListPlayerService"

    const-string v2, "startPlay out. fail can\'t start play"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPlay()V
    .locals 4

    .prologue
    .line 548
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mListPlayer:Lcom/sec/android/app/fm/listplayer/FMListPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->stopPlay()V

    .line 549
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->unregisterMotionListener()V

    .line 554
    invoke-direct {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->unregisterPlayerReceiver()V

    .line 555
    invoke-direct {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->unregisterStorageReceiver()V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mPausedByCall:Z

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 563
    return-void
.end method

.method unregisterMotionListener()V
    .locals 2

    .prologue
    .line 622
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 623
    sget-object v0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 624
    :cond_0
    return-void
.end method
