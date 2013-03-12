.class public Lcom/android/internal/telephony/cat/CatBIPManager;
.super Landroid/os/Handler;
.source "CatBIPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatBIPManager$2;
    }
.end annotation


# static fields
.field private static final ADMIN_PDN_EXTENSION_WAIT:I = 0x7530

.field static final BIP_CONTINUE_ADMIN_PDN:I = 0x5

.field static final BIP_DATA_STATE_CHANGED:I = 0x4

.field static final BIP_REQUEST_SETUP_DATA:I = 0x1

.field static final BIP_UICC_SERVER_RESTART_DONE:I = 0x3

.field static final BIP_UICC_SERVER_STARTED:I = 0x2

.field static final MAX_BIP_CHANNELS:I = 0x7

.field private static final WAKE_LOCK_TIMEOUT:I = 0x2710

.field static channelIds:[Z

.field static mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;


# instance fields
.field activeClientConnections:I

.field private connMgr:Landroid/net/ConnectivityManager;

.field connection_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cat/CatBIPConnection;",
            ">;"
        }
    .end annotation
.end field

.field crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

.field currentChannel:I

.field feature:Ljava/lang/String;

.field private mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

.field private mContext:Landroid/content/Context;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field monitorChannelStatusEvent:Z

.field monitorDataDownloadEvent:Z

.field private nwInfo:Landroid/net/NetworkInfo;

.field oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field resp_pending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cat/CatService;)V
    .locals 4
    .parameter "context"
    .parameter "phone"
    .parameter "handle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    .line 110
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    .line 111
    iput v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->activeClientConnections:I

    .line 116
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 118
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorDataDownloadEvent:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z

    .line 123
    const-string v1, "enableBIP"

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 128
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    .line 131
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    .line 154
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatBIPManager$1;-><init>(Lcom/android/internal/telephony/cat/CatBIPManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    const-string v1, "Inside CatBIPManager"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    .line 139
    sput-object p3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    .line 140
    const/4 v1, 0x7

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    .line 141
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    .line 142
    new-instance v1, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/CatBIPManager;)Lcom/android/internal/telephony/cat/NetworkConnectivityListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    return-object v0
.end method

