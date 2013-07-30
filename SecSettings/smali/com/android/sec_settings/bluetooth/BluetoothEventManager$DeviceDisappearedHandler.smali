.class Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;
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
    name = "DeviceDisappearedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 235
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 236
    .local v0, cachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 237
    invoke-static {}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BluetoothEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received ACTION_DISAPPEARED for an unknown device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {v0}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 242
    :try_start_0
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

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

    check-cast v1, Lcom/android/sec_settings/bluetooth/BluetoothCallback;

    .line 243
    .local v1, callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    invoke-interface {v1, v0}, Lcom/android/sec_settings/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1

    .line 245
    .end local v1           #callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
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
