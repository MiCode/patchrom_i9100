.class public Lcom/samsung/commonimsservice/SamsungAPCommonService;
.super Ljava/lang/Object;
.source "SamsungAPCommonService.java"

# interfaces
.implements Lcom/samsung/commonimsservice/ICommonIMSService;


# static fields
.field private static final DBG:Z = true

.field private static final IMS_CALL_END_CALL_NW_HANDOVER:I = 0x4

.field public static final IMS_CALL_LOW_BATTERY:I = 0x6

.field private static final IMS_CALL_NORMAL_DISCONNECT:I = 0x5

.field public static final IMS_CONN_ACTION:Ljava/lang/String; = "com.sec.android.ims.IMSService"

.field private static final IMS_SVC_USER_REJECT_REASON_USR_BUSY:I = 0x2

.field private static final IMS_SVC_USER_REJECT_REASON_USR_DECLINE:I = 0x3

.field public static final IMS_USER_REJECT_REASON_USR_BUSY_CS_CALL:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungAPCommonService"

.field private static final MMTELSVCHDL:I = 0x0

.field private static final MSG_IMS_SERVICE_CONNECTED:I = 0x65

.field private static final MSG_IMS_SERVICE_DISCONNECTED:I = 0x66

.field private static final SIPURI_TYPE:Ljava/lang/String; = "0"

.field private static final SIPURI_VAL:I = 0x1

.field private static final SMS_SIP_SIPURI_PREFIX:Ljava/lang/String; = "sipuriprefix"

.field private static final SMS_SIP_URI_TYPE:Ljava/lang/String; = "uritype"

.field private static final TELURI_TYPE:Ljava/lang/String; = "1"

.field private static final TELURI_VAL:I = 0x3


# instance fields
.field private H:Landroid/os/Handler;

.field private isSpeakerOn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mIMSCallStateListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIMSRegListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IIMSRegisterStateListener;",
            ">;"
        }
    .end annotation
.end field

.field mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

.field private mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

.field private mMuted:Z

.field private final mServiceConnectionListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/commonimsservice/IImsServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/samsung/commonimsservice/ImsParams;

.field private regExpiry:I

.field private regUri:Ljava/lang/String;

.field private registrationStatus:Z