.method private assignChannelId()I
    .locals 3

    .prologue
    .line 987
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 988
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 989
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 990
    add-int/lit8 v1, v0, 0x1

    .line 993
    :goto_1
    return v1

    .line 987
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private channelsAvailable()Z
    .locals 2

    .prologue
    .line 1664
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 1665
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 1666
    const/4 v1, 0x1

    .line 1669
    :goto_1
    return v1

    .line 1664
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1669
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkPortInUse(I)Z
    .locals 4
    .parameter "port"

    .prologue
    .line 1679
    const-string v2, "checkPortInUse"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1680
    const/4 v0, 0x0

    .line 1681
    .local v0, b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1683
    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1684
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1685
    .restart local v0       #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v2, v2, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    if-ne v2, p1, :cond_0

    .line 1686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in use. Cannot connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1687
    const/4 v2, 0x1

    .line 1691
    :goto_0
    return v2

    .line 1690
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in use. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1691
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 4
    .parameter "bipcon"

    .prologue
    const/4 v3, 0x0

    .line 1227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1228
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1230
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1231
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v3, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1232
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1235
    const-string v1, "stopUsingNetworkFeature()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1236
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1241
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v2, "enableHIPRI"

    if-ne v1, v2, :cond_1

    .line 1242
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1243
    .local v0, msg_resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1244
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1246
    const-string v1, "Sent close Channel TR: FEATURE_ENABLE_HIPRI"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    const-string v1, "Unregistering..."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1250
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1251
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1253
    :cond_0
    const-string v1, "enableBIP"

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 1255
    .end local v0           #msg_resp:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private closeServerConnection(Lcom/android/internal/telephony/cat/CatBIPServerConnection;Lcom/android/internal/telephony/cat/CloseChannelParams;)V
    .locals 4
    .parameter "server"
    .parameter "params"

    .prologue
    .line 1263
    const-string v2, "closeServerConnection"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseChannel: BIP Server connection found! ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1266
    iget-object v2, p2, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CloseChannelMode;->value()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1293
    :goto_0
    return-void

    .line 1269
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1270
    .local v1, termResp:Landroid/os/Message;
    const-string v2, "handleCloseChannel: remove connection; TCP in CLOSED state!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1272
    const-string v2, "handleCloseChannel: Channel Mode is 00!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1273
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1274
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1275
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1276
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1277
    const-string v2, "handleCloseChannel: Sending Close Channel Terminal Response to mCatService handle"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1281
    .end local v1           #termResp:Landroid/os/Message;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1282
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 1283
    const-string v2, "handleCloseChannel: put TCP in LISTEN State!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1284
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;

    invoke-direct {v3, p1, p0}, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 1285
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1286
    const/4 v2, 0x3

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1287
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1288
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessage(Landroid/os/Message;)Z

    .line 1289
    const-string v2, "handleCloseChannel: Channel Mode is 01!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private continueProcessingCloseChannel(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "nwInfo"

    .prologue
    .line 1699
    const-string v1, "continueProcessingCloseChannel(nwinfo):"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1700
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1704
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1705
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1706
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1708
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1709
    .local v0, msg_resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1710
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1712
    const-string v1, "Sent close Channel TR:"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1714
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1715
    const-string v1, "Unregistering..."

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1716
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1717
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 1700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private continueProcessingOpenChannel(Landroid/net/NetworkInfo;)V
    .locals 14
    .parameter "nwInfo"

    .prologue
    const/4 v10, 0x5

    const/16 v13, 0x11

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1730
    iget v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 1731
    .local v2, bipcon:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "continueProcessingOpenChannel() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1733
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager$2;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1735
    :pswitch_0
    const-string v8, "Sending Failure TR..."

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1737
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1738
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v12, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1739
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v11, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1741
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v8, :cond_1

    .line 1742
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v13}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1743
    .local v7, termResp:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1744
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1745
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1749
    .end local v7           #termResp:Landroid/os/Message;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1750
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1752
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1753
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1754
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 1760
    :pswitch_1
    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1761
    .local v1, addrBytes:[B
    const/4 v5, 0x0

    .line 1763
    .local v5, routeExists:Z
    array-length v8, v1

    const/16 v9, 0x10

    if-ne v8, v9, :cond_3

    .line 1768
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 1770
    .local v4, msg_resp:Landroid/os/Message;
    const-string v8, "Exception occurred while Setting up streams"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1771
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1772
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v12, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1773
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v11, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1774
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v13}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1776
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1777
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1779
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v9, v2, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v9, v9, -0x1

    aput-boolean v11, v8, v9

    .line 1780
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1781
    const-string v8, "Removed connection  Successfully!!"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1785
    :cond_2
    const-string v8, "StopListening() & unregisterHandler()"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1786
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1787
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1788
    const-string v8, "Time to return"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1794
    .end local v4           #msg_resp:Landroid/os/Message;
    :cond_3
    const/4 v8, 0x3

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget-byte v9, v1, v12

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget-byte v9, v1, v11

    and-int/lit16 v9, v9, 0xff

    or-int v0, v8, v9

    .line 1799
    .local v0, addr:I
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v9, "enableBIP"

    if-ne v8, v9, :cond_4

    .line 1800
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v13, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v5

    .line 1806
    :goto_1
    if-eqz v5, :cond_6

    .line 1808
    :try_start_0
    const-string v8, "connMgr.requestRouteToHost returned true"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1809
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 1810
    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1811
    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 1812
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v8, v2, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v8, v12, :cond_5

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_2
    iput-object v8, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1813
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1819
    :goto_3
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cat/CatBIPManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x7530

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v8, :cond_0

    .line 1855
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v13}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1856
    .restart local v7       #termResp:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v9, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v9, v2}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1857
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1858
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1859
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    goto/16 :goto_0

    .line 1802
    .end local v7           #termResp:Landroid/os/Message;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8, v10, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v5

    goto :goto_1

    .line 1812
    :cond_5
    :try_start_1
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_2

    .line 1815
    :cond_6
    const-string v8, "connMgr.requestRouteToHost returned false"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1821
    :catch_0
    move-exception v3

    .line 1822
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "HandleMessage: Exception occurred while Setting up streams"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1823
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    if-eqz v8, :cond_0

    .line 1824
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v9, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1825
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v12, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1826
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v11, v8, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1827
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v13}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1829
    .restart local v7       #termResp:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1830
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1832
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 1833
    .local v6, s:Ljava/lang/String;
    const-string v8, "TIMEOUT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8

    .line 1834
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1842
    :cond_7
    :goto_4
    const-string v8, "Stoplistening(),  Unregistring handler"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1843
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1844
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1846
    const-string v8, "Time to return"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1847
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    goto/16 :goto_0

    .line 1836
    :cond_8
    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v9, v2, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v9, v9, -0x1

    aput-boolean v11, v8, v9

    .line 1837
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1838
    const-string v8, "Removed connection  Successfully!!"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 1864
    .end local v0           #addr:I
    .end local v1           #addrBytes:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #routeExists:Z
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #termResp:Landroid/os/Message;
    :pswitch_2
    const-string v8, "Still Connecting..."

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1733
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private displayConnectionStatus()V
    .locals 5

    .prologue
    .line 1644
    const-string v2, " "

    .line 1645
    .local v2, s:Ljava/lang/String;
    const-string v3, "Displaying ConnectionStatus"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1646
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Channel id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " assigned ? - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    aget-boolean v4, v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1649
    :cond_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total number of connections "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    const/4 v0, 0x0

    .line 1654
    .local v0, b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1656
    .local v1, i:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1657
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 1658
    .restart local v0       #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChannelID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iface(protcl , port) =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v4, v4, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1661
    :cond_1
    return-void
.end method

