.class public final Landroid/net/DnsPinger;
.super Landroid/os/Handler;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsPinger$1;,
        Landroid/net/DnsPinger$DnsArg;,
        Landroid/net/DnsPinger$ActivePing;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x50003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x50002

.field private static final ACTION_PING_DNS:I = 0x50001

.field private static final BASE:I = 0x50000

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final DNS_PING_RESULT:I = 0x50000

.field private static final DNS_PORT:I = 0x35

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static final mDnsQuery:[B

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/DnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionType:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mEventCounter:I

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 343
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/DnsPinger;->mDnsQuery:[B

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x77t
        0x77t
        0x77t
        0x6t
        0x67t
        0x6ft
        0x6ft
        0x67t
        0x6ct
        0x65t
        0x3t
        0x63t
        0x6ft
        0x6dt
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V
    .locals 3
    .parameter "context"
    .parameter "TAG"
    .parameter "looper"
    .parameter "target"
    .parameter "connectionType"

    .prologue
    .line 123
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    .line 124
    iput-object p2, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    .line 126
    iput-object p4, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    .line 127
    iput p5, p0, Landroid/net/DnsPinger;->mConnectionType:I

    .line 128
    invoke-static {p5}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid connectionType in constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/net/DnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/DnsPinger;->mEventCounter:I

    .line 135
    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 325
    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 4

    .prologue
    .line 329
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, dns:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 332
    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 339
    :goto_0
    return-object v2

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "getDefaultDns::malformed default dns address"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 339
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 359
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 363
    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method private sendResponse(III)V
    .locals 2
    .parameter "internalId"
    .parameter "externalId"
    .parameter "responseVal"

    .prologue
    .line 311
    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 316
    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const/high16 v1, 0x5

    invoke-virtual {p0, v1, p1, p3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    return-void
.end method


# virtual methods
.method public cancelPings()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 307
    const v0, 0x50003

    invoke-virtual {p0, v0}, Landroid/net/DnsPinger;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    return-void
.end method

.method public getDnsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 277
    .local v0, curLinkProps:Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurLinkProperties:: LP for type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 279
    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    .line 288
    :goto_0
    return-object v2

    .line 282
    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    .line 283
    .local v1, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 284
    :cond_1
    const-string v2, "getDns::LinkProps has null dns - returning default"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    goto :goto_0

    .line 288
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 139
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 141
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/DnsPinger$DnsArg;

    .line 142
    .local v7, dnsArg:Landroid/net/DnsPinger$DnsArg;
    iget v15, v7, Landroid/net/DnsPinger$DnsArg;->seq:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 146
    :try_start_0
    new-instance v11, Landroid/net/DnsPinger$ActivePing;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v15}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$1;)V

    .line 147
    .local v11, newActivePing:Landroid/net/DnsPinger$ActivePing;
    iget-object v6, v7, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 148
    .local v6, dnsAddress:Ljava/net/InetAddress;
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    iput v15, v11, Landroid/net/DnsPinger$ActivePing;->internalId:I

    .line 149
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    iput v15, v11, Landroid/net/DnsPinger$ActivePing;->timeout:I

    .line 150
    new-instance v15, Ljava/net/DatagramSocket;

    invoke-direct {v15}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v15, v11, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    .line 152
    iget-object v15, v11, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :try_start_1
    iget-object v15, v11, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :goto_1
    :try_start_2
    sget-object v15, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v15}, Ljava/util/Random;->nextInt()I

    move-result v15

    int-to-short v15, v15

    iput-short v15, v11, Landroid/net/DnsPinger$ActivePing;->packetId:S

    .line 163
    sget-object v15, Landroid/net/DnsPinger;->mDnsQuery:[B

    invoke-virtual {v15}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 164
    .local v4, buf:[B
    const/4 v15, 0x0

    iget-short v0, v11, Landroid/net/DnsPinger$ActivePing;->packetId:S

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v4, v15

    .line 165
    const/4 v15, 0x1

    iget-short v0, v11, Landroid/net/DnsPinger$ActivePing;->packetId:S

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v4, v15

    .line 168
    new-instance v12, Ljava/net/DatagramPacket;

    array-length v15, v4

    const/16 v16, 0x35

    move/from16 v0, v16

    invoke-direct {v12, v4, v15, v6, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 170
    .local v12, packet:Ljava/net/DatagramPacket;
    sget-boolean v15, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v15, :cond_1

    .line 171
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sending a ping "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/net/DnsPinger$ActivePing;->internalId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " with packetId "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-short v0, v11, Landroid/net/DnsPinger$ActivePing;->packetId:S

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 176
    :cond_1
    iget-object v15, v11, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v15, v12}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/DnsPinger;->mEventCounter:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/DnsPinger;->mEventCounter:I

    .line 179
    const v15, 0x50002

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/DnsPinger;->mEventCounter:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0xc8

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 181
    .end local v4           #buf:[B
    .end local v6           #dnsAddress:Ljava/net/InetAddress;
    .end local v11           #newActivePing:Landroid/net/DnsPinger$ActivePing;
    .end local v12           #packet:Ljava/net/DatagramPacket;
    :catch_0
    move-exception v8

    .line 182
    .local v8, e:Ljava/io/IOException;
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/16 v16, -0x270f

    const/16 v17, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto/16 :goto_0

    .line 158
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #dnsAddress:Ljava/net/InetAddress;
    .restart local v11       #newActivePing:Landroid/net/DnsPinger$ActivePing;
    :catch_1
    move-exception v8

    .line 159
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sendDnsPing::Error binding to socket "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 186
    .end local v6           #dnsAddress:Ljava/net/InetAddress;
    .end local v7           #dnsArg:Landroid/net/DnsPinger$DnsArg;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #newActivePing:Landroid/net/DnsPinger$ActivePing;
    :pswitch_1
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/DnsPinger;->mEventCounter:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/DnsPinger$ActivePing;

    .line 199
    .local v5, curPing:Landroid/net/DnsPinger$ActivePing;
    const/4 v15, 0x2

    :try_start_4
    new-array v14, v15, [B

    .line 200
    .local v14, responseBuf:[B
    new-instance v13, Ljava/net/DatagramPacket;

    const/4 v15, 0x2

    invoke-direct {v13, v14, v15}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 203
    .local v13, replyPacket:Ljava/net/DatagramPacket;
    iget-object v15, v5, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v15, v13}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 205
    const/4 v15, 0x0

    aget-byte v15, v14, v15

    iget-short v0, v5, Landroid/net/DnsPinger$ActivePing;->packetId:S

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v15, 0x1

    aget-byte v15, v14, v15

    iget-short v0, v5, Landroid/net/DnsPinger$ActivePing;->packetId:S

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    iget-wide v0, v5, Landroid/net/DnsPinger$ActivePing;->start:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    long-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v5, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_2

    .line 234
    .end local v13           #replyPacket:Ljava/net/DatagramPacket;
    .end local v14           #responseBuf:[B
    :catch_2
    move-exception v15

    goto :goto_2

    .line 230
    .restart local v13       #replyPacket:Ljava/net/DatagramPacket;
    .restart local v14       #responseBuf:[B
    :cond_3
    sget-boolean v15, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v15, :cond_2

    .line 231
    const-string v15, "response ID didn\'t match, ignoring packet"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 236
    .end local v13           #replyPacket:Ljava/net/DatagramPacket;
    .end local v14           #responseBuf:[B
    :catch_3
    move-exception v8

    .line 237
    .restart local v8       #e:Ljava/lang/Exception;
    sget-boolean v15, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v15, :cond_4

    .line 238
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DnsPinger.pingDns got socket exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    .line 240
    :cond_4
    const/4 v15, -0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v5, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_2

    .line 243
    .end local v5           #curPing:Landroid/net/DnsPinger$ActivePing;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 244
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :cond_6
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 245
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/DnsPinger$ActivePing;

    .line 246
    .restart local v5       #curPing:Landroid/net/DnsPinger$ActivePing;
    iget-object v15, v5, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    if-eqz v15, :cond_7

    .line 247
    iget v15, v5, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v0, v5, Landroid/net/DnsPinger$ActivePing;->packetId:S

    move/from16 v16, v0

    iget-object v0, v5, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/net/DnsPinger;->sendResponse(III)V

    .line 248
    iget-object v15, v5, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v15}, Ljava/net/DatagramSocket;->close()V

    .line 249
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 250
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    iget-wide v0, v5, Landroid/net/DnsPinger$ActivePing;->start:J

    move-wide/from16 v17, v0

    iget v0, v5, Landroid/net/DnsPinger$ActivePing;->timeout:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    cmp-long v15, v15, v17

    if-lez v15, :cond_6

    .line 252
    iget v15, v5, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v0, v5, Landroid/net/DnsPinger$ActivePing;->packetId:S

    move/from16 v16, v0

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/net/DnsPinger;->sendResponse(III)V

    .line 253
    iget-object v15, v5, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v15}, Ljava/net/DatagramSocket;->close()V

    .line 254
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 257
    .end local v5           #curPing:Landroid/net/DnsPinger$ActivePing;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 258
    const v15, 0x50002

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/DnsPinger;->mEventCounter:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v15, v1, v2}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0xc8

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 263
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/DnsPinger$ActivePing;>;"
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/DnsPinger$ActivePing;

    .line 264
    .local v3, activePing:Landroid/net/DnsPinger$ActivePing;
    iget-object v15, v3, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v15}, Ljava/net/DatagramSocket;->close()V

    goto :goto_4

    .line 265
    .end local v3           #activePing:Landroid/net/DnsPinger$ActivePing;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x50001
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .locals 4
    .parameter "dns"
    .parameter "timeout"
    .parameter "delay"

    .prologue
    .line 299
    sget-object v1, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 300
    .local v0, id:I
    const v1, 0x50001

    new-instance v2, Landroid/net/DnsPinger$DnsArg;

    iget-object v3, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, p1, v3}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    return v0
.end method
