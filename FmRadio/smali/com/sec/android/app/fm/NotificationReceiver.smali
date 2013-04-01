.class public Lcom/sec/android/app/fm/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static CODE_REMOVE_NOTIFICATION:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBusy:Z

.field private mConfigurationChanged:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentChannel:J

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/samsung/media/fmradio/FMEventListener;

.field private mMusicCommandRec:Landroid/content/BroadcastReceiver;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private toast:Landroid/widget/Toast;

.field private toastAirplane:Landroid/widget/Toast;

.field private toastBatteryLow:Landroid/widget/Toast;

.field private toastError:Landroid/widget/Toast;

.field private toastNotRunning:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$1;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$2;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mConfigurationChanged:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$3;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 762
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 763
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 764
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 765
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 766
    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v4, 0x447a

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    new-instance v2, Lcom/sec/android/app/fm/NotificationReceiver$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/NotificationReceiver$1;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v2, Lcom/sec/android/app/fm/NotificationReceiver$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/NotificationReceiver$2;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mConfigurationChanged:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v2, Lcom/sec/android/app/fm/NotificationReceiver$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/NotificationReceiver$3;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    .line 762
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 763
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 764
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 765
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 766
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 74
    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    .line 75
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v2, :cond_1

    .line 78
    const-string v2, "FMPlayer"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 80
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->registerMusicCommandRec()V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->registerConfigurationChanged()V

    .line 85
    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v2, v3}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v1

    .line 98
    .local v1, freq:F
    mul-float v2, v1, v4

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 101
    :goto_0
    return-void

    .line 92
    .end local v1           #freq:F
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, " NotificationReceiver "

    const-string v3, "NotificationReceiver init - exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v1

    .line 98
    .restart local v1       #freq:F
    mul-float v2, v1, v4

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #freq:F
    :catchall_0
    move-exception v2

    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->getCurrentFreq(Landroid/content/Context;)F

    move-result v1

    .line 98
    .restart local v1       #freq:F
    mul-float v3, v1, v4

    float-to-long v3, v3

    iput-wide v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 100
    throw v2
.end method

.method private RefreshNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 700
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[NotificationReceiver] RefreshNotification"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 703
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v4, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->getCurrentChannel()F

    move-result v1

    .line 709
    .local v1, mFreq:F
    const/high16 v3, -0x4080

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_6

    .line 710
    const-string v0, ""

    .line 711
    .local v0, curChName:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 712
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    iget-object v0, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 714
    :cond_1
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 715
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 717
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_3
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_5

    .line 721
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :goto_0
    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 727
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;)V

    .line 733
    .end local v0           #curChName:Ljava/lang/String;
    .end local v2           #strBuilder:Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-void

    .line 723
    .restart local v0       #curChName:Ljava/lang/String;
    .restart local v2       #strBuilder:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 730
    .end local v0           #curChName:Ljava/lang/String;
    .end local v2           #strBuilder:Ljava/lang/StringBuilder;
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 731
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/fm/NotificationReceiver;)Lcom/samsung/media/fmradio/FMPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->RefreshNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->sendONBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->getCurrentChannel()F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/fm/NotificationReceiver;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->sendOFFBroadcast()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/fm/NotificationReceiver;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/fm/NotificationReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/fm/NotificationReceiver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z

    return p1
.end method

.method private error(Lcom/samsung/media/fmradio/FMPlayerException;)V
    .locals 5
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 770
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 771
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 773
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 794
    :goto_0
    return-void

    .line 774
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 779
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    if-nez v0, :cond_4

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    .line 782
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastAirplane:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 784
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/media/fmradio/FMPlayerException;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    if-nez v0, :cond_6

    .line 786
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    .line 787
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 788
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastBatteryLow:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 790
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    if-nez v0, :cond_8

    .line 791
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f0a

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    .line 792
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastError:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private fire(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 855
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 861
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 859
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NotificationReceiver] broadcast sent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentChannel()F
    .locals 6

    .prologue
    .line 387
    const/high16 v1, -0x4080

    .line 389
    .local v1, freq:F
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    iget-object v4, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v4}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 391
    .local v2, freqLong:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 392
    long-to-float v4, v2

    const/high16 v5, 0x447a

    div-float v1, v4, v5

    .line 401
    .end local v2           #freqLong:J
    :cond_0
    :goto_0
    return v1

    .line 395
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 399
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private sendOFFBroadcast()V
    .locals 3

    .prologue
    .line 842
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sending off broadcast"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->fire(Landroid/content/Intent;)V

    .line 845
    return-void
.end method

.method private sendONBroadcast()V
    .locals 3

    .prologue
    .line 849
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Sending on broadcast"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player.status.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->fire(Landroid/content/Intent;)V

    .line 852
    return-void
