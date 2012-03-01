.class Lcom/android/phone/BluetoothHeadsetService$6;
.super Landroid/bluetooth/IBluetoothHeadset$Stub;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10
    .parameter "device"

    .prologue
    .line 827
    iget-object v9, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v9

    .line 829
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 830
    .local v7, cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v7, :cond_0

    .line 831
    const-string v1, "Bluetooth HSHFP"

    const-string v2, "Cached Headset is Null in acceptIncomingConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v1, 0x0

    monitor-exit v9

    .line 846
    :goto_0
    return v1

    .line 834
    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v8

    .line 835
    .local v8, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget v4, v8, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v8, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 840
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x2

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, p1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 842
    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v7, v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2202(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 843
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/HeadsetBase;I)V

    .line 845
    const-string v1, "Successfully used incoming connection"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Ljava/lang/String;)V

    .line 846
    const/4 v1, 0x1

    monitor-exit v9

    goto :goto_0

    .line 847
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v7           #cachedHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    .end local v8           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelConnectThread()Z
    .locals 4

    .prologue
    .line 851
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2000(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 860
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2002(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 862
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Bluetooth HSHFP"

    const-string v3, "Connection cancelled twice?"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 863
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 653
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v3

    .line 656
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 658
    .local v0, currDevice:Landroid/bluetooth/BluetoothDevice;
    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$6;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-nez v4, :cond_1

    .line 660
    :cond_0
    monitor-exit v3

    .line 669
    :goto_0
    return v2

    .line 662
    :cond_1
    if-eqz v0, :cond_2

    .line 663
    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHeadsetService$6;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->connectHeadset(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 671
    .end local v0           #currDevice:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 667
    .restart local v0       #currDevice:Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v1

    .line 668
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "Bluetooth HSHFP"

    const-string v5, "connectHeadset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 867
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v4

    .line 868
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 869
    .local v0, currDevice:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 870
    new-instance v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v1, v5}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    .line 871
    .local v1, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v6, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v5, p1, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 874
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v5

    if-nez v5, :cond_0

    .line 877
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 878
    .local v2, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v2, Landroid/os/Message;->what:I

    .line 879
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 880
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x5dc

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 884
    .end local v2           #msg:Landroid/os/Message;
    :goto_0
    monitor-exit v4

    .line 896
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :goto_1
    return v3

    .line 882
    .restart local v1       #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v5, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 897
    .end local v0           #currDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 891
    .restart local v0       #currDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    :try_start_1
    const-string v5, "Bluetooth HSHFP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectHeadset(): failed: already in state "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " with headset "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v3, 0x0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10
    .parameter "device"

    .prologue
    const/4 v9, 0x1

    .line 770
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v8

    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v2, 0x1

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v1, p1, v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 774
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v7

    .line 775
    .local v7, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget v4, v7, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, v7, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 780
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1, v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2202(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 782
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$2100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 783
    monitor-exit v8

    return v9

    .line 784
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v7           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 675
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v3

    .line 678
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 679
    .local v1, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v1, :cond_0

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v4

    if-eqz v4, :cond_0

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 682
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :goto_0
    return v2

    .line 685
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetooth;->disconnectHeadset(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 690
    .end local v1           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 686
    .restart local v1       #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catch_0
    move-exception v0

    .line 687
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "Bluetooth HSHFP"

    const-string v5, "disconnectHeadset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 901
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v4

    .line 902
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 903
    .local v1, remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v1, :cond_0

    monitor-exit v4

    .line 932
    :goto_0
    return v2

    .line 905
    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 913
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v5, 0x3

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, p1, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 915
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2200(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/HeadsetBase;

    move-result-object v0

    .line 916
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$700(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 917
    const-string v2, "+CIEV: 7,3"

    invoke-virtual {v0, v2}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 920
    :cond_1
    if-eqz v0, :cond_2

    .line 921
    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 922
    const/4 v0, 0x0

    .line 924
    :cond_2
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v5, 0x0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, p1, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 925
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 926
    .end local v0           #headset:Landroid/bluetooth/HeadsetBase;
    :cond_3
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 929
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v5, 0x0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, p1, v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1700(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 930
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 932
    :cond_4
    monitor-exit v4

    goto :goto_0

    .line 933
    .end local v1           #remoteHeadset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 957
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 958
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v0, :cond_0

    const/16 v1, 0xa

    .line 960
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2400(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    goto :goto_0
.end method

.method public getBatteryUsageHint(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-static {}, Landroid/bluetooth/HeadsetBase;->getAtInputCount()I

    move-result v0

    return v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/phone/BluetoothHeadsetService$6;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 640
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-nez v0, :cond_0

    .line 641
    const/4 v1, 0x0

    .line 643
    :goto_0
    return v1

    :cond_0
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "Need BLUETOOTH permission"

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v3, headsets:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v8}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 703
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHeadsetService$6;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 704
    .local v2, headsetState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget v7, v0, v5

    .line 705
    .local v7, state:I
    if-ne v7, v2, :cond_1

    .line 706
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 700
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #headsetState:I
    .end local v3           #headsets:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 704
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #headsetState:I
    .restart local v3       #headsets:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #state:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 711
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #headsetState:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :cond_2
    monitor-exit p0

    return-object v3
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .parameter "device"

    .prologue
    .line 746
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v2

    .line 749
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 752
    .local v0, priority:I
    monitor-exit v2

    return v0

    .line 753
    .end local v0           #priority:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$2300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 696
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 814
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v3

    .line 815
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    .line 816
    .local v0, headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    if-eqz v0, :cond_0

    .line 817
    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mIncomingInfo:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$800(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;

    move-result-object v1

    .line 818
    .local v1, info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHeadsetService;->access$900(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V

    .line 822
    .end local v1           #info:Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    :goto_0
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .line 820
    :cond_0
    const-string v2, "Bluetooth HSHFP"

    const-string v4, "Error no record of remote headset"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 823
    .end local v0           #headset:Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .parameter "device"
    .parameter "state"

    .prologue
    .line 938
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2400(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v1

    .line 939
    .local v1, prevState:I
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mAudioState:I
    invoke-static {v2, p2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2402(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 940
    const/16 v2, 0xc

    if-ne p2, v2, :cond_1

    .line 941
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, p1}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 945
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 947
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 948
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 949
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioStateIntent:  State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PrevState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Ljava/lang/String;)V

    .line 952
    const/4 v2, 0x1

    return v2

    .line 942
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/16 v2, 0xa

    if-ne p2, v2, :cond_0

    .line 943
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHeadsetService;->access$2302(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 760
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHeadsetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved priority  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1600(Ljava/lang/String;)V

    .line 765
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 790
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$6;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 794
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 796
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->initiateScoUsingVirtualVoiceCall()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 717
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 720
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 722
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->startVoiceRecognition()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 803
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/BluetoothHeadsetService$6;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 807
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 809
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/BluetoothHeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v1

    .line 729
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 732
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 735
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService$6;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->stopVoiceRecognition()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
