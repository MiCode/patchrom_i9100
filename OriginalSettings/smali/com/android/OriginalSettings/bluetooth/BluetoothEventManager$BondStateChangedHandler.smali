.class Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;
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
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "reason"

    .prologue
    .line 318
    packed-switch p3, :pswitch_data_0

    .line 335
    :pswitch_0
    const-string v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_0
    return-void

    .line 320
    :pswitch_1
    const v0, 0x7f0b01fe

    .line 338
    .local v0, errorMsg:I
    :goto_1
    invoke-static {p1, p2, v0}, Lcom/android/OriginalSettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 323
    .end local v0           #errorMsg:I
    :pswitch_2
    const v0, 0x7f0b0200

    .line 324
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 326
    .end local v0           #errorMsg:I
    :pswitch_3
    const v0, 0x7f0b01ff

    .line 327
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 332
    .end local v0           #errorMsg:I
    :pswitch_4
    const v0, 0x7f0b01fd

    .line 333
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/high16 v7, -0x8000

    .line 258
    if-nez p3, :cond_1

    .line 259
    const-string v5, "BluetoothEventManager"

    const-string v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, bondState:I
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 265
    .local v1, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_3

    .line 267
    const-string v5, "BluetoothEventManager"

    const-string v6, "CachedBluetoothDevice for device  not found, calling readPairedDevices()."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-nez v5, :cond_2

    .line 271
    const-string v5, "BluetoothEventManager"

    const-string v6, "Got bonding state changed for , but we have no record of that device."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 276
    if-nez v1, :cond_3

    .line 278
    const-string v5, "BluetoothEventManager"

    const-string v6, "Got bonding state changed for , but device not added in cache."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    .line 285
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;

    .line 286
    .local v2, callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 288
    .end local v2           #callback:Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 291
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    .line 292
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 294
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->access$1500(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 299
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 302
    :cond_5
    const-string v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 305
    .local v4, reason:I
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
