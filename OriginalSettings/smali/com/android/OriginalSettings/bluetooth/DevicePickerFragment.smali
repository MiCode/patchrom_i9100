.class public final Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;
.super Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mCallFromHeadset:Z

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 51
    const v2, 0x7f05000f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 55
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    .line 57
    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 60
    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-ne v2, v6, :cond_1

    .line 62
    :cond_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    .line 66
    :cond_1
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 67
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 70
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 72
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0833

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    .line 83
    :cond_2
    :goto_0
    return-void

    .line 76
    :cond_3
    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v6, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0834

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 79
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 147
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0106

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDeviceBondStateChanged(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 132
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 134
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez v1, :cond_0

    .line 136
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    .line 141
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter "btPreference"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_2

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    .line 124
    :cond_2
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onProfileStateChanged(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;II)V
    .locals 2
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v1, 0x2

    .line 157
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onProfileStateChanged(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;II)V

    .line 158
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_1

    .line 159
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 164
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 96
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 100
    :cond_0
    return-void
.end method
