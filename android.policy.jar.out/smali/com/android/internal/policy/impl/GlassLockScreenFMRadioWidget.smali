.class public Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenFMRadioWidget.java"


# static fields
.field private static final FMPLAYER_NEXT_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.next"

.field private static final FMPLAYER_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.off"

.field private static final FMPLAYER_ON:I = 0x1

.field private static final FMPLAYER_ON_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.on"

.field private static final FMPLAYER_PREV_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.prev"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final RETURN_CHANNEL_CHANGE_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.channel"

.field private static final RETURN_CHANNEL_TUNE_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.channel"

.field private static final RETURN_FMPLAYER_INFO:Ljava/lang/String; = "com.android.fm.player_lock.info"

.field private static final RETURN_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.off"

.field private static final RETURN_ON_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.on"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenFMRadioWidget"


# instance fields
.field private final DEBUG:Z

.field private final MSG_FMFREQ_UPDATE:I

.field private final MSG_FM_UPDATE:I

.field private final MSG_MINIRADIO_VISIBILITY_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STOP_MARQUEE:I

.field private final STOP_MARQUEE_DELAY:I

.field private currentAlbumID:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentChannel:Ljava/lang/String;

.field private mCurrentFreq:Ljava/lang/String;

.field private mFFLongPressed:Z

.field private mFMAppImage:Landroid/widget/ImageView;

.field private mFMInfoTextInMax:Landroid/widget/TextView;

.field private mFMInfoTextInMin:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsFMPlayerPlaying:Z

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mIsStopped:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxFMRadio:Landroid/widget/FrameLayout;

.field private mMinFMControllerHandle:Landroid/widget/LinearLayout;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mREWLongPressed:Z

.field private mScreenOn:Z

.field private mServiceNumber:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVisibleLayout:Z

.field private mWasShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 5
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->DEBUG:Z

    .line 75
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 84
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    .line 98
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    .line 99
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    .line 100
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->currentAlbumID:Ljava/lang/String;

    .line 106
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->SHINK_ANIMATION_START:I

    .line 107
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->MSG_FM_UPDATE:I

    .line 108
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->MSG_FMFREQ_UPDATE:I

    .line 109
    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->STOP_MARQUEE:I

    .line 110
    const/16 v2, 0x12c5

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->MSG_MINIRADIO_VISIBILITY_UPDATE:I

    .line 112
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->STOP_MARQUEE_DELAY:I

    .line 114
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    .line 118
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 152
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 154
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 155
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x10900d8

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 157
    const v2, 0x1020380

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.fm.player_lock.status.channel"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v2, "com.android.fm.player_lock.tune.channel"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v2, "com.android.fm.player_lock.status.on"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "com.android.fm.player_lock.status.off"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setFocusable(Z)V

    .line 211
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setFocusableInTouchMode(Z)V

    .line 212
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setDescendantFocusability(I)V

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v2, :cond_0

    .line 216
    const-string v2, "FMPlayer"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->init()V

    .line 224
    return-void

    .line 222
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    return v0
.end method

.method private addMinTimer()V
    .locals 4

    .prologue
    .line 691
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 693
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 695
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "freq"
    .parameter "chname"

    .prologue
    const v3, 0x104061e

    .line 497
    const-string v0, ""

    .line 498
    .local v0, newTitleText:Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 501
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_1

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 299
    const v1, 0x1020385

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 303
    const v1, 0x102038a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 307
    const v1, 0x1020381

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    .line 308
    const v1, 0x1020383

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    .line 309
    const v1, 0x1020382

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    .line 310
    const v1, 0x1020384

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 410
    const v1, 0x1020389

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 411
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    const v1, 0x1020387

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 423
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$6;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    const v1, 0x1020388

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lockscreen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 456
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    .line 457
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 458
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 459
    return-void
.end method

.method private removeMinTimer()V
    .locals 2

    .prologue
    const/16 v1, 0x12c1

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    :cond_0
    return-void
.end method

.method private resetMinTimer()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    .line 700
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->addMinTimer()V

    .line 701
    return-void
