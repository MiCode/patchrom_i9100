.class Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
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
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;Z)V
    .locals 0
    .parameter
    .parameter "started"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-boolean p2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 176
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;

    .line 181
    .local v0, callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    iget-boolean v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 183
    .end local v0           #callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 185
    invoke-static {p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->persistDiscoveringTimestamp(Landroid/content/Context;)V

    .line 186
    return-void
.end method
