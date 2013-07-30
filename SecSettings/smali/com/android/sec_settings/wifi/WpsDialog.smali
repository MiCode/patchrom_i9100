.class public Lcom/android/sec_settings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/wifi/WpsDialog$5;,
        Lcom/android/sec_settings/wifi/WpsDialog$DialogState;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "wpsSetup"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    .line 85
    sget-object v0, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mDialogState:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    .line 91
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 92
    iput p2, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWpsSetup:I

    .line 132
    new-instance v0, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/WpsDialog$1WpsListener;-><init>(Lcom/android/sec_settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    .line 136
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/android/sec_settings/wifi/WpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/WpsDialog$1;-><init>(Lcom/android/sec_settings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/wifi/WpsDialog;Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/wifi/WpsDialog;->updateDialog(Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/sec_settings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/wifi/WpsDialog;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 290
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 291
    .local v3, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mDialogState:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    sget-object v6, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    if-ne v5, v6, :cond_0

    .line 293
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 294
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 295
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090262

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, msg:Ljava/lang/String;
    sget-object v5, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v5, v2}, Lcom/android/sec_settings/wifi/WpsDialog;->updateDialog(Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 306
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v4           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 303
    .local v3, state:I
    if-eq v3, v7, :cond_2

    if-nez v3, :cond_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WpsDialog;->dismiss()V

    goto :goto_0
.end method

.method private updateDialog(Lcom/android/sec_settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "msg"

    .prologue
    const/16 v2, 0x8

    .line 248
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mDialogState:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mDialogState:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    .line 253
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mDialogState:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v0

    sget-object v1, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 259
    :cond_1
    sget-object v0, Lcom/android/sec_settings/wifi/WpsDialog$5;->$SwitchMap$com$android$settings$wifi$WpsDialog$DialogState:[I

    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 267
    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0905e3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 148
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040134

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b03ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f09025e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b03cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 154
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 155
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 157
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b03d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 158
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b03d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    .line 170
    const v0, 0x7f09025d

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WpsDialog;->setTitle(I)V

    .line 171
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f090357

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/sec_settings/wifi/WpsDialog$3;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/WpsDialog$3;-><init>(Lcom/android/sec_settings/wifi/WpsDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/sec_settings/wifi/WpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 186
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 188
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    .line 189
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 197
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    .line 198
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/sec_settings/wifi/WpsDialog$4;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WpsDialog$4;-><init>(Lcom/android/sec_settings/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 211
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mPowerManager:Landroid/os/PowerManager;

    .line 215
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "WpsDialog"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 220
    new-instance v6, Landroid/net/wifi/WpsInfo;

    invoke-direct {v6}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 221
    .local v6, wpsConfig:Landroid/net/wifi/WpsInfo;
    iget v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWpsSetup:I

    iput v0, v6, Landroid/net/wifi/WpsInfo;->setup:I

    .line 222
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

    invoke-virtual {v0, v1, v6, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V

    .line 223
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mDialogState:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/sec_settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/sec_settings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 245
    :cond_3
    return-void
.end method
