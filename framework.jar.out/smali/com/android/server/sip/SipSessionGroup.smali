.class Lcom/android/server/sip/SipSessionGroup;
.super Ljava/lang/Object;
.source "SipSessionGroup.java"

# interfaces
.implements Ljavax/sip/SipListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallbackProxy;,
        Lcom/android/server/sip/SipSessionGroup$MakeCallCommand;,
        Lcom/android/server/sip/SipSessionGroup$RegisterCommand;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;,
        Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;,
        Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;
    }
.end annotation


# static fields
.field private static final ANONYMOUS:Ljava/lang/String; = "anonymous"

.field private static final CANCEL_CALL_TIMER:I = 0x3

.field private static final CONTINUE_CALL:Ljava/util/EventObject; = null

.field private static final DEBUG:Z = false

.field private static final DEBUG_PING:Z = false

.field private static final DEREGISTER:Ljava/util/EventObject; = null

.field private static final END_CALL:Ljava/util/EventObject; = null

.field private static final END_CALL_TIMER:I = 0x3

.field private static final EXPIRY_TIME:I = 0xe10

.field private static final HOLD_CALL:Ljava/util/EventObject; = null

.field private static final INCALL_KEEPALIVE_INTERVAL:I = 0xa

.field private static final KEEPALIVE_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SipSession"

.field private static final THREAD_POOL_SIZE:Ljava/lang/String; = "1"

.field private static final WAKE_LOCK_HOLDING_TIME:J = 0x1f4L


# instance fields
.field private mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private mExternalIp:Ljava/lang/String;

.field private mExternalPort:I

.field private mLocalIp:Ljava/lang/String;

.field private final mLocalProfile:Landroid/net/sip/SipProfile;

.field private final mPassword:Ljava/lang/String;

.field private mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mSipHelper:Lcom/android/server/sip/SipHelper;

.field private mSipStack:Ljavax/sip/SipStack;

.field private mWakeLock:Lcom/android/server/sip/SipWakeLock;

