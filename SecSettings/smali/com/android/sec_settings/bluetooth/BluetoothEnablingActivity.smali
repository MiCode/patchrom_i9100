.class public Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothEnablingActivity.java"


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    .line 107
    new-instance v0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity$1;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity$2;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;)V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, contentView:Landroid/widget/TextView;
    const v2, 0x7f090b56

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-object v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 60
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->finish()V

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    .line 70
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 72
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f090b55

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 73
    invoke-direct {p0}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->setupAlert()V

    .line 77
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x4e20

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 102
    iget-boolean v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 92
    const-string v0, "BluetoothEnablingActivity"

    const-string v1, "onKeyDown() called; Key: back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/sec_settings/bluetooth/BluetoothEnablingActivity;->finish()V

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