.method private freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 3
    .parameter "bipcon"

    .prologue
    .line 414
    if-nez p1, :cond_1

    .line 415
    const-string v0, "Nothing to Free, No channels Open"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to freeChannel() chanelid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPConnection;->terminateStreams()V

    .line 422
    const-string v0, "removing channel id and connection from the list"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v1, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "Removed connection  Successfully!!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;
    .locals 4
    .parameter "cid"

    .prologue
    .line 966
    const-string v2, "CatBIPConnection : get ID"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 970
    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 971
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 972
    .restart local v0       #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    if-ne v2, p1, :cond_0

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CatBIPConnection : found ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 978
    :goto_0
    return-object v2

    .line 977
    :cond_1
    const-string v2, "CatBIPConnection : null ID"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isbearerTypeSupported(I)Z
    .locals 2
    .parameter "bearerType"

    .prologue
    .line 1164
    packed-switch p1, :pswitch_data_0

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported bearer type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1170
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 12
    .parameter "bipcon"

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 210
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 211
    .local v3, msg_resp:Landroid/os/Message;
    const-string v6, "openChannelAsRemoteClient()"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-nez v6, :cond_0

    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v6, :cond_2

    .line 215
    :cond_0
    const-string v6, "openChannelAsRemoteClient():sending TR connection mode is either backgrnd or ondemand"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v6, v10, :cond_1

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_0
    iput-object v6, v7, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 219
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v9, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 220
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 222
    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v7, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 223
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 226
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v6, :cond_2

    .line 407
    :goto_1
    return-void

    .line 218
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_0

    .line 232
    :cond_2
    const/4 v4, -0x1

    .line 234
    .local v4, result:I
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-nez v6, :cond_4

    .line 236
    :cond_3
    const-string v6, "openChannelAsRemoteClient():requesting PDN connection connection mode :bkgrnd or immediate"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iput-boolean v9, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 245
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCurrentGprsState()I

    move-result v6

    if-nez v6, :cond_6

    .line 246
    const-string v6, "mPhone instanceof GSMPhone"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v4

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestDataConnection() returns "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 396
    :cond_4
    :goto_3
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    if-eqz v6, :cond_f

    .line 397
    const-string v6, "Backgound mode sending channel status to Cat Service"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 406
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto :goto_1

    .line 249
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v6, v6, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getCurrentDataConnectionState()I

    move-result v6

    if-nez v6, :cond_7

    .line 250
    const-string v6, "mPhone instanceof CDMALTEPhone"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v4

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestDataConnection() returns "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCurrentDataConnectionState()I

    move-result v6

    if-nez v6, :cond_8

    .line 254
    const-string v6, "mPhone instanceof CDMAPhone"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v4

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestDataConnection() returns "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 258
    :cond_8
    const/4 v4, 0x3

    .line 259
    const-string v6, "getCurrentGprsState is not STATE_IN_SERVICE"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 266
    :pswitch_0
    const-string v6, "sending Failure TR"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 269
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v10, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 270
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v9, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 272
    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v7, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 273
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 281
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 282
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto/16 :goto_1

    .line 287
    :pswitch_1
    const-string v6, "APN_ALREADY_ACTIVE"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    :try_start_0
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 291
    .local v1, addrBytes:[B
    const/4 v5, 0x0

    .line 294
    .local v5, routeExists:Z
    array-length v6, v1

    const/16 v7, 0x10

    if-ne v6, v7, :cond_b

    .line 299
    const-string v6, "Exception occurred while Setting up streams"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 301
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 302
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 303
    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v7, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 305
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 308
    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    .line 309
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 310
    const-string v6, "Removed connection  Successfully!!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    :cond_9
    const-string v6, "StopListening() & unregisterHandler()"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 316
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 317
    const-string v6, "Time to return"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 365
    .end local v1           #addrBytes:[B
    .end local v5           #routeExists:Z
    :catch_0
    move-exception v2

    .line 366
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Exception occurred while Setting up streams"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 368
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v10, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 369
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v9, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 370
    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v7, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 372
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 375
    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v7, v7, -0x1

    aput-boolean v9, v6, v7

    .line 376
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 377
    const-string v6, "Removed connection  Successfully!!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    :cond_a
    const-string v6, "StopListening() & unregisterHandler()"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 383
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 384
    const-string v6, "Time to return"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 323
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #addrBytes:[B
    .restart local v5       #routeExists:Z
    :cond_b
    const/4 v6, 0x3

    :try_start_1
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    or-int v0, v6, v7

    .line 329
    .local v0, addr:I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v7, "enableBIP"

    if-ne v6, v7, :cond_c

    .line 331
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/16 v7, 0x11

    invoke-virtual {v6, v7, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v5

    .line 341
    :goto_5
    if-eqz v5, :cond_e

    .line 342
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RouteExists = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 344
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 345
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 347
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    if-ne v6, v10, :cond_d

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_6
    iput-object v6, v7, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 348
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 354
    :goto_7
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/CatBIPManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 356
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    const/4 v7, 0x4

    invoke-virtual {v6, p0, v7}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 357
    const-string v6, "registering handler with ConnectivityListener "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->startListening()V

    .line 360
    const-string v6, "mConnectivityListener.startListening() called "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    const-string v6, "wakelock for OPEN CHANNEL"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_3

    .line 335
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v5

    goto :goto_5

    .line 347
    :cond_d
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_6

    .line 350
    :cond_e
    const-string v6, " connMgr.requestRouteToHost returned false"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 390
    .end local v0           #addr:I
    .end local v1           #addrBytes:[B
    .end local v5           #routeExists:Z
    :pswitch_2
    const-string v6, " APN_REQUEST_STARTED , wait till we hear from NetworkListener, returning "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 399
    :cond_f
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-nez v6, :cond_5

    .line 400
    const-string v6, "Immediate mode Sending TR to Cat Service"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v7, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v6, v11}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 402
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 403
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 262
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V
    .locals 5
    .parameter "bipcon"
    .parameter "requestedLength"

    .prologue
    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, bytesRemaining:I
    const/4 v2, 0x0

    .line 1119
    .local v2, dataLength:I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1120
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1124
    and-int/lit16 v3, p2, 0xff

    const/16 v4, 0xed

    if-le v3, v4, :cond_0

    .line 1126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveDataClientMode: requestedLength is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1139
    const/16 p2, 0xed

    .line 1142
    :cond_0
    and-int/lit16 v3, p2, 0xff

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->getRxData(I)[B

    move-result-object v1

    .line 1143
    .local v1, data:[B
    if-nez v1, :cond_1

    .line 1144
    const-string v3, "receiveDataClientMode: RxData is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/ReceiveDataResponse;

    invoke-direct {v4, v1, v2, v0}, Lcom/android/internal/telephony/cat/ReceiveDataResponse;-><init>([BII)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1155
    return-void

    .line 1145
    :cond_1
    array-length v3, v1

    and-int/lit16 v4, p2, 0xff

    if-ge v3, v4, :cond_2

    .line 1146
    array-length v2, v1

    .line 1147
    const-string v3, "receiveDataClientMode: RxData is shorter than requested length"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1151
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    sub-int v0, v3, v4

    .line 1152
    array-length v2, v1

    goto :goto_0
.end method

.method private receiveDataServerMode(Lcom/android/internal/telephony/cat/CatBIPServerConnection;B)V
    .locals 9
    .parameter "b"
    .parameter "ChannelDataLength"

    .prologue
    const/4 v8, 0x0

    .line 997
    const-string v6, "receiveDataServerMode"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 999
    and-int/lit16 v0, p2, 0xff

    .line 1000
    .local v0, arrayLength:I
    const/4 v1, 0x0

    .line 1001
    .local v1, availableData:[B
    const/4 v5, 0x0

    .line 1003
    .local v5, temp:[B
    const/4 v3, 0x0

    .line 1004
    .local v3, bytesInRxBuffer:I
    const/4 v4, 0x0

    .line 1006
    .local v4, dataLength:I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1007
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v8, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1011
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    if-nez v6, :cond_0

    .line 1013
    const-string v6, "receiveDataServerMode : byteArrayWriter is null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    :goto_0
    return-void

    .line 1019
    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1020
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1023
    :cond_1
    if-nez v1, :cond_3

    .line 1057
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v7, Lcom/android/internal/telephony/cat/ReceiveDataResponse;

    invoke-direct {v7, v5, v4, v3}, Lcom/android/internal/telephony/cat/ReceiveDataResponse;-><init>([BII)V

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1058
    const-string v6, "receiveDataServerMode: Filling Receive Data Terminal Response"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_3
    array-length v6, v1

    if-ge v6, v0, :cond_4

    .line 1026
    array-length v4, v1

    .line 1027
    move-object v5, v1

    goto :goto_1

    .line 1030
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1032
    array-length v6, v1

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    sub-int v2, v6, v7

    .line 1033
    .local v2, bytesAvailable:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytesAvailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  availableData.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  lastReadPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    if-lt v0, v2, :cond_5

    .line 1035
    move v0, v2

    .line 1038
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    new-array v5, v0, [B

    .line 1041
    iget v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    invoke-static {v1, v6, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1042
    iget v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    add-int/2addr v6, v0

    iput v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    .line 1043
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastReadPosition = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    sub-int v3, v6, v7

    .line 1046
    array-length v4, v5

    .line 1048
    iget v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    array-length v7, v1

    if-lt v6, v7, :cond_2

    .line 1049
    const/4 v1, 0x0

    .line 1050
    const-string v6, "reset rxbuf buffer"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    const/4 v3, 0x0

    .line 1052
    iput v8, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    .line 1053
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_1
.end method

.method private requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I
    .locals 6
    .parameter "con"

    .prologue
    const/4 v5, 0x1

    .line 1184
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1185
    const-string v2, "con.NetworkAccessname is null"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    const-string v2, "enableHIPRI"

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    .line 1203
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 1204
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result of startUsingNetworkFeature("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    if-ne v5, v1, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    const/4 v3, 0x4

    invoke-virtual {v2, p0, v3}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 1209
    const-string v2, "registering handler with ConnectivityListener "

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->startListening()V

    .line 1212
    const-string v2, "mConnectivityListener.startListening() called "

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1214
    const-string v2, "wakelock for OPEN CHANNEL"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1217
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->resp_pending:Z

    .line 1219
    return v1

    .line 1188
    .end local v1           #result:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getDefaultApnName()Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, defaultApnName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultApnName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1191
    const-string v2, "con.NetworkAccessname is same as default APN"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    const-string v2, "enableHIPRI"

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    goto/16 :goto_0

    .line 1195
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 1196
    const-string v2, "LGT"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1197
    const-string v2, "enableHIPRI"

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    goto/16 :goto_0

    .line 1199
    :cond_3
    const-string v2, "enableBIP"

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    .locals 19
    .parameter "con"
    .parameter "channelData"
    .parameter "sendDataImmediate"

    .prologue
    .line 1306
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-eqz v2, :cond_0

    .line 1307
    const-string v2, "ConnectionMode.isOnDemand && con.isfirstTime = true"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCurrentGprsState()I

    move-result v2

    if-nez v2, :cond_3

    .line 1314
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->requestDataConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)I

    move-result v16

    .line 1315
    .local v16, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDataConnection() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    :goto_0
    packed-switch v16, :pswitch_data_0

    .line 1428
    .end local v16           #result:I
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    if-nez v2, :cond_2

    .line 1429
    const-string v2, "con.isfirstTime = false"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1437
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1439
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/net/Socket;

    .line 1440
    .local v18, s:Ljava/net/Socket;
    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1441
    :cond_1
    const-string v2, "TCP Remote Client Socket is Closed or Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1444
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1445
    .local v14, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1446
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1447
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1448
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 1547
    .end local v14           #msg:Landroid/os/Message;
    .end local v18           #s:Ljava/net/Socket;
    :cond_2
    :goto_2
    return-void

    .line 1317
    :cond_3
    const/16 v16, 0x3

    .line 1318
    .restart local v16       #result:I
    const-string v2, "getCurrentGprsState is not STATE_IN_SERVICE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1323
    :pswitch_0
    const-string v2, "sending Failure TR"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1330
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 1331
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-byte v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 1334
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1335
    .restart local v14       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1336
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1338
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_2

    .line 1342
    .end local v14           #msg:Landroid/os/Message;
    :pswitch_1
    const-string v2, "APN_ALREADY_ACTIVE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1345
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    .line 1346
    .local v8, addrBytes:[B
    const/16 v17, 0x0

    .line 1348
    .local v17, routeExists:Z
    array-length v2, v8

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1353
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 1354
    .local v15, msg_resp:Landroid/os/Message;
    const-string v2, "Exception occurred while Setting up streams"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1358
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 1360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1361
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 1364
    const-string v2, "StopListening() & unregisterHandler()"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1367
    const-string v2, "Time to return"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1395
    .end local v8           #addrBytes:[B
    .end local v15           #msg_resp:Landroid/os/Message;
    .end local v17           #routeExists:Z
    :catch_0
    move-exception v10

    .line 1396
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "Exception occurred while Setting up streams"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1402
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1403
    .restart local v14       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1404
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 1405
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    .line 1406
    .local v18, s:Ljava/lang/String;
    const-string v2, "TIMEOUT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 1407
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->freeChannel(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 1415
    :cond_4
    :goto_3
    const-string v2, "StopListening() & Unregister Handle"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->stopListening()V

    .line 1417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1418
    const-string v2, "Time to return"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1373
    .end local v10           #e:Ljava/lang/Exception;
    .end local v14           #msg:Landroid/os/Message;
    .end local v18           #s:Ljava/lang/String;
    .restart local v8       #addrBytes:[B
    .restart local v17       #routeExists:Z
    :cond_5
    const/4 v2, 0x3

    :try_start_1
    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x0

    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    or-int v7, v2, v3

    .line 1378
    .local v7, addr:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v3, "enableBIP"

    if-ne v2, v3, :cond_6

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v7}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v17

    .line 1386
    :goto_4
    if-eqz v17, :cond_7

    .line 1387
    const-string v2, "connMgr.requestRouteToHost returned true"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->setupStreams()V

    .line 1389
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1390
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    goto/16 :goto_1

    .line 1381
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v7}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v17

    goto :goto_4

    .line 1392
    :cond_7
    const-string v2, "connMgr.requestRouteToHost returned false"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1409
    .end local v7           #addr:I
    .end local v8           #addrBytes:[B
    .end local v17           #routeExists:Z
    .restart local v10       #e:Ljava/lang/Exception;
    .restart local v14       #msg:Landroid/os/Message;
    .restart local v18       #s:Ljava/lang/String;
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 1410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1411
    const-string v2, "Removed connection  Successfully!!"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1423
    .end local v10           #e:Ljava/lang/Exception;
    .end local v14           #msg:Landroid/os/Message;
    .end local v18           #s:Ljava/lang/String;
    :pswitch_2
    const-string v2, "APN_REQUEST_STARTED , wait till we hear from NetworkListner"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1451
    .end local v16           #result:I
    .local v18, s:Ljava/net/Socket;
    :cond_9
    const-string v2, "TCP Remote Client Socket is neither Closed nor Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1453
    .end local v18           #s:Ljava/net/Socket;
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1454
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/net/DatagramSocket;

    .line 1455
    .local v18, s:Ljava/net/DatagramSocket;
    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1456
    :cond_b
    const-string v2, "UDP Remote Client, Socket is Closed or Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1459
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1460
    .restart local v14       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1461
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 1465
    .end local v14           #msg:Landroid/os/Message;
    :cond_c
    const-string v2, "UDP Remote Client, Socket is neither Closed nor Not Connected"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1470
    .end local v18           #s:Ljava/net/DatagramSocket;
    :cond_d
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storing bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "txIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channeldatalength =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1472
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1473
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    move-object/from16 v0, p2

    array-length v3, v0

    add-int/2addr v2, v3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1481
    :goto_5
    if-eqz p3, :cond_10

    .line 1483
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1484
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v9, Ljava/net/DatagramSocket;

    .line 1485
    .local v9, ds:Ljava/net/DatagramSocket;
    new-instance v1, Ljava/net/DatagramPacket;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v6, v6, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct/range {v1 .. v6}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 1492
    .local v1, pkt:Ljava/net/DatagramPacket;
    :try_start_3
    invoke-virtual {v9, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1493
    const-string v2, "Packet Ready sent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1496
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1497
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 1499
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v11, v2, v3

    .line 1500
    .local v11, emptySpace:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v11}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1542
    .end local v1           #pkt:Ljava/net/DatagramPacket;
    .end local v9           #ds:Ljava/net/DatagramSocket;
    .end local v11           #emptySpace:I
    :cond_e
    :goto_6
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    .line 1543
    .restart local v14       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1544
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 1474
    .end local v14           #msg:Landroid/os/Message;
    :catch_1
    move-exception v10

    .line 1475
    .local v10, e:Ljava/lang/NullPointerException;
    const-string v2, "Nul pointer Exception while writing to tx buf "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1476
    .end local v10           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v13

    .line 1477
    .local v13, ioe:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "IndexOutOfBounds Exception while writing to tx buf "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1501
    .end local v13           #ioe:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #pkt:Ljava/net/DatagramPacket;
    .restart local v9       #ds:Ljava/net/DatagramSocket;
    :catch_3
    move-exception v12

    .line 1502
    .local v12, i:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while sending UDP packet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1504
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1505
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto :goto_6

    .line 1508
    .end local v1           #pkt:Ljava/net/DatagramPacket;
    .end local v9           #ds:Ljava/net/DatagramSocket;
    .end local v12           #i:Ljava/io/IOException;
    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1510
    :try_start_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1512
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    .line 1513
    .local v18, s:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data written to TCP sockt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1517
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1518
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 1520
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int v11, v2, v3

    .line 1522
    .restart local v11       #emptySpace:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v11}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_6

    .line 1524
    .end local v11           #emptySpace:I
    .end local v18           #s:Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 1525
    .local v10, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while sending to TCP packet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1528
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1529
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    goto/16 :goto_6

    .line 1535
    .end local v10           #e:Ljava/lang/Exception;
    :cond_10
    const-string v2, "Data Stored. Send Response"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1538
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    sub-int v11, v2, v3

    .line 1539
    .restart local v11       #emptySpace:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v3, v11}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    goto/16 :goto_6

    .line 1320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendDataServerMode(Lcom/android/internal/telephony/cat/CatBIPServerConnection;[BZ)V
    .locals 8
    .parameter "b"
    .parameter "ChannelData"
    .parameter "SendImmediate"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1062
    const-string v3, "sendDataServerMode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    :try_start_0
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    .line 1065
    .local v2, s:Ljava/net/Socket;
    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1066
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1067
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1068
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1069
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1071
    const-string v3, "sendDataServerMode: Socket Closed/Not Connected"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    .end local v2           #s:Ljava/net/Socket;
    :goto_0
    return-void

    .line 1077
    .restart local v2       #s:Ljava/net/Socket;
    :cond_1
    if-eqz p3, :cond_2

    .line 1078
    const-string v3, "sendDataServerMode: send immediate"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1080
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1081
    .local v1, immediateData:[B
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1082
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDataServerMode: Wrote all data to socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1084
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1086
    const-string v3, "sendDataServerMode: Resetting the Buffer"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    .end local v1           #immediateData:[B
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1094
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1095
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1096
    const-string v3, "sendDataServerMode: Filling SEND DATA Terminal Response"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1098
    .end local v2           #s:Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1100
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v7, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 1101
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v4, Lcom/android/internal/telephony/cat/SendDataResponse;

    invoke-direct {v4, v6}, Lcom/android/internal/telephony/cat/SendDataResponse;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 1102
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v6, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 1103
    const-string v3, "sendDataServerMode: Java IO Exception: Filling SEND DATA Terminal Response with BIP_ERROR"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1088
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #s:Ljava/net/Socket;
    :cond_2
    :try_start_1
    const-string v3, "sendDataServerMode: Store Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x0

    array-length v5, p2

    invoke-virtual {v3, p2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDataServerMode: Size of Tx buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setBipApn(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 4
    .parameter "bipcon"

    .prologue
    .line 1873
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1875
    .local v1, pref:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 1876
    const-string v2, "setBipApn : there is no default preferences"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1886
    :goto_0
    return-void

    .line 1879
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1880
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "setBipApn : set values"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1881
    const-string v2, "bip.pref.enable"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1882
    const-string v2, "bip.pref.apn"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1883
    const-string v2, "bip.pref.user"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1884
    const-string v2, "bip.pref.passwd"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1885
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public getChannelStatus(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 5
    .parameter "cmdParams"

    .prologue
    .line 725
    new-instance v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 726
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 727
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 728
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 730
    const-string v2, "getChannelStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 733
    .local v0, i:Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v3, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;

    sget-object v4, Lcom/android/internal/telephony/cat/CatBIPManager;->channelIds:[Z

    invoke-direct {v3, v0, v4}, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;-><init>(Ljava/util/Iterator;[Z)V

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 734
    const-string v2, "Filled crnt_resp.data"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 737
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 738
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 739
    return-void
.end method

.method public handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x3

    .line 536
    const-string v3, "handleCloseChannel"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    and-int/lit8 v1, v3, 0x7

    .line 540
    .local v1, cid:I
    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 541
    sget-object v3, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v4, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 543
    .local v2, termResp:Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloseChannel: Requested Chanel ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v4, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 545
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 546
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 548
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 549
    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    iget v3, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    const/16 v4, 0x27

    if-le v3, v4, :cond_1

    .line 551
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloseChannel: Invalid Channel Id! BIP\'s cid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params.mChannelId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v5, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 554
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 555
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 585
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    .line 561
    if-nez v0, :cond_2

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloseChannel: No Channel Available! BIP cid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " params.mChannelId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v5, v3, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 566
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 567
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 573
    const-string v3, "handleCloseChannel: UICC in SERVER Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    .line 574
    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/CatBIPManager;->closeServerConnection(Lcom/android/internal/telephony/cat/CatBIPServerConnection;Lcom/android/internal/telephony/cat/CloseChannelParams;)V

    goto :goto_0

    .line 576
    :cond_3
    const-string v3, "handleCloseChannel: UICC in CLIENT Mode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    .line 577
    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->closeClientConnection(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 580
    const-string v3, "Be back to old StrictMode"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->oldPolicy:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 760
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handling Message : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 951
    const-string v9, "handleMessage: default"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 764
    :pswitch_0
    const-string v9, "BIP_DATA_STATE_CHANGED"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mConnectivityListener:Lcom/android/internal/telephony/cat/NetworkConnectivityListener;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    .line 766
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 767
    .local v5, connectionState:Landroid/net/NetworkInfo$State;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nwInfo.getType()  = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ConnectionState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v10, "enableBIP"

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/16 v10, 0x11

    if-ne v9, v10, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    const-string v10, "enableHIPRI"

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3

    .line 776
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network :nwInfo.getType() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not TYPE_MOBILE_BIP"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :cond_3
    sget-object v9, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v9, :cond_5

    .line 781
    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 782
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 783
    .local v6, i:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 786
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 790
    .local v1, bipCon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v9, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v9

    if-nez v9, :cond_4

    move-object v2, v1

    .line 798
    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 800
    .local v2, bipclient:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    iget-object v9, v2, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/TransportLevel;->isRemoteClient()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 801
    const/4 v9, 0x0

    iput-boolean v9, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 802
    const/4 v9, 0x5

    iput-byte v9, v2, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 804
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    goto :goto_1

    .line 810
    .end local v1           #bipCon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    .end local v2           #bipclient:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    .end local v6           #i:Ljava/util/Iterator;
    :cond_5
    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    if-nez v9, :cond_7

    .line 811
    :cond_6
    const-string v9, "No BIP cmd is being processed, May not have been unregistered from NWConnectivityListener  "

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 815
    :cond_7
    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    .line 816
    .local v4, cmd:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Still processing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    goto/16 :goto_0

    .line 821
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingOpenChannel(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 824
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->nwInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cat/CatBIPManager;->continueProcessingCloseChannel(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 835
    .end local v4           #cmd:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .end local v5           #connectionState:Landroid/net/NetworkInfo$State;
    :pswitch_3
    const-string v9, "handleMessage: BIP_UICC_SERVER_STARTED"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 838
    .local v3, bipserver:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-object v9, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->isAlive()Z

    move-result v9

    if-nez v9, :cond_9

    .line 839
    iget-object v9, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->isClosed()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 840
    const-string v9, "handleMessage: BIP Server socket closed"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    const/4 v9, 0x0

    iput-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 843
    const/4 v9, 0x0

    iput-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 846
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 847
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 848
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 849
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v10, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 850
    const-string v9, "handleMessage: Filled Open Channel Terminal Response params"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 876
    :cond_8
    :goto_2
    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 877
    .local v8, termResp:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 878
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 879
    const-string v9, "handleMessage: Sending OPEN CHANNEL Terminal Response to mCatService handle"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 853
    .end local v8           #termResp:Landroid/os/Message;
    :cond_9
    const-string v9, "handleMessage: BIP Server socket opened in LISTEN state"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    const/4 v9, 0x1

    iput-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 855
    const/4 v9, 0x0

    iput-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 857
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-boolean v9, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    const/4 v11, 0x1

    if-ne v9, v11, :cond_a

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_3
    iput-object v9, v10, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 862
    iget-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    if-nez v9, :cond_b

    .line 864
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 873
    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    new-instance v10, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v10, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 874
    const-string v9, "handleMessage: Filled Open Channel Terminal Response params"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 857
    :cond_a
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 868
    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 870
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    iput v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    goto :goto_4

    .line 884
    .end local v3           #bipserver:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :pswitch_4
    const-string v9, "handleMessage: BIP_UICC_SERVER_RESTART_DONE"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 885
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 887
    .restart local v3       #bipserver:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-object v9, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->isAlive()Z

    move-result v9

    if-nez v9, :cond_d

    .line 888
    iget-object v9, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->isClosed()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 889
    const-string v9, "handleMessage: BIP Server socket closed"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 891
    const/4 v9, 0x0

    iput-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 892
    const/4 v9, 0x0

    iput-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 895
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 896
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 897
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    iput v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 898
    const-string v9, "handleMessage: Filled Terminal Response params"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    :cond_c
    :goto_5
    sget-object v9, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v10, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 915
    .restart local v8       #termResp:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 916
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 917
    const-string v9, "handleMessage: BIP_UICC_SERVER_RESTART_DONE: Sending Terminal Response to mCatService handle"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    .end local v8           #termResp:Landroid/os/Message;
    :cond_d
    const-string v9, "handleMessage: BIP Server socket opened in LISTEN State"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    const/4 v9, 0x1

    iput-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 903
    const/4 v9, 0x0

    iput-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 904
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 906
    iget-byte v9, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    if-nez v9, :cond_e

    .line 907
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 912
    :goto_6
    const-string v9, "handleMessage: Filled Terminal Response params"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 909
    :cond_e
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 910
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-byte v10, v3, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    iput v10, v9, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    goto :goto_6

    .line 922
    .end local v3           #bipserver:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :pswitch_5
    const/4 v0, 0x0

    .line 924
    .local v0, bActiveClient:Z
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 925
    .restart local v6       #i:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 926
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 928
    .restart local v1       #bipCon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v9, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v9

    if-nez v9, :cond_f

    move-object v2, v1

    .line 932
    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 933
    .restart local v2       #bipclient:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    iget-object v9, v2, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/TransportLevel;->isRemoteClient()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-boolean v9, v2, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v9, :cond_f

    .line 934
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage: BIP_CONTINUE_ADMIN_PDN: Active client - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 935
    const/4 v0, 0x1

    .line 940
    .end local v1           #bipCon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    .end local v2           #bipclient:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    :cond_10
    if-eqz v0, :cond_0

    .line 941
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connMgr:Landroid/net/ConnectivityManager;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->feature:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v7

    .line 942
    .local v7, result:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage: BIP_CONTINUE_ADMIN_PDN: Continue connection, result - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    const/4 v9, 0x1

    if-eq v9, v7, :cond_11

    if-nez v7, :cond_0

    .line 944
    :cond_11
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/CatBIPManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x7530

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 762
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 819
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V
    .locals 13
    .parameter "params"

    .prologue
    const/16 v4, 0x11

    const/4 v3, 0x0

    .line 437
    const-string v1, "handleOpenChannel"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    const/4 v10, 0x0

    .line 439
    .local v10, msg:Landroid/os/Message;
    const/4 v0, 0x0

    .line 441
    .local v0, bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    new-instance v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 442
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 444
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v3, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->channelsAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const-string v1, "Bearer type not supported"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v3, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 450
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 452
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 528
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->checkPortInUse(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 459
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/16 v2, 0x10

    iput v2, v1, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 460
    sget-object v1, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v2, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 462
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 467
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 469
    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    const-string v1, "handleOpenChannel: UICC in SERVER mode"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .end local v0           #bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/internal/telephony/cat/CatBIPServerConnection;-><init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    .line 477
    .restart local v0       #bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    const-string v1, "handleOpenChannel: Starting Thread"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->assignChannelId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 486
    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;

    invoke-direct {v3, v0, p0}, Lcom/android/internal/telephony/cat/CatBIPServerListenThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPConnection;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    move-object v1, v0

    .line 487
    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 489
    const-string v1, "handleOpenChannel: Started Thread"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    .line 491
    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    const-string v1, "handleOpenChannel: Msg Obtained"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendMessage(Landroid/os/Message;)Z

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto/16 :goto_0

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 497
    .local v12, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    .line 498
    .local v11, networkType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .end local v0           #bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget v2, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    iget-object v3, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-object v5, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-object v7, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-object v4, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v8, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v9, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/telephony/cat/CatBIPClientConnection;-><init>(Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .restart local v0       #bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    const-string v1, "Change the StrictMode for BIP client Mode"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 517
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->assignChannelId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->connection_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel Assigned  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget v1, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->currentChannel:I

    move-object v1, v0

    .line 522
    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 525
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    goto/16 :goto_0
.end method

.method public handleReceiveData(Lcom/android/internal/telephony/cat/ReceiveDataParams;)V
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 629
    const-string v5, "handleReceiveData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    iget v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    and-int/lit8 v1, v5, 0x7

    .line 631
    .local v1, cid:I
    new-instance v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 634
    sget-object v5, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 637
    .local v4, termResp:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v6, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 638
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 639
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-boolean v7, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 640
    const-string v5, "handleReceiveData: Created partial Receive Data Terminal Response"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    iget v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    const/16 v6, 0x21

    if-lt v5, v6, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    const/16 v6, 0x27

    if-le v5, v6, :cond_1

    .line 644
    :cond_0
    const-string v5, "handleReceiveData: Invalid Channel ID"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v6, 0x3

    iput v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 646
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 647
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 714
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    .line 652
    .local v0, b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    if-nez v0, :cond_2

    .line 654
    const-string v5, "handleReceiveData: No Channel available"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v7, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 656
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 657
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 662
    :cond_2
    iget-object v5, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 664
    const-string v5, "handleReceiveData: BIP Connection Found. UICC in SERVER mode"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    .line 665
    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 673
    .local v3, server:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :try_start_0
    iget-object v5, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 675
    :cond_3
    const-string v5, "handleReceiveData: socket is not available"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 679
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 681
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v2

    .line 689
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v5, "handleReceiveData: NullPointerException"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput v8, v5, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 693
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 695
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 700
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_4
    iget-byte v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->receiveDataServerMode(Lcom/android/internal/telephony/cat/CatBIPServerConnection;B)V

    .line 701
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 703
    const-string v5, "handleReceiveData: Sending Receive Data Terminal Response to mCatService handle"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    .end local v3           #server:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :cond_5
    const-string v5, "Receiving Data in Client mode"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .end local v0           #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-byte v5, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->receiveDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;I)V

    .line 710
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 711
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 712
    const-string v5, "handleReceiveData: Sending Receive Data Terminal Response to mCatService handle"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V
    .locals 6
    .parameter "params"

    .prologue
    .line 588
    const-string v4, "handleSendData"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget v4, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    and-int/lit8 v1, v4, 0x7

    .line 592
    .local v1, cid:I
    sget-object v4, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v5, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 594
    .local v3, termResp:Landroid/os/Message;
    new-instance v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 595
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iget-object v5, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 596
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v5, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 597
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 599
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatBIPManager;->displayConnectionStatus()V

    .line 601
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->getBIPConnection(I)Lcom/android/internal/telephony/cat/CatBIPConnection;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_0

    iget v4, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    const/16 v5, 0x27

    if-le v4, v5, :cond_1

    .line 603
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSendData: No Channel available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 605
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 606
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 626
    .end local v0           #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    :goto_0
    return-void

    .line 610
    .restart local v0       #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    :cond_1
    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 612
    const-string v4, "handleSendData: UICC in SERVER mode"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    .line 614
    check-cast v2, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 615
    .local v2, server:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-object v4, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    invoke-direct {p0, v2, v4, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataServerMode(Lcom/android/internal/telephony/cat/CatBIPServerConnection;[BZ)V

    .line 616
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->crnt_resp:Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 617
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 618
    const-string v4, "handleSendData: Sending Send Data Terminal Response to mCatService handle"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    .end local v2           #server:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :cond_2
    const-string v4, "handleSendData: UICC in CLIENT mode"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .end local v0           #b:Lcom/android/internal/telephony/cat/CatBIPConnection;
    iget-object v4, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V

    goto :goto_0
.end method

.method public registerPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 149
    const-string v0, "CatBIPManager phone reloaded!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 151
    return-void
.end method

.method public sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 9
    .parameter "bipcon"

    .prologue
    .line 1556
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z

    if-nez v5, :cond_0

    .line 1557
    const-string v5, "CatBIPManager"

    const-string v6, "sendChannelStatusEvent: not set"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    :goto_0
    return-void

    .line 1561
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1562
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1563
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1564
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1566
    iget v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v5, v5, 0x7

    int-to-byte v3, v5

    .line 1568
    .local v3, s:B
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 1569
    check-cast v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v5, v3

    int-to-byte v3, v5

    .line 1575
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1576
    iget-byte v5, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1578
    new-instance v1, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    const/16 v5, 0xa

    const/16 v6, 0x82

    const/16 v7, 0x81

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    .line 1583
    .local v1, env:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    sget-object v5, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v6, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1584
    .local v2, msg:Landroid/os/Message;
    const-string v5, "CatBIPManager"

    const-string v6, "sendChannelStatusEvent: Send EVENT_DOWNLOAD_CHANNEL_STATUS Envelope Message to mCatService handle"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1586
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v1           #env:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    move-object v5, p1

    .line 1571
    check-cast v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v5, :cond_1

    .line 1572
    or-int/lit16 v5, v3, 0x80

    int-to-byte v3, v5

    goto :goto_1
.end method

.method public sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 11
    .parameter "bipcon"

    .prologue
    const/16 v8, 0xff

    .line 1594
    iget-boolean v7, p0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorDataDownloadEvent:Z

    if-nez v7, :cond_0

    const-string v7, "LGT"

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1595
    const-string v7, "CatBIPManager"

    const-string v8, "sendDataAvailableEvent: not set"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    .end local p1
    :goto_0
    return-void

    .line 1600
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1602
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 1603
    .local v6, tag:I
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1604
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1606
    iget v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v7, v7, 0x7

    int-to-byte v5, v7

    .line 1607
    .local v5, s:B
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, p1

    .line 1608
    check-cast v7, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    iget-byte v7, v7, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v7, v5

    int-to-byte v5, v7

    .line 1614
    :cond_1
    :goto_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1615
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1618
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v6, v7, 0x80

    .line 1619
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1620
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1622
    const/4 v2, 0x0

    .line 1623
    .local v2, dataLength:I
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1624
    const/16 v2, 0xff

    .line 1629
    .end local p1
    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1631
    new-instance v3, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    const/16 v7, 0x9

    const/16 v8, 0x82

    const/16 v9, 0x81

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;-><init>(III[B)V

    .line 1636
    .local v3, env:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    sget-object v7, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    sget-object v8, Lcom/android/internal/telephony/cat/CatBIPManager;->mCatServicehandle:Lcom/android/internal/telephony/cat/CatService;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1637
    .local v4, msg:Landroid/os/Message;
    const-string v7, "CatBIPManager"

    const-string v8, "sendDataAvailableEvent: Send EVENT_DOWNLOAD_DATA_AVAILABLE Envelope Message to mCatService handle"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1639
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v2           #dataLength:I
    .end local v3           #env:Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
    .end local v4           #msg:Landroid/os/Message;
    .restart local p1
    :cond_2
    move-object v7, p1

    .line 1610
    check-cast v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v7, :cond_1

    .line 1611
    or-int/lit16 v7, v5, 0x80

    int-to-byte v5, v7

    goto :goto_1

    .line 1626
    .restart local v2       #dataLength:I
    :cond_3
    check-cast p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .end local p1
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 1627
    .local v1, bytesAvailable:I
    if-le v1, v8, :cond_4

    move v2, v8

    :goto_3
    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3
.end method
