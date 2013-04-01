.class public Lcom/sec/android/app/fm/RssiTestActivity;
.super Landroid/app/Activity;
.source "RssiTestActivity.java"


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field private mBtnStart:Landroid/widget/Button;

.field private mBtnStop:Landroid/widget/Button;

.field private mCheckLcd:Landroid/widget/CheckBox;

.field private mCount:I

.field private mEditEndFreq:Landroid/widget/EditText;

.field private mEditRssi:Landroid/widget/EditText;

.field private mEditStartFreq:Landroid/widget/EditText;

.field private mEndFreq:J

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/media/fmradio/FMEventListener;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mRssi:I

.field private mStartFreq:J

.field private mTextCurrent:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mCount:I

    .line 51
    new-instance v0, Lcom/sec/android/app/fm/RssiTestActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RssiTestActivity$1;-><init>(Lcom/sec/android/app/fm/RssiTestActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/sec/android/app/fm/RssiTestActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RssiTestActivity$2;-><init>(Lcom/sec/android/app/fm/RssiTestActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/RssiTestActivity;)Lcom/samsung/media/fmradio/FMPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mTextCurrent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/fm/RssiTestActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/fm/RssiTestActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/RssiTestActivity;->setWakeLock(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/RssiTestActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mRssi:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/fm/RssiTestActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mRssi:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/RssiTestActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/fm/RssiTestActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/sec/android/app/fm/RssiTestActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mEditRssi:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mEditStartFreq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mEditEndFreq:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/fm/RssiTestActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/fm/RssiTestActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/fm/RssiTestActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mStartFreq:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/fm/RssiTestActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mEndFreq:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/fm/RssiTestActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mEndFreq:J

    return-wide p1
.end method

.method private setWakeLock(Z)V
    .locals 3
    .parameter "wake"

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 239
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 243
    .end local v0           #pm:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->setContentView(I)V

    .line 137
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 138
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->setWakeLock(Z)V

    .line 140
    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mToast:Landroid/widget/Toast;

    .line 142
    const-string v1, "FMPlayer"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->setListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mTextCurrent:Landroid/widget/TextView;

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mTextCurrent:Landroid/widget/TextView;

    const-string v2, "Current freq : --   rssi : --"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v1, 0x7f0700ab

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mEditRssi:Landroid/widget/EditText;

    .line 155
    const v1, 0x7f0700ac

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mEditStartFreq:Landroid/widget/EditText;

    .line 156
    const v1, 0x7f0700ad

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mEditEndFreq:Landroid/widget/EditText;

    .line 158
    const v1, 0x7f0700ae

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mBtnStart:Landroid/widget/Button;

    .line 159
    const v1, 0x7f0700af

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mBtnStop:Landroid/widget/Button;

    .line 161
    const v1, 0x7f0700b0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mCheckLcd:Landroid/widget/CheckBox;

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mBtnStart:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/fm/RssiTestActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RssiTestActivity$3;-><init>(Lcom/sec/android/app/fm/RssiTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mBtnStop:Landroid/widget/Button;

    new-instance v2, Lcom/sec/android/app/fm/RssiTestActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RssiTestActivity$4;-><init>(Lcom/sec/android/app/fm/RssiTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mCheckLcd:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/fm/RssiTestActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RssiTestActivity$5;-><init>(Lcom/sec/android/app/fm/RssiTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 148
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mCheckLcd:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/RssiTestActivity;->setWakeLock(Z)V

    .line 226
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->off()Z

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    iget-object v2, p0, Lcom/sec/android/app/fm/RssiTestActivity;->mListener:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1, v2}, Lcom/samsung/media/fmradio/FMPlayer;->removeListener(Lcom/samsung/media/fmradio/FMEventListener;)V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v1

    goto :goto_0
.end method
