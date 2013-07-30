.class interface abstract Lcom/android/sec_settings/bluetooth/BluetoothCallback;
.super Ljava/lang/Object;
.source "BluetoothCallback.java"


# virtual methods
.method public abstract onBluetoothStateChanged(I)V
.end method

.method public abstract onDeviceAdded(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract onDeviceBondStateChanged(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;I)V
.end method

.method public abstract onDeviceDeleted(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V
.end method

.method public abstract onProfileStateChanged(Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;II)V
.end method

.method public abstract onScanningStateChanged(Z)V
.end method
