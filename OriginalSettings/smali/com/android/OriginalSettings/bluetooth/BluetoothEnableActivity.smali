.class public Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity$1;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, view:Landroid/view/View;
    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, contentView:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0854

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0855

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    packed-switch p2, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 121
    const v0, 0x7f0b085c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/bluetooth/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->finish()V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->finish()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 71
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 72
    const v1, 0x7f0b0853

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 73
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 74
    const v1, 0x7f0b0857

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 75
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    const v1, 0x7f0b0856

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 77
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->setupAlert()V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 94
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    .line 96
    const-string v0, "BluetoothEnableActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 101
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    return-void
.end method