.end method

.method private unRegisterMusicCommandRec()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 745
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Notification Rec - music command reciever un-registered"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method private unregisterConfigurationChanged()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mConfigurationChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 758
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Notification Rec - music command reciever un-registered"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 759
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x447a

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 409
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/NotificationReceiver$MyHandler;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 413
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 418
    const-string v2, "com.android.fm.player"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 427
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 697
    :cond_2
    :goto_0
    return-void

    .line 436
    :cond_3
    const-string v2, "com.android.fm.player.on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_4

    .line 439
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 447
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_1
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 451
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 454
    if-nez v0, :cond_2

    .line 455
    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->isUsedVoice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 471
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification Rec - Got the volume from audiomanager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 478
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 479
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 484
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-wide v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-static {v0, p1}, Lcom/sec/android/app/fm/MainActivity;->checkSettingAlarm(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V
    :try_end_2
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    :try_start_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->error(Lcom/samsung/media/fmradio/FMPlayerException;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 692
    :catch_1
    move-exception v0

    .line 694
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 695
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 448
    :catch_3
    move-exception v0

    .line 449
    :try_start_5
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V

    move v0, v1

    goto/16 :goto_1

    .line 480
    :cond_6
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    sget v2, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 482
    :cond_7
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J
    :try_end_5
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 494
    :cond_8
    :try_start_6
    const-string v1, "com.android.fm.player.off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 495
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_9

    .line 496
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 502
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->cancelSeek()V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_a

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 508
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 510
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "power off done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 512
    :catch_4
    move-exception v0

    .line 514
    :try_start_8
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 515
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 519
    :cond_b
    :try_start_9
    const-string v1, "com.android.fm.player.tune.next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_c

    .line 521
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 526
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_e

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    if-nez v0, :cond_d

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 530
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 535
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_f

    .line 539
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showSeekingText()V

    .line 541
    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/fm/NotificationReceiver$4;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 570
    :cond_10
    const-string v1, "com.android.fm.player.tune.prev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_11

    .line 572
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 577
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_13

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    if-nez v0, :cond_12

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    .line 581
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->toastNotRunning:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 585
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_14

    .line 590
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->showSeekingText()V

    .line 592
    :cond_14
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/fm/NotificationReceiver$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/fm/NotificationReceiver$5;-><init>(Lcom/sec/android/app/fm/NotificationReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 636
    :cond_15
    const-string v1, "com.android.fm.player.tune"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v0, :cond_16

    .line 638
    const-string v0, "FMPlayer"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 643
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isScanning()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 648
    :try_start_a
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v0

    if-nez v0, :cond_17

    .line 649
    invoke-static {p1}, Lcom/sec/android/app/fm/MainActivity;->isUsedVoice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayer;->on()Z

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setRDS(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->setAF(Lcom/samsung/media/fmradio/FMPlayer;Landroid/content/Context;)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/MainActivity;->setSoundSettings(Lcom/samsung/media/fmradio/FMPlayer;Landroid/media/AudioManager;Landroid/content/Context;)V

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 665
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification Rec - Got the volume from audiomanager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 666
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 670
    :cond_17
    const-string v0, "freq"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v4

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 671
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tunning to current freq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 673
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 674
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    .line 682
    :cond_18
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-wide v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->tune(J)Z

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_a
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 687
    :catch_6
    move-exception v0

    .line 688
    :try_start_b
    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/NotificationReceiver;->error(Lcom/samsung/media/fmradio/FMPlayerException;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 675
    :cond_19
    :try_start_c
    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    sget v2, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    iget-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J

    sget v2, Lcom/sec/android/app/fm/MainActivity;->MAX_FREQ:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 677
    :cond_1a
    sget v0, Lcom/sec/android/app/fm/MainActivity;->BASE_FREQ:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J
    :try_end_c
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_3
.end method

.method protected registerConfigurationChanged()V
    .locals 3

    .prologue
    .line 749
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 750
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mConfigurationChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 752
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notification Rec - music command reciever registered"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method protected registerMusicCommandRec()V
    .locals 3

    .prologue
    .line 736
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 737
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mMusicCommandRec:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 739
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notification Rec - music command reciever registered"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public terminate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 867
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-eqz v1, :cond_1

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V

    .line 870
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/sec/android/app/fm/NotificationReceiver;->CODE_REMOVE_NOTIFICATION:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;

    .line 874
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->unRegisterMusicCommandRec()V

    .line 875
    invoke-direct {p0}, Lcom/sec/android/app/fm/NotificationReceiver;->unregisterConfigurationChanged()V

    .line 877
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[NotificationReceiver] removing listener"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 878
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mBusy:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 886
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 882
    :catch_1
    move-exception v1

    goto :goto_0
.end method