.field private serviceConnStatus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    .line 55
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    .line 56
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    .line 61
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {v0}, Lcom/samsung/commonimsservice/ImsParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 67
    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    .line 170
    new-instance v0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;

    invoke-direct {v0, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    .line 102
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    .line 103
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->createSipService()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceConnected()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceDisconnected()V

    return-void
.end method

.method static synthetic access$1002(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I

    return p1
.end method

.method private createSipService()V
    .locals 4

    .prologue
    .line 108
    const-string v1, "SamsungAPCommonService"

    const-string v2, "Trying to connect to ims service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ims.IMSService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    return-void
.end method

.method private getCallType(II)I
    .locals 5
    .parameter "appType"
    .parameter "subType"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x6

    .line 2174
    const/4 v0, -0x1

    .line 2176
    .local v0, callType:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2178
    if-ne p1, v4, :cond_6

    .line 2179
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 2180
    const/4 v0, 0x5

    .line 2198
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2200
    return v0

    .line 2181
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 2182
    const/4 v0, 0x2

    goto :goto_0

    .line 2183
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 2184
    const/4 v0, 0x1

    goto :goto_0

    .line 2185
    :cond_3
    if-ne p2, v3, :cond_4

    .line 2186
    const/4 v0, 0x7

    goto :goto_0

    .line 2187
    :cond_4
    if-ne p2, v4, :cond_5

    .line 2188
    const/16 v0, 0x8

    goto :goto_0

    .line 2189
    :cond_5
    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    .line 2190
    const/16 v0, 0x9

    goto :goto_0

    .line 2192
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    .line 2193
    const/4 v0, 0x2

    goto :goto_0

    .line 2194
    :cond_7
    if-ne p1, v3, :cond_0

    .line 2195
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getDeviceSpeakerStatus()Z
    .locals 2

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside isSpeakerOn  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2160
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->isSpeakerOn:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 130
    const-string v0, "SamsungAPCommonService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private notifyConnectionListeners(Z)V
    .locals 3
    .parameter "isConnected"

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;

    .line 159
    .local v1, listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    if-eqz v1, :cond_0

    .line 160
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 157
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_1

    .line 168
    .end local v1           #listener:Lcom/samsung/commonimsservice/IImsServiceConnectionListener;
    :cond_2
    return-void
.end method

.method private onBadRequest(I)V
    .locals 4
    .parameter "sessionID"

    .prologue
    .line 2149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2150
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 2151
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v1, :cond_0

    .line 2152
    const/16 v2, 0x190

    const-string v3, "Bad Request"

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 2149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2155
    .end local v1           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_1
    return-void
.end method

.method private onCaptureSuccess(ZLjava/lang/String;)V
    .locals 6
    .parameter "isForNearEnd"
    .parameter "filename"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside onCaptureSuccess() : nearEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; filename="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1341
    if-nez p2, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1344
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    .line 1345
    .local v1, path:[Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    .line 1347
    .local v0, mimetype:[Ljava/lang/String;
    aput-object p2, v1, v4

    .line 1348
    if-eqz p1, :cond_1

    .line 1349
    const-string v2, "videocallimages/jpeg"

    aput-object v2, v0, v4

    .line 1354
    :goto_1
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/commonimsservice/SamsungAPCommonService$4;

    invoke-direct {v3, p0}, Lcom/samsung/commonimsservice/SamsungAPCommonService$4;-><init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    invoke-static {v2, v1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 1351
    :cond_1
    const-string v2, "videocallimages/jpeg-scramble"

    aput-object v2, v0, v4

    goto :goto_1
.end method

.method private onImsServiceConnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 137
    const-string v1, "NULL IMS service received!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    .line 149
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    iget-object v2, v2, Lcom/sec/android/ims/IMSEventListener;->callback:Lcom/sec/android/internal/ims/IIMSEventListener;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService;->registerListener(Lcom/sec/android/internal/ims/IIMSEventListener;I)V

    .line 141
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS event listener registration failed!!! with exception e - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    .line 147
    invoke-direct {p0, v4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    goto :goto_0
.end method

.method private onImsServiceDisconnected()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->notifyConnectionListeners(Z)V

    .line 154
    return-void
.end method

.method private setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;
    .locals 5
    .parameter "params"
    .parameter "peerUri"

    .prologue
    .line 1813
    const-string v3, "\\$"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1814
    .local v2, sCallerNos:[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 1815
    array-length v1, v2

    .line 1816
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-gt v0, v3, :cond_0

    .line 1817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {p1, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1820
    :cond_0
    const-string v3, "UriCount"

    invoke-virtual {p1, v3, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Individual Uris"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1825
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return-object p1

    .line 1823
    :cond_1
    const-string v3, "setUriListForConference returned failure"

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateMuteState(Z)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating mute state to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 2170
    iput-boolean p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mMuted:Z

    .line 2171
    return-void
.end method


# virtual methods
.method public acceptChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1628
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1629
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot accept change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1632
    :cond_0
    const/4 v0, -0x1

    .line 1633
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1634
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "accept"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xf

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    return-void

    .line 1638
    :catch_0
    move-exception v1

    .line 1639
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Accept change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addUserForConferenceCall(ILjava/lang/String;I)I
    .locals 9
    .parameter "sessionID"
    .parameter "peerUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1697
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v5, :cond_0

    .line 1698
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1700
    :cond_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sipuriprefix"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1701
    .local v4, uriPrefix:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "uritype"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1702
    .local v0, dialType:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1703
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot make call R[invalid URI ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1705
    :cond_1
    const/4 v3, -0x1

    .line 1706
    .local v3, sessid:I
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1708
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1709
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1710
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1711
    const/4 v1, 0x1

    .line 1712
    .local v1, dialTypeVal:I
    if-eqz v0, :cond_3

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1713
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1714
    const/4 v1, 0x3

    .line 1721
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DialTypeVal ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1722
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriType"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1724
    if-eqz v4, :cond_4

    .line 1725
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v5, p2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1734
    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v6, 0x15

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v8}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, p1, v8}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1738
    return v3

    .line 1716
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1719
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 1727
    :cond_4
    const-string v5, "UriPrefix is NULL"

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1728
    const-string v4, "Sip"

    .line 1729
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1735
    :catch_0
    move-exception v2

    .line 1736
    .local v2, e:Landroid/os/RemoteException;
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public answerCall(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1413
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1414
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1418
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1421
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    return-void

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public answerCallAudioOnly(I)V
    .locals 5
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1398
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call audio only R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1401
    :cond_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v1}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1402
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v2, "eVVFtrType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1404
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v4}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot answer call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2035
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2036
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot cancel call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2039
    :cond_0
    const/4 v0, -0x1

    .line 2041
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2042
    const/4 v0, 0x2

    .line 2050
    :goto_0
    const/4 v2, -0x1

    .line 2051
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    return-void

    .line 2043
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2044
    const/4 v0, 0x1

    goto :goto_0

    .line 2046
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2052
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 2053
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public captureSurfaceImage(ZI)V
    .locals 3
    .parameter "isNearEnd"
    .parameter "onGoingCallType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2311
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2312
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2316
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/internal/ims/IIMSService;->captureSurfaceImage(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2320
    return-void

    .line 2317
    :catch_0
    move-exception v0

    .line 2318
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot captureSurfaceEndImage"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public changeCall(III)V
    .locals 4
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 2130
    if-ne p3, v3, :cond_2

    .line 2131
    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v2, :cond_1

    .line 2133
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    .line 2146
    :cond_1
    :goto_0
    return-void

    .line 2134
    :cond_2
    if-eq p3, v1, :cond_3

    if-ne p3, v2, :cond_5

    .line 2135
    :cond_3
    if-ne p2, v0, :cond_4

    .line 2136
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->downgradeCall(III)V

    goto :goto_0

    .line 2137
    :cond_4
    if-ne p2, v3, :cond_1

    .line 2138
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0

    .line 2140
    :cond_5
    if-ne p3, v0, :cond_1

    .line 2141
    if-eq p2, v1, :cond_6

    if-eq p2, v2, :cond_6

    if-ne p2, v3, :cond_1

    .line 2143
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->upgradeCall(III)V

    goto :goto_0
.end method

.method public continueVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1543
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1544
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue video R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1547
    :cond_0
    const/4 v1, -0x1

    .line 1548
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1549
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1552
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1557
    return-void

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public deRegisterForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing call state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2242
    :cond_0
    return-void
.end method

.method public deRegisterForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing register state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2248
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2250
    :cond_0
    return-void
.end method

.method public deRegisterForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 2253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeRegistering for connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2254
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing connection state change listener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2256
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2258
    :cond_0
    return-void
.end method

.method public deinitSurface(Z)V
    .locals 3
    .parameter "isNearEnd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2325
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2326
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2330
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->deinitSurface(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2334
    return-void

    .line 2331
    :catch_0
    move-exception v0

    .line 2332
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot deinitSurface"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public downgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "currentType"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    .line 2059
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2060
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2063
    :cond_0
    const/4 v2, -0x1

    .line 2064
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 2065
    .local v0, appType:I
    if-ne p3, v5, :cond_1

    if-ne p2, v4, :cond_1

    .line 2066
    const/4 v0, 0x1

    .line 2077
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2078
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2080
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2084
    return-void

    .line 2067
    :cond_1
    if-ne p3, v5, :cond_2

    if-ne p2, v6, :cond_2

    .line 2068
    const/4 v0, 0x3

    goto :goto_0

    .line 2069
    :cond_2
    if-ne p3, v6, :cond_3

    if-ne p2, v4, :cond_3

    .line 2070
    const/4 v0, 0x4

    goto :goto_0

    .line 2071
    :cond_3
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    if-ne p2, v4, :cond_4

    .line 2072
    const/4 v0, 0x4

    goto :goto_0

    .line 2074
    :cond_4
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Down grade is not allowed"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2081
    :catch_0
    move-exception v1

    .line 2082
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot downgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2009
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2010
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2013
    :cond_0
    const/4 v0, -0x1

    .line 2015
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 2016
    const/4 v0, 0x2

    .line 2023
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2024
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2027
    const/4 v2, -0x1

    .line 2028
    .local v2, svcRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    return-void

    .line 2017
    .end local v2           #svcRet:I
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 2018
    const/4 v0, 0x1

    goto :goto_0

    .line 2020
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 2029
    .restart local v2       #svcRet:I
    :catch_0
    move-exception v1

    .line 2030
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end the call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public endCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1931
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1932
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot end call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1935
    :cond_0
    const/4 v2, -0x1

    .line 1936
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1938
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 1939
    const/4 v0, 0x2

    .line 1946
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1948
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 1949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1950
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1958
    :cond_1
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    return-void

    .line 1940
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1941
    const/4 v0, 0x1

    goto :goto_0

    .line 1943
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1952
    :cond_4
    const/4 v3, 0x6

    if-ne p3, v3, :cond_1

    .line 1953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End Call due to reason IMS_CALL_LOW_BATTERY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1954
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eDisconnectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 1960
    :catch_0
    move-exception v1

    .line 1961
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t end call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCurrentLatchedNetwork()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2337
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 2338
    const-string v2, "Ims interface is null !!"

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2346
    :goto_0
    return-object v1

    .line 2343
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->getCurrentLatchedNetwork()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 2344
    :catch_0
    move-exception v0

    .line 2345
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxVolume(I)I
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public holdCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1363
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1364
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1367
    :cond_0
    const/4 v1, -0x1

    .line 1368
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1369
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1371
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    return-void

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public holdVideo(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1526
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1527
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1530
    :cond_0
    const/4 v1, -0x1

    .line 1531
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1532
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1534
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xe

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    return-void

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot hold call: Service Not Up"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isDeviceOnEHRPD()Z
    .locals 3

    .prologue
    .line 1870
    const/4 v1, 0x0

    .line 1871
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 1873
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnEHRPD()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1879
    :cond_0
    :goto_0
    return v1

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1876
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceOnLTE()Z
    .locals 3

    .prologue
    .line 1857
    const/4 v1, 0x0

    .line 1858
    .local v1, ret:Z
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v2, :cond_0

    .line 1860
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isOnLTE()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1866
    :cond_0
    :goto_0
    return v1

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1863
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isFrontCamInUse()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1883
    const/4 v1, 0x0

    .line 1884
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v3, :cond_0

    .line 1886
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v3}, Lcom/sec/android/internal/ims/IIMSService;->isFrontCamInUse()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1887
    .local v2, retVal:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1888
    const/4 v1, 0x1

    .line 1897
    .end local v2           #retVal:I
    :cond_0
    :goto_0
    return v1

    .line 1890
    .restart local v2       #retVal:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1892
    .end local v2           #retVal:I
    :catch_0
    move-exception v0

    .line 1893
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1894
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isIMSEnabledOnWifi()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2351
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 2352
    const-string v2, "Ims interface is null !!"

    invoke-direct {p0, v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2359
    :goto_0
    return v1

    .line 2356
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v2}, Lcom/sec/android/internal/ims/IIMSService;->isIMSEnabledOnWifi()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2357
    :catch_0
    move-exception v0

    .line 2358
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isImsForbidden()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2364
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2365
    const-string v1, "Ims interface is null !!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2366
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot check for isImsForbidden"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2369
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->isImsForbidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2370
    :catch_0
    move-exception v0

    .line 2371
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2372
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot check for isImsForbidden"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isMuted(I)Z
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMuted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public makeMediaCall(Ljava/lang/String;I)I
    .locals 11
    .parameter "peerUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v7, 0x5

    .line 1743
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v5, :cond_0

    .line 1744
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v6, "Cannot make media call R[Service Not Up]"

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1747
    :cond_0
    const/4 v3, -0x1

    .line 1749
    .local v3, sessid:I
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sipuriprefix"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1750
    .local v4, uriPrefix:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "uritype"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1751
    .local v0, dialType:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1752
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot make call R[invalid URI ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1754
    :cond_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1756
    if-ne p2, v7, :cond_3

    .line 1757
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1758
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1770
    :goto_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtDialNum"

    invoke-virtual {v5, v6, p1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    if-ne p2, v8, :cond_2

    .line 1772
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-direct {p0, v5, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->setUriListForConference(Lcom/samsung/commonimsservice/ImsParams;Ljava/lang/String;)Lcom/samsung/commonimsservice/ImsParams;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    .line 1775
    :cond_2
    const/4 v1, 0x1

    .line 1776
    .local v1, dialTypeVal:I
    if-eqz v0, :cond_7

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1777
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1778
    const/4 v1, 0x3

    .line 1785
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DialType ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] DialTypeVal ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1786
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriType"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1788
    if-eqz v4, :cond_8

    .line 1789
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    :goto_2
    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    monitor-enter v6

    .line 1798
    if-ne p2, v8, :cond_9

    .line 1799
    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v10}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1806
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    .line 1759
    .end local v1           #dialTypeVal:I
    :cond_3
    if-ne p2, v10, :cond_4

    .line 1760
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1761
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v10}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1762
    :cond_4
    if-ne p2, v8, :cond_5

    .line 1763
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    invoke-virtual {v5, v6, v9}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1764
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1766
    :cond_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "AppType"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1767
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "CallType"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1780
    .restart local v1       #dialTypeVal:I
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1783
    :cond_7
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1791
    :cond_8
    const-string v5, "UriPrefix is NULL"

    invoke-direct {p0, v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1792
    const-string v4, "Sip"

    .line 1793
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v6, "RmtUriPrefix"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1801
    :cond_9
    :try_start_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v10}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFunc(IIILjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    goto :goto_3

    .line 1803
    :catch_0
    move-exception v2

    .line 1804
    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance v5, Lcom/samsung/commonimsservice/IMSException;

    const-string v7, "Cannot make call R[Service Not Up]"

    invoke-direct {v5, v7}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1807
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public registerForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register call state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2205
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for call state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2207
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2211
    :goto_0
    return-void

    .line 2209
    :cond_0
    const-string v0, "Can\'t registered for call state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
    .locals 2
    .parameter "regListener"

    .prologue
    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register register status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2215
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for register state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2217
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2221
    :goto_0
    return-void

    .line 2219
    :cond_0
    const-string v0, "Can\'t registered for register status state change"

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
    .locals 2
    .parameter "connListener"

    .prologue
    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register connection status state change listener ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2225
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for connection state change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mServiceConnectionListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2228
    iget-boolean v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->serviceConnStatus:Z

    if-eqz v0, :cond_1

    .line 2229
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onConnected()V

    .line 2234
    :cond_0
    :goto_0
    return-void

    .line 2231
    :cond_1
    invoke-interface {p1}, Lcom/samsung/commonimsservice/IImsServiceConnectionListener;->onDisconnected()V

    goto :goto_0
.end method

.method public rejectCall(II)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1901
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1902
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1905
    :cond_0
    const/4 v2, -0x1

    .line 1906
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1908
    .local v0, callType:I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 1909
    const/4 v0, 0x2

    .line 1916
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1918
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1919
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1922
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    return-void

    .line 1910
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1911
    const/4 v0, 0x1

    goto :goto_0

    .line 1913
    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1923
    :catch_0
    move-exception v1

    .line 1924
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v5, 0x2

    .line 1967
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 1968
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot reject call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1971
    :cond_0
    const/4 v2, -0x1

    .line 1972
    .local v2, svcRet:I
    const/4 v0, -0x1

    .line 1974
    .local v0, callType:I
    if-ne p2, v5, :cond_2

    .line 1975
    const/4 v0, 0x2

    .line 1982
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1985
    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 1986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_CALL_END_CALL_NW_HANDOVER: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1987
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1998
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eVVFtrType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2001
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    return-void

    .line 1976
    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1977
    const/4 v0, 0x1

    goto :goto_0

    .line 1979
    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1989
    :cond_4
    if-ne p3, v4, :cond_5

    .line 1990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_CALL_LOW_BATTERY: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1991
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, p3}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 1993
    :cond_5
    if-eq p3, v5, :cond_6

    const/4 v3, 0x7

    if-ne p3, v3, :cond_1

    .line 1994
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reject Call due to reason IMS_SVC_USER_REJECT_REASON_USR_BUSY: reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1995
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "eRejectRsn"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    goto :goto_1

    .line 2002
    :catch_0
    move-exception v1

    .line 2003
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Can\'t reject call R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public rejectChangeRequest(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1645
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1646
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot reject change request R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1649
    :cond_0
    const/4 v0, -0x1

    .line 1650
    .local v0, callId:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1651
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "Type"

    const-string v4, "reject"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0x10

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1658
    return-void

    .line 1655
    :catch_0
    move-exception v1

    .line 1656
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Reject change request failed R[Service is not up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public resetCameraID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2261
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v1, :cond_0

    .line 2263
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->resetCameraID()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2271
    :goto_0
    return-void

    .line 2264
    :catch_0
    move-exception v0

    .line 2265
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2268
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Ims interface is null stop we can not reset camera ID now!!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeCall(I)V
    .locals 6
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1379
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v2, :cond_0

    .line 1380
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot resume call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1383
    :cond_0
    const/4 v1, -0x1

    .line 1384
    .local v1, retval:I
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v2}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1385
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "appType"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1386
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v3, "ssId"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1388
    :try_start_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v3, 0xb

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v5}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    return-void

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Lcom/samsung/commonimsservice/IMSException;

    const-string v3, "Cannot continue call R[Service Not Up]"

    invoke-direct {v2, v3}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public sendDtmf(II)Z
    .locals 7
    .parameter "sessionID"
    .parameter "code"

    .prologue
    .line 1661
    const/4 v1, 0x0

    .line 1662
    .local v1, ret:Z
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    move v2, v1

    .line 1678
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 1666
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :cond_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 1667
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "keyvalue"

    invoke-virtual {v3, v4, p2}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1668
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "KeyeventType"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 1671
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v4, 0x7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 1678
    .restart local v2       #ret:I
    goto :goto_0

    .line 1674
    .end local v2           #ret:I
    :catch_0
    move-exception v0

    .line 1675
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendLiveVideo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2298
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2299
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2303
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->sendLiveVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2307
    return-void

    .line 2304
    :catch_0
    move-exception v0

    .line 2305
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendStillImage(Ljava/lang/String;)V
    .locals 3
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2286
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2287
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2291
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->sendStillImage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2295
    return-void

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAudioMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2393
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2394
    const-string v1, "Ims interface is null !!"

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2403
    :goto_0
    return-void

    .line 2399
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setAudioMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2400
    :catch_0
    move-exception v0

    .line 2401
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutoResponse(II)V
    .locals 4
    .parameter "flag"
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1829
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1830
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set auto response R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1833
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1842
    :goto_0
    return-void

    .line 1838
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCameraOrientation(I)V
    .locals 3
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1845
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1846
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1850
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1}, Lcom/sec/android/internal/ims/IIMSService;->setOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    return-void

    .line 1851
    :catch_0
    move-exception v0

    .line 1852
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot make call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDisplay(ILandroid/view/SurfaceHolder;Ljava/lang/String;)V
    .locals 5
    .parameter "sessionID"
    .parameter "holder"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1513
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1514
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1518
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v1, v2, v3, v4, p3}, Lcom/sec/android/internal/ims/IIMSService;->startVideoRenderer(Landroid/view/Surface;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    return-void

    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Can\'t set display R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSpeakerMode(IZ)V
    .locals 1
    .parameter "sessionID"
    .parameter "speakerMode"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1510
    return-void
.end method

.method public setVolume(II)V
    .locals 3
    .parameter "sessionID"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 1560
    if-gez p2, :cond_0

    .line 1568
    :goto_0
    return-void

    .line 1562
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v0

    if-le p2, v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->getMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1565
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public startAudio(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1575
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1576
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot hold call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1580
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startAudio()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    return-void

    .line 1581
    :catch_0
    move-exception v0

    .line 1582
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start audio failed R[Service is not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCamera(IILandroid/view/SurfaceHolder;ZZLjava/lang/String;)I
    .locals 9
    .parameter "sessionID"
    .parameter "cameraID"
    .parameter "surfaceHolder"
    .parameter "isCallEstablished"
    .parameter "isConference"
    .parameter "frameSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v0, :cond_0

    .line 1431
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Cannot start camera R[Service Not Up]"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_0
    if-eqz p3, :cond_1

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-interface {p3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V

    .line 1445
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1440
    :cond_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/internal/ims/IIMSService;->startCamera(Landroid/view/Surface;IIIZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1441
    :catch_0
    move-exception v8

    .line 1442
    .local v8, e:Landroid/os/RemoteException;
    new-instance v0, Lcom/samsung/commonimsservice/IMSException;

    const-string v1, "Camera cannot be acquired"

    invoke-direct {v0, v1}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startMedia(I)V
    .locals 0
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1601
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startAudio(I)V

    .line 1602
    invoke-virtual {p0, p1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->startVideo(I)V

    .line 1603
    return-void
.end method

.method public startVideo(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1588
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1589
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1593
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->startVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    return-void

    .line 1594
    :catch_0
    move-exception v0

    .line 1595
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Start video failed R[Service not up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopCamera(I)I
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1682
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1683
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot stop camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1687
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->stopCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    const/4 v1, 0x0

    return v1

    .line 1688
    :catch_0
    move-exception v0

    .line 1689
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1690
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera not stopped"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public swapVideoSurface(I)V
    .locals 3
    .parameter "sessionID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 2274
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2275
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot swipe video surface R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2279
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->swapVideoSurface()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    return-void

    .line 2280
    :catch_0
    move-exception v0

    .line 2281
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public switchCamera()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1464
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1465
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot switch camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1469
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    return-void

    .line 1470
    :catch_0
    move-exception v0

    .line 1471
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toggleMute(I)V
    .locals 2
    .parameter "sessionID"

    .prologue
    .line 1614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle mute before = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1616
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 1623
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toggle mute after = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 1625
    return-void

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto :goto_0
.end method

.method public upgradeCall(III)V
    .locals 7
    .parameter "sessionID"
    .parameter "type"
    .parameter "newType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 2088
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v3, :cond_0

    .line 2089
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2092
    :cond_0
    const/4 v2, -0x1

    .line 2093
    .local v2, svcId:I
    const/4 v0, -0x1

    .line 2095
    .local v0, appType:I
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v3}, Lcom/samsung/commonimsservice/ImsParams;->clearAll()V

    .line 2097
    const/4 v3, 0x5

    if-ne v3, p3, :cond_3

    .line 2098
    if-ne v4, p2, :cond_2

    .line 2099
    const/4 v0, 0x5

    .line 2104
    :goto_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2106
    :try_start_0
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0xe

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2126
    :cond_1
    :goto_1
    return-void

    .line 2101
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2107
    :catch_0
    move-exception v1

    .line 2108
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Upgrade failed R[Service is not up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2110
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    if-ne p3, v4, :cond_1

    .line 2112
    if-ne v4, p2, :cond_4

    .line 2113
    const/4 v0, 0x7

    .line 2117
    :goto_2
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    const-string v4, "appType"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/commonimsservice/ImsParams;->set(Ljava/lang/String;I)V

    .line 2120
    :try_start_1
    iget-object v3, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    const/16 v4, 0x13

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->params:Lcom/samsung/commonimsservice/ImsParams;

    invoke-virtual {v6}, Lcom/samsung/commonimsservice/ImsParams;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, p1, v6}, Lcom/sec/android/internal/ims/IIMSService;->mmTelSvcCallFuncAsync(IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2121
    :catch_1
    move-exception v1

    .line 2122
    .restart local v1       #e:Landroid/os/RemoteException;
    new-instance v3, Lcom/samsung/commonimsservice/IMSException;

    const-string v4, "Cannot upgrade call R[Service Not Up]"

    invoke-direct {v3, v4}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2115
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public voiceRecord(IILjava/lang/String;)V
    .locals 3
    .parameter "command"
    .parameter "sessionID"
    .parameter "mFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 1451
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Cannot start camera R[Service Not Up]"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1454
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p3}, Lcom/sec/android/internal/ims/IIMSService;->voiceRecord(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    return-void

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Lcom/samsung/commonimsservice/IMSException;

    const-string v2, "Camera cannot be acquired"

    invoke-direct {v1, v2}, Lcom/samsung/commonimsservice/IMSException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "errorString"

    .prologue
    .line 2378
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    if-nez v1, :cond_0

    .line 2391
    :goto_0
    return-void

    .line 2385
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ims interface is writeErrorData... !!errorCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...errorString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V

    .line 2386
    iget-object v1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/internal/ims/IIMSService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2387
    :catch_0
    move-exception v0

    .line 2389
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
