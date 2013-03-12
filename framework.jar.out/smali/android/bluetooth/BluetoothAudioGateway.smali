.class public final Landroid/bluetooth/BluetoothAudioGateway;
.super Ljava/lang/Object;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_HF_AG_CHANNEL:I = 0xa

.field public static final DEFAULT_HS_AG_CHANNEL:I = 0xb

.field public static final MSG_INCOMING_HANDSFREE_CONNECTION:I = 0x65

.field public static final MSG_INCOMING_HEADSET_CONNECTION:I = 0x64

.field private static final SELECT_WAIT_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BT Audio Gateway"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBkpHandsfreeAgRfcommChannel:I

.field private mBkpHeadsetAgRfcommChannel:I

.field private mCallback:Landroid/os/Handler;

.field private mConnectThead:Ljava/lang/Thread;

.field private mConnectingHandsfreeAddress:Ljava/lang/String;

.field private mConnectingHandsfreeRfcommChannel:I

.field private mConnectingHandsfreeSocketFd:I

.field private mConnectingHeadsetAddress:Ljava/lang/String;

.field private mConnectingHeadsetRfcommChannel:I

.field private mConnectingHeadsetSocketFd:I

.field private mHandsfreeAgRfcommChannel:I

.field private mHeadsetAgRfcommChannel:I

.field private volatile mInterrupted:Z

.field private mNativeData:I

.field private mTimeoutRemainingMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Landroid/bluetooth/BluetoothAudioGateway;->classInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 69
    const/16 v0, 0xa

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/bluetooth/BluetoothAdapter;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;II)V
    .locals 1
    .parameter "adapter"
    .parameter "handsfreeAgRfcommChannel"
    .parameter "headsetAgRfcommChannel"

    .prologue
    const/4 v0, -0x1

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 47
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 64
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBkpHandsfreeAgRfcommChannel:I

    .line 65
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBkpHeadsetAgRfcommChannel:I

    .line 74
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 75
    iput p2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 76
    iput p3, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 78
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBkpHandsfreeAgRfcommChannel:I

    .line 79
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBkpHeadsetAgRfcommChannel:I

    .line 81
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->initializeNativeDataNative()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAudioGateway;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothAudioGateway;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAudioGateway;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I

    return v0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothAudioGateway;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeSocketFd:I

    return v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I

    return p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAudioGateway;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I

    return v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I

    return p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothAudioGateway;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAudioGateway;->waitForHandsfreeConnectNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothAudioGateway;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mTimeoutRemainingMs:I

    return v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothAudioGateway;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetSocketFd:I

    return v0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeAddress:Ljava/lang/String;

    return-object v0
.end method

.method private applyEDMPolicy()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 87
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object v3

    .line 89
    .local v3, service:Landroid/sec/enterprise/BluetoothPolicy;
    const/16 v6, 0x80

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v6

    if-nez v6, :cond_6

    move v4, v5

    .line 90
    .local v4, sppBlocked:Z
    :goto_0
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v6

    if-nez v6, :cond_7

    move v1, v5

    .line 91
    .local v1, hfpBlocked:Z
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v5

    .line 93
    .local v2, hspBlocked:Z
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->cleanupNativeDataNative()V

    .line 94
    iget v6, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBkpHandsfreeAgRfcommChannel:I

    iput v6, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 95
    iget v6, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBkpHeadsetAgRfcommChannel:I

    iput v6, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 97
    if-eq v1, v5, :cond_1

    if-eq v2, v5, :cond_1

    if-ne v4, v5, :cond_5

    .line 98
    :cond_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_3

    .line 99
    :cond_2
    const-string v5, "BT Audio Gateway"

    const-string v6, "MDM: BluetoothProfile.BLUETOOTH_HFP_PROFILE Blocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 102
    :cond_3
    if-nez v2, :cond_4

    if-eqz v4, :cond_5

    .line 103
    :cond_4
    const-string v5, "BT Audio Gateway"

    const-string v6, "MDM: BluetoothProfile.BLUETOOTH_HSP_PROFILE Blocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 107
    :cond_5
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->initializeNativeDataNative()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1           #hfpBlocked:Z
    .end local v2           #hspBlocked:Z
    .end local v3           #service:Landroid/sec/enterprise/BluetoothPolicy;
    .end local v4           #sppBlocked:Z
    :goto_2
    return-void

    .restart local v3       #service:Landroid/sec/enterprise/BluetoothPolicy;
    :cond_6
    move v4, v2

    .line 89
    goto :goto_0

    .restart local v4       #sppBlocked:Z
    :cond_7
    move v1, v2

    .line 90
    goto :goto_1

    .line 108
    .end local v3           #service:Landroid/sec/enterprise/BluetoothPolicy;
    .end local v4           #sppBlocked:Z
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BT Audio Gateway"

    const-string v6, "MDM: BluetoothProfile Block State Access Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 256
    const-string v0, "BT Audio Gateway"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method private native setUpListeningSocketsNative()Z
.end method

.method private native tearDownListeningSocketsNative()V
.end method

.method private native waitForHandsfreeConnectNative(I)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->cleanupNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized start(Landroid/os/Handler;)Z
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 140
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->applyEDMPolicy()V

    .line 143
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 144
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 145
    new-instance v1, Landroid/bluetooth/BluetoothAudioGateway$1;

    const-string v2, "BT Audio Gateway"

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothAudioGateway$1;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 211
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->setUpListeningSocketsNative()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v1, "BT Audio Gateway"

    const-string v2, "Could not set up listening socket, exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :goto_0
    monitor-exit p0

    return v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    .line 217
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 230
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 233
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->tearDownListeningSocketsNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "BT Audio Gateway"

    const-string v2, "Interrupted waiting for Connect Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 224
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
