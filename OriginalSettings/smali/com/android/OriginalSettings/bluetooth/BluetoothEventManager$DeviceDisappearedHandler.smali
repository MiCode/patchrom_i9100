.class Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;
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
    name = "DeviceDisappearedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 232
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 233
    .local v0, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 235
    const-string v3, "BluetoothEventManager"

    const-string v4, "received ACTION_DISAPPEARED for an unknown device: "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;

    .line 241
    .local v1, callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    invoke-interface {v1, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1

    .line 243
    .end local v1           #callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
