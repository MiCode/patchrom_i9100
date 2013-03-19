.class public final Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.super Landroid/app/Activity;
.source "CheckBluetoothStateActivity.java"


# instance fields
.field private isBtEnableDialog:Z

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    return-void
.end method

.method private launchDevicePicker()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 87
    .local v3, in:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.bluetooth.CheckBluetoothStateActivity"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, btIntent:Landroid/content/Intent;
    const-string v7, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 90
    .local v6, needAuth:Z
    const-string v7, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    const-string v7, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 93
    .local v1, filterType:I
    const-string v7, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v7, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 96
    .local v2, fromHeadsetActivity:Z
    const-string v7, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    const-string v7, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, launchPackage:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 100
    const-string v7, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    :cond_0
    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, launchClass:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 105
    const-string v7, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 110
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 74
    .local v0, mBluetoothState:I
    if-nez p1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    if-nez p1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_0

    .line 80
    :cond_1
    const-string v1, "CheckBluetoothStateActivity"

    const-string v2, "onActivityResult:: no condition"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 52
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_1

    .line 53
    const-string v1, "CheckBluetoothStateActivity"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    .line 58
    const-string v1, "isBtEnableDialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 62
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->isBtEnableDialog:Z

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, in:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 67
    .end local v0           #in:Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "isBtEnableDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    return-void
.end method
