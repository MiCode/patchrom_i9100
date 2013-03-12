.class Landroid/bluetooth/BluetoothSocket$SdpHelper;
.super Landroid/bluetooth/IBluetoothCallback$Stub;
.source "BluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdpHelper"
.end annotation


# instance fields
.field private canceled:Z

.field private channel:I

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private final service:Landroid/bluetooth/IBluetooth;

.field private final uuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 1
    .parameter "device"
    .parameter "uuid"

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothCallback$Stub;-><init>()V

    .line 430
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->service:Landroid/bluetooth/IBluetooth;

    .line 431
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 432
    iput-object p2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->uuid:Landroid/os/ParcelUuid;

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    .line 434
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    .line 470
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I

    .line 471
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_0
    monitor-exit p0

    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doSdp()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Service discovery canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 441
    :cond_0
    const/4 v2, -0x1

    :try_start_1
    iput v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    const/4 v1, 0x0

    .line 445
    .local v1, inProgress:Z
    :try_start_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->service:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v2, v3, v4, p0}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 448
    :goto_0
    if-nez v1, :cond_1

    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to start Service Discovery"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothSocket"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 451
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v2, "service.bt.security.policy.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to start Service Discovery"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    :cond_2
    const-wide/16 v2, 0x2ee0

    :try_start_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 461
    :goto_1
    :try_start_5
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Service discovery canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_3
    iget v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Service discovery failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_4
    iget v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2

    .line 459
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public declared-synchronized getParcelUuid()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->uuid:Landroid/os/ParcelUuid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRfcommChannelFound(I)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    if-nez v0, :cond_0

    .line 476
    iput p1, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I

    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_0
    monitor-exit p0

    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
