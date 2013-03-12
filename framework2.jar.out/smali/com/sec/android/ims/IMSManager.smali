.class public Lcom/sec/android/ims/IMSManager;
.super Landroid/os/Handler;
.source "IMSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/ims/IMSManager$ManagerHandler;,
        Lcom/sec/android/ims/IMSManager$ServiceSender;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field protected static final EVENT_REGISTER:I = 0x1

.field protected static final EVENT_REGISTER_ISIM:I = 0x2

.field protected static final EVENT_REGISTER_LISTENER:I = 0x5

.field protected static final EVENT_UNREGISTER:I = 0x3

.field protected static final EVENT_UNREGISTER_ISIM:I = 0x4

.field protected static final EVENT_UNREGISTER_LISTENER:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "IMSManager"

.field public static final PROPERTY_IMS_MODE:Ljava/lang/String; = "persist.sys.ims.mode"

.field public static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.sys.ims.reg"

.field private static imsManager:Lcom/sec/android/ims/IMSManager;


# instance fields
.field private events:I

.field private isIt3gNetwork:Z

.field private isimResponse:[B

.field private listener:Lcom/sec/android/ims/IMSEventListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

.field private mService:Lcom/sec/android/internal/ims/IIMSService;

.field mServiceSender:Lcom/sec/android/ims/IMSManager$ServiceSender;

.field mServiceSenderThread:Ljava/lang/Thread;

.field private pcscfAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/ims/IMSManager;->imsManager:Lcom/sec/android/ims/IMSManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 267
    new-instance v1, Lcom/sec/android/ims/IMSManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/ims/IMSManager$1;-><init>(Lcom/sec/android/ims/IMSManager;)V

    iput-object v1, p0, Lcom/sec/android/ims/IMSManager;->mConnection:Landroid/content/ServiceConnection;

    .line 57
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.ims.IMSService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 60
    new-instance v1, Lcom/sec/android/ims/IMSManager$ServiceSender;

    invoke-direct {v1, p0}, Lcom/sec/android/ims/IMSManager$ServiceSender;-><init>(Lcom/sec/android/ims/IMSManager;)V

    iput-object v1, p0, Lcom/sec/android/ims/IMSManager;->mServiceSender:Lcom/sec/android/ims/IMSManager$ServiceSender;

    .line 61
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager;->mServiceSender:Lcom/sec/android/ims/IMSManager$ServiceSender;

    const-string v3, "IMSManager"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/ims/IMSManager;->mServiceSenderThread:Ljava/lang/Thread;

    .line 62
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->mServiceSenderThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSManager getting created, mService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/ims/IMSManager;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/ims/IMSManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->pcscfAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/ims/IMSManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sec/android/ims/IMSManager;->isIt3gNetwork:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/ims/IMSManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->isimResponse:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/ims/IMSEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/ims/IMSManager;Lcom/sec/android/ims/IMSEventListener;)Lcom/sec/android/ims/IMSEventListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/ims/IMSManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/ims/IMSManager;->events:I

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/ims/IMSManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const-class v1, Lcom/sec/android/ims/IMSManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/ims/IMSManager;->imsManager:Lcom/sec/android/ims/IMSManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sec/android/ims/IMSManager;

    invoke-direct {v0, p0}, Lcom/sec/android/ims/IMSManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/ims/IMSManager;->imsManager:Lcom/sec/android/ims/IMSManager;

    .line 69
    :cond_0
    sget-object v0, Lcom/sec/android/ims/IMSManager;->imsManager:Lcom/sec/android/ims/IMSManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 135
    const-string v0, "IMSManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .parameter "request"

    .prologue
    .line 257
    packed-switch p0, :pswitch_data_0

    .line 264
    const-string v0, "<unknown event>"

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    const-string v0, "EVENT_REGISTER"

    goto :goto_0

    .line 259
    :pswitch_1
    const-string v0, "EVENT_REGISTER_ISIM"

    goto :goto_0

    .line 260
    :pswitch_2
    const-string v0, "EVENT_UNREGISTER"

    goto :goto_0

    .line 261
    :pswitch_3
    const-string v0, "EVENT_UNREGISTER_ISIM"

    goto :goto_0

    .line 262
    :pswitch_4
    const-string v0, "EVENT_REGISTER_LISTENER"

    goto :goto_0

    .line 263
    :pswitch_5
    const-string v0, "EVENT_UNREGISTER_LISTENER"

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getMessageEnabler()Lcom/sec/android/ims/message/IMessageEnabler;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->getMessageEnabler()Lcom/sec/android/ims/message/IMessageEnabler;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->isRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 105
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Z)V
    .locals 3
    .parameter "pcscfAddr"
    .parameter "isIt3gNetwork"

    .prologue
    const/4 v2, 0x1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Service]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->pcscfAddr:Ljava/lang/String;

    .line 75
    iput-boolean p2, p0, Lcom/sec/android/ims/IMSManager;->isIt3gNetwork:Z

    .line 76
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

    invoke-virtual {p0, v2}, Lcom/sec/android/ims/IMSManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/ims/IMSManager$ManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method

.method public register(Ljava/lang/String;[B)V
    .locals 3
    .parameter "pcscfAddr"
    .parameter "isimResponse"

    .prologue
    const/4 v2, 0x2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Service]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->pcscfAddr:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/sec/android/ims/IMSManager;->isimResponse:[B

    .line 84
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

    invoke-virtual {p0, v2}, Lcom/sec/android/ims/IMSManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/ims/IMSManager$ManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method

.method public registerListener(Lcom/sec/android/ims/IMSEventListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "events"

    .prologue
    const/4 v2, 0x5

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Service]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;

    .line 121
    iput p2, p0, Lcom/sec/android/ims/IMSManager;->events:I

    .line 123
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

    invoke-virtual {p0, v2}, Lcom/sec/android/ims/IMSManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/ims/IMSManager$ManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v0, "Service isn\'t connected "

    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Service]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

    invoke-virtual {p0, v2}, Lcom/sec/android/ims/IMSManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/ims/IMSManager$ManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 90
    return-void
.end method

.method public unregister(Ljava/lang/String;[B)V
    .locals 3
    .parameter "pcscfAddr"
    .parameter "isimResponse"

    .prologue
    const/4 v2, 0x4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Service]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->pcscfAddr:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/sec/android/ims/IMSManager;->isimResponse:[B

    .line 97
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

    invoke-virtual {p0, v2}, Lcom/sec/android/ims/IMSManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/ims/IMSManager$ManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public unregisterListener(Lcom/sec/android/ims/IMSEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x6

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Service]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;

    .line 131
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager;->mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

    invoke-virtual {p0, v2}, Lcom/sec/android/ims/IMSManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/ims/IMSManager$ManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method
