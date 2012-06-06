.class Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 192
    const-string v5, "android.bluetooth.device.extra.RSSI"

    const/16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    .line 193
    .local v4, rssi:S
    const-string v5, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothClass;

    .line 194
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 198
    .local v2, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v2, :cond_0

    .line 199
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v6}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1000(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;
    invoke-static {v7}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 201
    const-string v5, "BluetoothEventManager"

    const-string v6, "DeviceFoundHandler created new CachedBluetoothDevice: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V
    invoke-static {v5, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1400(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V

    .line 206
    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 207
    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 210
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, alias:Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eq v3, v0, :cond_1

    .line 212
    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 217
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 218
    return-void

    .line 214
    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method