.end method

.method private setMaxLayout(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 622
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 626
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 636
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    .line 642
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 648
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    goto :goto_0

    .line 638
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private setMinLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 654
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 680
    :goto_0
    return-void

    .line 658
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    .line 661
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 663
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 665
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    .line 671
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_2

    .line 672
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    .line 677
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 674
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private startTranslateAnimation(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 609
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v1, :cond_0

    .line 617
    :goto_0
    return-void

    .line 612
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 613
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 614
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 615
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 616
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->stopMarguee()V

    .line 468
    return-void
.end method

.method public getIsFMPlayerPlaying()Z
    .locals 3

    .prologue
    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mContext:Landroid/content/Context;

    const-string v2, "FMPlayer"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    return v1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    goto :goto_0
.end method

.method protected handleFMUpdate(IILjava/lang/Object;)V
    .locals 6
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 235
    const-string v1, "GlassLockScreenFMRadioWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaUpdate !! isPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isStop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsFMPlayerPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    .line 237
    if-ne p2, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    .line 239
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 241
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 244
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    if-nez v1, :cond_3

    .line 245
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 246
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 262
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 236
    goto :goto_0

    :cond_2
    move v1, v3

    .line 237
    goto :goto_1

    .line 251
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x1080723

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 261
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const v2, 0x10803ed

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 254
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x1080722

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 255
    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, newTitleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_3
.end method

.method protected handleFMUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "freq"
    .parameter "chname"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 266
    if-nez p3, :cond_0

    .line 291
    :goto_0
    return-void

    .line 269
    :cond_0
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    .line 271
    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    .line 272
    if-ne p2, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    .line 274
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 276
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 279
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    if-nez v0, :cond_4

    .line 280
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 281
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 271
    goto :goto_1

    :cond_3
    move v0, v2

    .line 272
    goto :goto_2

    .line 284
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080723

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 289
    :goto_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->updateFMPlayer(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const v1, 0x10803ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080722

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected handleMiniRadioVisibilityUpdate(IILjava/lang/Object;)V
    .locals 1
    .parameter "isHeadsetPlugged"
    .parameter "flag"
    .parameter "obj"

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 232
    :cond_0
    return-void
.end method

.method public handleStopMarquee()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 559
    :cond_1
    return-void
.end method

.method public isControllerShowing()Z
    .locals 1

    .prologue
    .line 759
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 471
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 474
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startControllerAnimation()V

    .line 478
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 482
    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 485
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 494
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->stopMarguee()V

    .line 495
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 512
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    .line 516
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 518
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, newTitleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 524
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 528
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player_lock.info"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 530
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v1, :cond_1

    .line 531
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    .line 535
    :goto_1
    return-void

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 533
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_1
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 768
    :cond_0
    return-void
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 776
    :cond_0
    return-void
.end method

.method public setBottomLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    .line 575
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    .line 576
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v2, 0x1080711

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 577
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 578
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 579
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 582
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 583
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .locals 3
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    .line 736
    if-eqz p1, :cond_3

    .line 737
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    if-eqz v0, :cond_1

    .line 738
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    if-nez v0, :cond_0

    .line 739
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 740
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 742
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->addMinTimer()V

    .line 752
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 735
    goto :goto_0

    .line 745
    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    .line 746
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_4

    .line 747
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 748
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 750
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    goto :goto_1
.end method

.method public setScreenOff()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    .line 543
    return-void
.end method

.method public setScreenOn()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    .line 539
    return-void
.end method

.method public setTopLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 562
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    .line 563
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v2, 0x1080712

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 565
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 566
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 570
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 571
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    return-void
.end method

.method public startControllerAnimation()V
    .locals 1

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    .line 706
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMinLayout()V

    .line 715
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 710
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_0

    .line 712
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public stopMarguee()V
    .locals 4

    .prologue
    const/16 v2, 0x12c4

    .line 547
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 550
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 551
    return-void
.end method

.method public updateFMPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "freq"
    .parameter "chname"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 590
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 591
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, newTitleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 599
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 600
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 605
    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method
