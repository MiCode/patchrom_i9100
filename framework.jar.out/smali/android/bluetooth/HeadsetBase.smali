.class public final Landroid/bluetooth/HeadsetBase;
.super Ljava/lang/Object;
.source "HeadsetBase.java"


# static fields
.field private static final DBG:Z = true

.field public static final DIRECTION_INCOMING:I = 0x1

.field public static final DIRECTION_OUTGOING:I = 0x2

.field public static final RFCOMM_DISCONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Bluetooth HeadsetBase"

.field private static sAtInputCount:I


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAddress:Ljava/lang/String;

.field protected mAtParser:Landroid/bluetooth/AtParser;

.field private final mConnectTimestamp:J

.field private final mDirection:I

.field private mEventThread:Ljava/lang/Thread;

.field private mEventThreadHandler:Landroid/os/Handler;

.field private volatile mEventThreadInterrupted:Z

.field private mNativeData:I

.field private final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mRfcommChannel:I

.field private mTimeoutRemainingMs:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    .line 69
    invoke-static {}, Landroid/bluetooth/HeadsetBase;->classInitNative()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter "pm"
    .parameter "adapter"
    .parameter "device"
    .parameter "rfcommChannel"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    .line 87
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    iput-object p3, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 89
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAddress:Ljava/lang/String;

    .line 90
    iput p4, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    .line 91
    const/4 v0, 0x1

    const-string v1, "HeadsetBase"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 93
    invoke-virtual {p0}, Landroid/bluetooth/HeadsetBase;->initializeAtParser()V

    .line 95
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/bluetooth/HeadsetBase;->initializeNativeDataNative(I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V
    .locals 3
    .parameter "pm"
    .parameter "adapter"
    .parameter "device"
    .parameter "socketFd"
    .parameter "rfcommChannel"
    .parameter "handler"

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v2, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    .line 104
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 105
    iput-object p3, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 106
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAddress:Ljava/lang/String;

    .line 107
    iput p5, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    .line 108
    iput-object p6, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    .line 109
    const-string v0, "HeadsetBase"

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 111
    invoke-virtual {p0}, Landroid/bluetooth/HeadsetBase;->initializeAtParser()V

    .line 113
    invoke-direct {p0, p4}, Landroid/bluetooth/HeadsetBase;->initializeNativeDataNative(I)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/HeadsetBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/HeadsetBase;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->readNative(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/HeadsetBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->getLastReadStatusNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/bluetooth/HeadsetBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/HeadsetBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->disconnectNative()V

    return-void
.end method

.method private declared-synchronized acquireWakeLock()V
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_0
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native connectAsyncNative()I
.end method

.method private native connectNative()Z
.end method

.method private native disconnectNative()V
.end method

.method public static getAtInputCount()I
    .locals 1

    .prologue
    .line 316
    sget v0, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    return v0
.end method

.method private native getLastReadStatusNative()I
.end method

.method private native initializeNativeDataNative(I)V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 320
    const-string v0, "Bluetooth HeadsetBase"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method private native readNative(I)Ljava/lang/String;
.end method

.method private declared-synchronized releaseWakeLock()V
    .locals 1

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native sendURCNative(Ljava/lang/String;)Z
.end method

.method private stopEventThread()V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    .line 194
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    .line 201
    return-void

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native waitForAsyncConnectNative(I)I
.end method


# virtual methods
.method public connect(Landroid/os/Handler;)Z
    .locals 3
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    .line 206
    iget-object v1, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    invoke-static {v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const-string v1, "Bluetooth HeadsetBase"

    const-string v2, "connect MDM: Headset is not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->connectNative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iput-object p1, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    .line 214
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connectAsync()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v2, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    invoke-static {v2, v3}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 227
    const-string v2, "Bluetooth HeadsetBase"

    const-string v3, "connectAsync MDM: Headset is not allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->connectAsyncNative()I

    move-result v0

    .line 232
    .local v0, ret:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->stopEventThread()V

    .line 264
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->disconnectNative()V

    .line 265
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->cleanupNativeDataNative()V

    .line 75
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAtParser()Landroid/bluetooth/AtParser;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    return-object v0
.end method

.method public getConnectTimestamp()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    return-wide v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    return v0
.end method

.method public getRemainingAsyncConnectWaitingTimeMs()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/bluetooth/HeadsetBase;->mTimeoutRemainingMs:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected handleInput(Ljava/lang/String;)V
    .locals 7
    .parameter "input"

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->acquireWakeLock()V

    .line 124
    const-class v4, Landroid/bluetooth/HeadsetBase;

    monitor-enter v4

    .line 125
    :try_start_0
    sget v3, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_1

    .line 126
    const/4 v3, 0x0

    sput v3, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    .line 130
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 133
    .local v1, timestamp:J
    iget-object v3, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    invoke-virtual {v3, p1}, Landroid/bluetooth/AtParser;->process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 134
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    const-string v3, "Bluetooth HeadsetBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 138
    const-string v3, "Bluetooth HeadsetBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error processing <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 143
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->releaseWakeLock()V

    .line 144
    return-void

    .line 128
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #timestamp:J
    :cond_1
    :try_start_1
    sget v3, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected initializeAtParser()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Landroid/bluetooth/AtParser;

    invoke-direct {v0}, Landroid/bluetooth/AtParser;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    .line 155
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized sendURC(Ljava/lang/String;)Z
    .locals 2
    .parameter "urc"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 296
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->sendURCNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 299
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startEventThread()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/bluetooth/HeadsetBase$1;

    const-string v1, "HeadsetBase Event Thread"

    invoke-direct {v0, p0, v1}, Landroid/bluetooth/HeadsetBase$1;-><init>(Landroid/bluetooth/HeadsetBase;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    .line 186
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    return-void
.end method

.method public waitForAsyncConnect(ILandroid/os/Handler;)I
    .locals 3
    .parameter "timeout_ms"
    .parameter "handler"

    .prologue
    .line 247
    iget-object v1, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    invoke-static {v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    const-string v1, "Bluetooth HeadsetBase"

    const-string v2, "connectAsync MDM: Headset is not allowed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, -0x1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->waitForAsyncConnectNative(I)I

    move-result v0

    .line 253
    .local v0, res:I
    if-lez v0, :cond_0

    .line 254
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    goto :goto_0
.end method
