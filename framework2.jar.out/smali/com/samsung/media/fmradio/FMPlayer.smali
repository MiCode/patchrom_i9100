.class public Lcom/samsung/media/fmradio/FMPlayer;
.super Ljava/lang/Object;
.source "FMPlayer.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FMPlayer"

.field public static final OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final OFF_BATTERY_LOW:I = 0x7

.field public static final OFF_CALL_ACTIVE:I = 0x1

.field public static final OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final OFF_NORMAL:I = 0x0

.field public static final OFF_PAUSE_COMMAND:I = 0x5

.field public static final OFF_STOP_COMMAND:I = 0x4

.field static mContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sput-object p1, Lcom/samsung/media/fmradio/FMPlayer;->mContext:Landroid/content/Context;

    .line 69
    const-string v0, "FMPlayer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/media/fmradio/internal/IFMPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 72
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player created :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private checkBusy()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, code:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBusy()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 571
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 572
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x3

    const-string v4, "Player is scanning channel"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Player is busy in scanning. Use cancelScan to stop scanning"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, e:Landroid/os/RemoteException;
    invoke-direct {p0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 579
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private checkOnStatus()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    .line 554
    .local v0, val:Z
    if-nez v0, :cond_0

    .line 555
    new-instance v1, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v2, 0x1

    const-string v3, "Player is not ON.Call on() method to start player"

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Player is not ON. use method on() to switch on FM player"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 561
    :cond_0
    return-void
.end method

.method private remoteError(Landroid/os/RemoteException;)V
    .locals 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 397
    new-instance v0, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v1, 0x1

    const-string v2, "Radio service is not running restart the phone."

    invoke-virtual {p1}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public GetAFValid_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 786
    const/4 v1, -0x1

    .line 787
    .local v1, val:I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAFValid_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 794
    :cond_0
    :goto_0
    return v1

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public GetAF_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 765
    const/4 v1, -0x1

    .line 766
    .local v1, val:I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getAF_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 773
    :cond_0
    :goto_0
    return v1

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public SetAFValid_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAFValid_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public SetAF_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 758
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setAF_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public SkipTuning_Value()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->SkipTuning_Value()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public cancelAFSwitching()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelAFSwitching()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public cancelScan()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelScan()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 369
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 369
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelSeek()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->cancelSeek()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public disableAF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableAF()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public disableRDS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->disableRDS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public enableAF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableAF()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public enableRDS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->enableRDS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 808
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 809
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 810
    iput-object v0, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    .line 811
    return-void
.end method

.method public getCnt_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 707
    const/4 v1, -0x1

    .line 708
    .local v1, val:I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCnt_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 715
    :cond_0
    :goto_0
    return v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getCnt_th_2()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 743
    const/4 v1, -0x1

    .line 744
    .local v1, val:I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCnt_th_2()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 751
    :cond_0
    :goto_0
    return v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getCurrentChannel()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 486
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 487
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 491
    :goto_0
    return-wide v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 491
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentRSSI()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getCurrentRSSI()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 448
    :goto_0
    return-wide v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 448
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getLastScanResult()[J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 542
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    :goto_0
    return-object v1

    .line 545
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getLastScanResult()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getMaxVolume()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getMaxVolume()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 532
    :goto_0
    return-wide v1

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 532
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getRSSI_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 683
    const/4 v1, -0x1

    .line 684
    .local v1, val:I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getRSSI_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 691
    :cond_0
    :goto_0
    return v1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getRSSI_th_2()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 719
    const/4 v1, -0x1

    .line 720
    .local v1, val:I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getRSSI_th_2()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 727
    :cond_0
    :goto_0
    return v1

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getSNR_th()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 695
    const/4 v1, -0x1

    .line 696
    .local v1, val:I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSNR_th()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 703
    :cond_0
    :goto_0
    return v1

    .line 699
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getSNR_th_2()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 731
    const/4 v1, -0x1

    .line 732
    .local v1, val:I
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getSNR_th_2()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 739
    :cond_0
    :goto_0
    return v1

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public getVolume()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->getVolume()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 514
    :goto_0
    return-wide v1

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 514
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public isAFEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAFEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 595
    :goto_0
    return v1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 595
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAirPlaneMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isAirPlaneMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    :goto_0
    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 170
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBatteryLow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isBatteryLow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHeadsetPlugged()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isHeadsetPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 221
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRDSEnable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isRDSEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 587
    :goto_0
    return v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 587
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isScanning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 378
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isSeeking()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 389
    :goto_0
    return v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 389
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTvOutPlugged()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->isTvOutPlugged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 159
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 60
    const-string v0, "FMPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public off()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, val:Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->off()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 212
    :goto_0
    return v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public on()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isTvOutPlugged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x7

    const-string v4, "TV out is on"

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "TV out is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x4

    const-string v4, "Headset is not presents."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Headset is not presents."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 101
    :cond_2
    const/4 v1, 0x0

    .line 104
    .local v1, val:Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isBatteryLow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 111
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x6

    const-string v4, "Battery is low."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "Batterys is low."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 114
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    return v1
.end method

.method public on(Z)Z
    .locals 7
    .parameter "testMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 123
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->isAirPlaneMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    new-instance v2, Lcom/samsung/media/fmradio/FMPlayerException;

    const/4 v3, 0x5

    const-string v4, "AirPlane mode is on."

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "AirPlane mode is on."

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/media/fmradio/FMPlayerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 131
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, val:Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->on_in_testmode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    .end local v1           #val:Z
    :goto_0
    return v1

    .line 136
    .restart local v1       #val:Z
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 141
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #val:Z
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    move-result v1

    goto :goto_0
.end method

.method public removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 610
    if-nez p1, :cond_0

    .line 618
    :goto_0
    return-void

    .line 613
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->removeListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public scan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 229
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 230
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->scan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public searchAll()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 293
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchAll()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 297
    :goto_0
    return-wide v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 297
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public searchDown()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 247
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchDown()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 251
    :goto_0
    return-wide v1

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 251
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public searchUp()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 279
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 280
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->searchUp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 284
    :goto_0
    return-wide v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 284
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public seekDown()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 467
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 468
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekDown()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 472
    :goto_0
    return-wide v1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 472
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public seekUp()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 455
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkBusy()V

    .line 456
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->seekUp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 460
    :goto_0
    return-wide v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 460
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setBand(I)V
    .locals 2
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setBand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setChannelSpacing(I)V
    .locals 2
    .parameter "spacing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setChannelSpacing(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setCnt_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setCnt_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setCnt_th_2(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setCnt_th_2(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setDEConstant(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setDEConstant(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setFMIntenna(Z)V
    .locals 2
    .parameter "setFMIntenna"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 801
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setFMIntenna(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 602
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    iget-object v2, p1, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    invoke-interface {v1, v2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setListener(Lcom/samsung/media/fmradio/internal/IFMEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setMono()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setMono()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setRSSI_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRSSI_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setRSSI_th_2(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRSSI_th_2(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setRecordMode(I)V
    .locals 2
    .parameter "is_record"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setRecordMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSNR_th(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSNR_th(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSNR_th_2(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSNR_th_2(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSeekRSSI(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekRSSI(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSeekSNR(J)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSeekSNR(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setSpeakerOn(Z)Z
    .locals 3
    .parameter "bSpeakerOn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting bSpeakerOn = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->log(Ljava/lang/String;)V

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setRadioSpeakerOn(Z)V

    .line 202
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0

    .line 202
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setStereo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setStereo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public setVolume(J)V
    .locals 2
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->setVolume(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public tune(J)Z
    .locals 2
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/media/fmradio/FMPlayerException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMPlayer;->checkOnStatus()V

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/samsung/media/fmradio/FMPlayer;->mPlayer:Lcom/samsung/media/fmradio/internal/IFMPlayer;

    invoke-interface {v1, p1, p2}, Lcom/samsung/media/fmradio/internal/IFMPlayer;->tune(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    const/4 v1, 0x1

    .line 410
    :goto_0
    return v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/samsung/media/fmradio/FMPlayer;->remoteError(Landroid/os/RemoteException;)V

    .line 410
    const/4 v1, 0x0

    goto :goto_0
.end method
