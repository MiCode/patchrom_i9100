.class Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 193
    const-string v5, "android.bluetooth.device.extra.RSSI"

    const/16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    .line 194
    .local v4, rssi:S
    const-string v5, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothClass;

    .line 195
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 199
    .local v2, cachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;
    if-nez v2, :cond_1

    .line 200
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1000(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v7}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 202
    if-nez v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 203
    :cond_0
    const-string v5, "BluetoothEventManager"

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: cachedDevice"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v5, v2}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V

    .line 208
    :cond_1
    invoke-virtual {v2, v4}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 209
    invoke-virtual {v2, v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 213
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 214
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 220
    .end local v0           #alias:Ljava/lang/String;
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_1
.end method
