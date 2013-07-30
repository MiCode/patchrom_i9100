.class Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;
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
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "reason"

    .prologue
    .line 360
    packed-switch p3, :pswitch_data_0

    .line 377
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

    .line 381
    :goto_0
    return-void

    .line 362
    :pswitch_1
    const v0, 0x7f0901c7

    .line 380
    .local v0, errorMsg:I
    :goto_1
    invoke-static {p1, p2, v0}, Lcom/android/sec_settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 365
    .end local v0           #errorMsg:I
    :pswitch_2
    const v0, 0x7f0901c9

    .line 366
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 368
    .end local v0           #errorMsg:I
    :pswitch_3
    const v0, 0x7f0901c8

    .line 369
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 374
    .end local v0           #errorMsg:I
    :pswitch_4
    const v0, 0x7f0901c6

    .line 375
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 360
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
    .locals 10
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/high16 v9, -0x8000

    .line 260
    if-nez p3, :cond_1

    .line 261
    const-string v6, "BluetoothEventManager"

    const-string v7, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string v6, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, bondState:I
    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 267
    .local v1, cachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_6

    .line 268
    invoke-static {}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CachedBluetoothDevice for device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found, calling readPairedDevices()."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2
    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v6

    if-nez v6, :cond_3

    .line 271
    invoke-static {}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got bonding state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but we have no record of that device."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_3
    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 276
    if-nez v1, :cond_4

    .line 277
    invoke-static {}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got bonding state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but device not added in cache."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    :cond_4
    invoke-static {}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BluetoothEventManager"

    const-string v7, "CachedBluetoothDevice was created from paired devices. It will be refreshed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_5
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 291
    :cond_6
    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    .line 292
    :try_start_0
    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/sec_settings/bluetooth/BluetoothCallback;

    .line 293
    .local v2, callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/sec_settings/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 295
    .end local v2           #callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_7
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    invoke-virtual {v1, v0}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 299
    const/16 v6, 0xc

    if-ne v0, v6, :cond_8

    .line 300
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 301
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 304
    :cond_8
    const/16 v6, 0xa

    if-ne v0, v6, :cond_0

    .line 305
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 307
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/sec_settings/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1600(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 312
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 315
    :cond_9
    const-string v6, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 318
    .local v4, reason:I
    invoke-virtual {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v4}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 323
    const/16 v6, 0x9

    if-ne v4, v6, :cond_0

    .line 324
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 325
    invoke-static {v1}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 326
    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    .line 327
    :try_start_2
    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/sec_settings/bluetooth/BluetoothCallback;

    .line 328
    .restart local v2       #callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1}, Lcom/android/sec_settings/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_2

    .line 330
    .end local v2           #callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_a
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/sec_settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    .line 334
    :cond_b
    if-eqz p3, :cond_0

    .line 335
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v5

    .line 336
    .local v5, successful:Z
    if-eqz v5, :cond_c

    .line 338
    invoke-static {}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    :cond_c
    invoke-static {}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Framework rejected command immediately:REMOVE_BOND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
