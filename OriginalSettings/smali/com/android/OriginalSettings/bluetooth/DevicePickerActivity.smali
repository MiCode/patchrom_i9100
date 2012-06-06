.class public final Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "DevicePickerActivity.java"


# instance fields
.field private mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 61
    .local v0, mBluetoothState:I
    if-nez p1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->finish()V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    if-nez p1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->setContentView(I)V

    .line 46
    invoke-static {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    .line 48
    const-string v0, "DevicePickerActivity"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/bluetooth/DevicePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