.field private mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Deregister"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    .line 107
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "End call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    .line 108
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Hold call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->HOLD_CALL:Ljava/util/EventObject;

    .line 109
    new-instance v0, Ljava/util/EventObject;

    const-string v1, "Continue call"

    invoke-direct {v0, v1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/sip/SipSessionGroup;->CONTINUE_CALL:Ljava/util/EventObject;

    return-void
.end method

.method public constructor <init>(Landroid/net/sip/SipProfile;Ljava/lang/String;Lcom/android/server/sip/SipWakeupTimer;Lcom/android/server/sip/SipWakeLock;)V
    .locals 1
    .parameter "profile"
    .parameter "password"
    .parameter "timer"
    .parameter "wakeLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    .line 140
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 141
    iput-object p2, p0, Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 143
    iput-object p4, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeLock:Lcom/android/server/sip/SipWakeLock;

    .line 144
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->reset()V

    .line 145
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/sip/SipSessionGroup;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/sip/SipSessionGroup;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/EventObject;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/server/sip/SipSessionGroup;->END_CALL:Ljava/util/EventObject;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/EventObject;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/server/sip/SipSessionGroup;->DEREGISTER:Ljava/util/EventObject;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/sip/SipSessionGroup;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/ResponseEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->extractExternalAddress(Ljavax/sip/ResponseEvent;)V

    return-void
.end method

.method static synthetic access$2100(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/sip/SipSessionGroup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/sip/SipSessionGroup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipWakeupTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sip/SipSessionGroup;)Lcom/android/server/sip/SipHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/sip/SipSessionGroup;Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sip/SipSessionGroup;->createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/sip/SipSessionGroup;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->log(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 6
    .parameter "newSession"

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V

    .line 299
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+++  add a session with key:  \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 304
    .local v1, k:Ljava/lang/String;
    const-string v3, "SipSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 298
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 307
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private createNewSession(Ljavax/sip/RequestEvent;Landroid/net/sip/ISipSessionListener;Ljavax/sip/ServerTransaction;I)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 3
    .parameter "event"
    .parameter "listener"
    .parameter "transaction"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    .line 427
    .local v0, newSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    iput-object p3, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    .line 428
    iput p4, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    .line 429
    iget-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mServerTransaction:Ljavax/sip/ServerTransaction;

    invoke-interface {v1}, Ljavax/sip/ServerTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mDialog:Ljavax/sip/Dialog;

    .line 430
    iput-object p1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mInviteReceived:Ljavax/sip/RequestEvent;

    .line 431
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    const-string v2, "From"

    invoke-interface {v1, v2}, Ljavax/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/HeaderAddress;

    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerProfile:Landroid/net/sip/SipProfile;

    .line 433
    invoke-virtual {p1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipSessionGroup;->extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mPeerSessionDescription:Ljava/lang/String;

    .line 435
    return-object v0
.end method

.method private static createPeerProfile(Ljavax/sip/header/HeaderAddress;)Landroid/net/sip/SipProfile;
    .locals 8
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1692
    :try_start_0
    invoke-interface {p0}, Ljavax/sip/header/HeaderAddress;->getAddress()Ljavax/sip/address/Address;

    move-result-object v0

    .line 1693
    .local v0, address:Ljavax/sip/address/Address;
    invoke-interface {v0}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v4

    check-cast v4, Ljavax/sip/address/SipURI;

    .line 1694
    .local v4, uri:Ljavax/sip/address/SipURI;
    invoke-interface {v4}, Ljavax/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v5

    .line 1695
    .local v5, username:Ljava/lang/String;
    if-nez v5, :cond_0

    const-string v5, "anonymous"

    .line 1696
    :cond_0
    invoke-interface {v4}, Ljavax/sip/address/SipURI;->getPort()I

    move-result v3

    .line 1697
    .local v3, port:I
    new-instance v6, Landroid/net/sip/SipProfile$Builder;

    invoke-interface {v4}, Ljavax/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/sip/address/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v1

    .line 1700
    .local v1, builder:Landroid/net/sip/SipProfile$Builder;
    if-lez v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    .line 1701
    :cond_1
    invoke-virtual {v1}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    return-object v6

    .line 1702
    .end local v0           #address:Ljavax/sip/address/Address;
    .end local v1           #builder:Landroid/net/sip/SipProfile$Builder;
    .end local v3           #port:I
    .end local v4           #uri:Ljavax/sip/address/SipURI;
    .end local v5           #username:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1703
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "createPeerProfile()"

    invoke-direct {v6, v7, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1704
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 1705
    .local v2, e:Ljava/text/ParseException;
    new-instance v6, Ljavax/sip/SipException;

    const-string v7, "createPeerProfile()"

    invoke-direct {v6, v7, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static expectResponse(ILjava/lang/String;Ljava/util/EventObject;)Z
    .locals 3
    .parameter "responseCode"
    .parameter "expectedMethod"
    .parameter "evt"

    .prologue
    .line 1679
    instance-of v2, p2, Ljavax/sip/ResponseEvent;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 1680
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1681
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1682
    .local v1, response:Ljavax/sip/message/Response;
    invoke-interface {v1}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1683
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1686
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static expectResponse(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 3
    .parameter "expectedMethod"
    .parameter "evt"

    .prologue
    .line 1665
    instance-of v2, p1, Ljavax/sip/ResponseEvent;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1666
    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 1667
    .local v0, event:Ljavax/sip/ResponseEvent;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 1668
    .local v1, response:Ljavax/sip/message/Response;
    invoke-static {v1}, Lcom/android/server/sip/SipSessionGroup;->getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 1670
    .end local v0           #event:Ljavax/sip/ResponseEvent;
    .end local v1           #response:Ljavax/sip/message/Response;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private extractContent(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 3
    .parameter "message"

    .prologue
    .line 383
    invoke-interface {p1}, Ljavax/sip/message/Message;->getRawContent()[B

    move-result-object v0

    .line 384
    .local v0, bytes:[B
    if-eqz v0, :cond_1

    .line 386
    :try_start_0
    instance-of v1, p1, Lgov/nist/javax/sip/message/SIPMessage;

    if-eqz v1, :cond_0

    .line 387
    check-cast p1, Lgov/nist/javax/sip/message/SIPMessage;

    .end local p1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v1

    .line 394
    :goto_0
    return-object v1

    .line 389
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local p1
    :catch_0
    move-exception v1

    .line 394
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private extractExternalAddress(Ljavax/sip/ResponseEvent;)V
    .locals 5
    .parameter "evt"

    .prologue
    .line 398
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    .line 399
    .local v1, response:Ljavax/sip/message/Response;
    const-string v4, "Via"

    invoke-interface {v1, v4}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax/sip/header/ViaHeader;

    move-object v3, v4

    check-cast v3, Ljavax/sip/header/ViaHeader;

    .line 401
    .local v3, viaHeader:Ljavax/sip/header/ViaHeader;
    if-nez v3, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->getRPort()I

    move-result v2

    .line 403
    .local v2, rport:I
    invoke-interface {v3}, Ljavax/sip/header/ViaHeader;->getReceived()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, externalIp:Ljava/lang/String;
    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 405
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    .line 406
    iput v2, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I

    goto :goto_0
.end method

.method private static getCseqMethod(Ljavax/sip/message/Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 1656
    const-string v0, "CSeq"

    invoke-interface {p0, v0}, Ljavax/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/CSeqHeader;

    invoke-interface {v0}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .parameter "exception"

    .prologue
    .line 415
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 416
    .local v0, cause:Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 417
    move-object p1, v0

    .line 418
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_0
    return-object p1
.end method

.method private declared-synchronized getSipSession(Ljava/util/EventObject;)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .locals 7
    .parameter "event"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/sip/SipHelper;->getCallId(Ljava/util/EventObject;)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 287
    .local v3, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "session key from event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v4, "SipSession"

    const-string v5, "active sessions:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, k:Ljava/lang/String;
    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #k:Ljava/lang/String;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 294
    .restart local v2       #key:Ljava/lang/String;
    .restart local v3       #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_0
    if-eqz v3, :cond_1

    .end local v3           #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :goto_1
    monitor-exit p0

    return-object v3

    .restart local v3       #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getStackName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z
    .locals 2
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 1710
    if-eqz p0, :cond_0

    .line 1711
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1716
    :cond_0
    :pswitch_0
    return v1

    .line 1711
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private static isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z
    .locals 4
    .parameter "s"
    .parameter "evt"

    .prologue
    const/4 v3, 0x0

    .line 1724
    invoke-static {p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1739
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 1725
    .restart local p1
    :cond_1
    if-eqz p1, :cond_0

    .line 1727
    instance-of v1, p1, Ljavax/sip/ResponseEvent;

    if-eqz v1, :cond_2

    .line 1728
    check-cast p1, Ljavax/sip/ResponseEvent;

    .end local p1
    invoke-virtual {p1}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    .line 1729
    .local v0, response:Ljavax/sip/message/Response;
    const-string v1, "OPTIONS"

    const-string v2, "CSeq"

    invoke-interface {v0, v2}, Ljavax/sip/message/Response;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1733
    .end local v0           #response:Ljavax/sip/message/Response;
    .restart local p1
    :cond_2
    instance-of v1, p1, Ljavax/sip/RequestEvent;

    if-eqz v1, :cond_0

    .line 1734
    const-string v1, "OPTIONS"

    invoke-static {v1, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private static isLoggable(Ljava/util/EventObject;)Z
    .locals 1
    .parameter "evt"

    .prologue
    .line 1720
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v0

    return v0
.end method

.method private static isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z
    .locals 3
    .parameter "method"
    .parameter "event"

    .prologue
    .line 1646
    :try_start_0
    instance-of v2, p1, Ljavax/sip/RequestEvent;

    if-eqz v2, :cond_0

    .line 1647
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    move-object v1, v0

    .line 1648
    .local v1, requestEvent:Ljavax/sip/RequestEvent;
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1652
    .end local v1           #requestEvent:Ljavax/sip/RequestEvent;
    :goto_0
    return v2

    .line 1650
    :catch_0
    move-exception v2

    .line 1652
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/util/EventObject;)Ljava/lang/String;
    .locals 1
    .parameter "evt"

    .prologue
    .line 1743
    instance-of v0, p0, Ljavax/sip/RequestEvent;

    if-eqz v0, :cond_0

    .line 1744
    check-cast p0, Ljavax/sip/RequestEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1748
    .restart local p0
    :goto_0
    return-object v0

    .line 1745
    :cond_0
    instance-of v0, p0, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_1

    .line 1746
    check-cast p0, Ljavax/sip/ResponseEvent;

    .end local p0
    invoke-virtual {p0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1748
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/util/EventObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized process(Ljava/util/EventObject;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->getSipSession(Ljava/util/EventObject;)Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 369
    .local v3, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_start_1
    invoke-static {v3, p1}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/util/EventObject;)Z

    move-result v1

    .line 370
    .local v1, isLoggable:Z
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->process(Ljava/util/EventObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 371
    .local v2, processed:Z
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 372
    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "new state after: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->mState:I

    invoke-static {v6}, Landroid/net/sip/SipSession$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 379
    .end local v1           #isLoggable:Z
    .end local v2           #processed:Z
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 370
    .restart local v1       #isLoggable:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 375
    .end local v1           #isLoggable:Z
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "SipSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event process error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipSessionGroup;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(Ljava/lang/Throwable;)V
    invoke-static {v3, v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$100(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 367
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v3           #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized removeSipSession(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 8
    .parameter "session"

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v5, :cond_1

    .line 333
    :cond_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 314
    .local v4, s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    if-eqz v4, :cond_3

    if-eq v4, p1, :cond_3

    .line 315
    const-string v5, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not associated with key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 320
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_2

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #key:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 322
    .restart local v3       #key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 310
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 327
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_3
    if-eqz v4, :cond_0

    :try_start_2
    invoke-static {v4}, Lcom/android/server/sip/SipSessionGroup;->isLoggable(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    const-string v5, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "remove session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @key \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 330
    .local v2, k:Ljava/lang/String;
    const-string v5, "SipSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    const-string v0, "SipSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " close stack for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->onConnectivityChanged()V

    .line 249
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->closeToNotReceiveCalls()V

    .line 251
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-interface {v0}, Ljavax/sip/SipStack;->stop()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->resetExternalAddress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeToNotReceiveCalls()V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized containsSession(Ljava/lang/String;)Z
    .locals 1
    .parameter "callId"

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;
    .locals 1
    .parameter "listener"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    goto :goto_0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method public getLocalProfileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onConnectivityChanged()V
    .locals 7

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipSessionGroup;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 220
    .local v4, ss:[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 221
    .local v3, s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    const/16 v5, -0xa

    const-string v6, "data connection lost"

    #calls: Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->onError(ILjava/lang/String;)V
    invoke-static {v3, v5, v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->access$000(Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v3           #s:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 214
    .end local v0           #arr$:[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #ss:[Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized openToReceiveCalls(Landroid/net/sip/ISipSessionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionCallReceiverImpl;-><init>(Lcom/android/server/sip/SipSessionGroup;Landroid/net/sip/ISipSessionListener;)V

    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :goto_0
    monitor-exit p0

    return-void

    .line 268
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mCallReceiverSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 364
    return-void
.end method

.method public processIOException(Ljavax/sip/IOExceptionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 352
    return-void
.end method

.method public processRequest(Ljavax/sip/RequestEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 336
    const-string v0, "INVITE"

    invoke-static {v0, p1}, Lcom/android/server/sip/SipSessionGroup;->isRequestEvent(Ljava/lang/String;Ljava/util/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeLock:Lcom/android/server/sip/SipWakeLock;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(J)V

    .line 343
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 344
    return-void
.end method

.method public processResponse(Ljavax/sip/ResponseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 348
    return-void
.end method

.method public processTimeout(Ljavax/sip/TimeoutEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 356
    return-void
.end method

.method public processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipSessionGroup;->process(Ljava/util/EventObject;)V

    .line 360
    return-void
.end method

.method declared-synchronized reset()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 156
    .local v6, properties:Ljava/util/Properties;
    iget-object v12, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v12}, Landroid/net/sip/SipProfile;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, protocol:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v12}, Landroid/net/sip/SipProfile;->getPort()I

    move-result v5

    .line 158
    .local v5, port:I
    iget-object v12, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v12}, Landroid/net/sip/SipProfile;->getProxyAddress()Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, server:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 161
    const-string v12, "javax.sip.OUTBOUND_PROXY"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x3a

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    :goto_0
    const-string v12, "["

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "]"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 167
    const/4 v12, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 170
    :cond_0
    const/4 v4, 0x0

    .line 172
    .local v4, local:Ljava/lang/String;
    :try_start_1
    invoke-static {v10}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .local v0, arr$:[Ljava/net/InetAddress;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v9, v0, v2

    .line 173
    .local v9, remote:Ljava/net/InetAddress;
    new-instance v11, Ljava/net/DatagramSocket;

    invoke-direct {v11}, Ljava/net/DatagramSocket;-><init>()V

    .line 174
    .local v11, socket:Ljava/net/DatagramSocket;
    invoke-virtual {v11, v9, v5}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 175
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 176
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v5

    .line 178
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 186
    .end local v0           #arr$:[Ljava/net/InetAddress;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v9           #remote:Ljava/net/InetAddress;
    .end local v11           #socket:Ljava/net/DatagramSocket;
    :cond_1
    :goto_2
    if-nez v4, :cond_4

    .line 211
    :goto_3
    monitor-exit p0

    return-void

    .line 164
    .end local v4           #local:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v12, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v12}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    goto :goto_0

    .line 181
    .restart local v0       #arr$:[Ljava/net/InetAddress;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #local:Ljava/lang/String;
    .restart local v9       #remote:Ljava/net/InetAddress;
    .restart local v11       #socket:Ljava/net/DatagramSocket;
    :cond_3
    :try_start_3
    invoke-virtual {v11}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 191
    .end local v0           #arr$:[Ljava/net/InetAddress;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v9           #remote:Ljava/net/InetAddress;
    .end local v11           #socket:Ljava/net/DatagramSocket;
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/sip/SipSessionGroup;->close()V

    .line 192
    iput-object v4, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalIp:Ljava/lang/String;

    .line 194
    const-string v12, "javax.sip.STACK_NAME"

    invoke-direct {p0}, Lcom/android/server/sip/SipSessionGroup;->getStackName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    const-string v12, "gov.nist.javax.sip.THREAD_POOL_SIZE"

    const-string v13, "1"

    invoke-virtual {v6, v12, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 197
    invoke-static {}, Ljavax/sip/SipFactory;->getInstance()Ljavax/sip/SipFactory;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljavax/sip/SipFactory;->createSipStack(Ljava/util/Properties;)Ljavax/sip/SipStack;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    :try_start_5
    iget-object v12, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    iget-object v13, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-interface {v13, v4, v5, v7}, Ljavax/sip/SipStack;->createListeningPoint(Ljava/lang/String;ILjava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v13

    invoke-interface {v12, v13}, Ljavax/sip/SipStack;->createSipProvider(Ljavax/sip/ListeningPoint;)Ljavax/sip/SipProvider;

    move-result-object v8

    .line 201
    .local v8, provider:Ljavax/sip/SipProvider;
    invoke-interface {v8, p0}, Ljavax/sip/SipProvider;->addSipListener(Ljavax/sip/SipListener;)V

    .line 202
    new-instance v12, Lcom/android/server/sip/SipHelper;

    iget-object v13, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-direct {v12, v13, v8}, Lcom/android/server/sip/SipHelper;-><init>(Ljavax/sip/SipStack;Ljavax/sip/SipProvider;)V

    iput-object v12, p0, Lcom/android/server/sip/SipSessionGroup;->mSipHelper:Lcom/android/server/sip/SipHelper;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljavax/sip/SipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 209
    :try_start_6
    const-string v12, "SipSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " start stack for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/sip/SipSessionGroup;->mLocalProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v14}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v12, p0, Lcom/android/server/sip/SipSessionGroup;->mSipStack:Ljavax/sip/SipStack;

    invoke-interface {v12}, Ljavax/sip/SipStack;->start()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 154
    .end local v4           #local:Ljava/lang/String;
    .end local v5           #port:I
    .end local v6           #properties:Ljava/util/Properties;
    .end local v7           #protocol:Ljava/lang/String;
    .end local v8           #provider:Ljavax/sip/SipProvider;
    .end local v10           #server:Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 203
    .restart local v4       #local:Ljava/lang/String;
    .restart local v5       #port:I
    .restart local v6       #properties:Ljava/util/Properties;
    .restart local v7       #protocol:Ljava/lang/String;
    .restart local v10       #server:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Ljavax/sip/SipException;
    :try_start_7
    throw v1

    .line 205
    .end local v1           #e:Ljavax/sip/SipException;
    :catch_1
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    new-instance v12, Ljavax/sip/SipException;

    const-string v13, "failed to initialize SIP stack"

    invoke-direct {v12, v13, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 183
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v12

    goto :goto_2
.end method

.method declared-synchronized resetExternalAddress()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalIp:Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipSessionGroup;->mExternalPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setWakeupTimer(Lcom/android/server/sip/SipWakeupTimer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup;->mWakeupTimer:Lcom/android/server/sip/SipWakeupTimer;

    .line 151
    return-void
.end method
