.class public Lcom/android/internal/telephony/gsm/GsmConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmConnection$1;,
        Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PAUSE_DELAY_FIRST_MILLIS:I = 0x12c

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field address:Ljava/lang/String;

.field callFailCause:I

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field cdnipNumber:Ljava/lang/String;

.field cnapName:Ljava/lang/String;

.field cnapNamePresentation:I

.field connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field index:I

.field isIncoming:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field parent:Lcom/android/internal/telephony/gsm/GsmCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;

.field rawCause:I

.field sktVEUrl:Ljava/lang/String;

.field sktVEUrlPresentation:I

.field uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V
    .locals 2
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 92
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 93
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 97
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callFailCause:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    .line 100
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 101
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sktVEUrlPresentation:I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 147
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 148
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    .line 150
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 152
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    .line 155
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 156
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    .line 173
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 174
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 176
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 178
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->id:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setId(I)V

    .line 181
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 183
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 5
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 91
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 92
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 93
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 97
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callFailCause:I

    .line 99
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    .line 100
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 101
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sktVEUrlPresentation:I

    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 191
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 192
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    .line 194
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    .line 196
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 197
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 199
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->setId(I)V

    .line 204
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    .line 206
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    .line 207
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 208
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    .line 214
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cdnipNumber:Ljava/lang/String;

    .line 217
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sktVEUrl:Ljava/lang/String;

    .line 218
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sktVEUrlPresentation:I

    .line 221
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 222
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 1068
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1070
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1062
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1063
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1064
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 230
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1083
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void
.end method

.method private onStartedHolding()V
    .locals 2

    .prologue
    .line 870
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->holdingStartTime:J

    .line 871
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 3
    .parameter "state"

    .prologue
    .line 1019
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1036
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 1032
    :goto_0
    return-object v0

    .line 1027
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    .line 1032
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    .line 1019
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 10

    .prologue
    .line 947
    const/4 v1, 0x0

    .line 951
    .local v1, c:C
    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 952
    .local v5, salesCode:Ljava/lang/String;
    const-string v7, "KTT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v7, v8, :cond_1

    .line 953
    const-string v7, "GSM"

    const-string/jumbo v8, "processNextPostDialChar: KT Ringing return!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v8, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v7, v8, :cond_0

    .line 962
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-gt v7, v8, :cond_4

    .line 964
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 967
    const/4 v1, 0x0

    .line 986
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v7, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 990
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 993
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 994
    .local v6, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 995
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 996
    iput-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 999
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 1002
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 971
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v6           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 973
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 975
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->processPostDialChar(C)Z

    move-result v2

    .line 977
    .local v2, isValid:Z
    if-nez v2, :cond_3

    .line 979
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 981
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "processNextPostDialChar: c="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isn\'t valid!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 879
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 914
    :goto_0
    return v0

    .line 881
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 906
    :cond_1
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_2

    .line 907
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 908
    :cond_2
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_3

    .line 909
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 911
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1075
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    const-string/jumbo v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1079
    :cond_0
    monitor-exit v1

    .line 1080
    return-void

    .line 1079
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    .line 1047
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 1049
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 1050
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1051
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1057
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1058
    return-void

    .line 1052
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1055
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 432
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    .line 240
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 245
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 5
    .parameter "causeCode"

    .prologue
    .line 452
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callFailCause:I

    .line 455
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GSMConn] disconnectCauseFromCode: causeCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sparse-switch p1, :sswitch_data_0

    .line 523
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 524
    .local v0, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 525
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 526
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 555
    .end local v0           #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v1           #serviceState:I
    :goto_0
    return-object v2

    .line 459
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 462
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 468
    :sswitch_2
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 473
    :sswitch_3
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 476
    :sswitch_4
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 479
    :sswitch_5
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 482
    :sswitch_6
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 485
    :sswitch_7
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 489
    :sswitch_8
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 527
    .restart local v0       #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v1       #serviceState:I
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 536
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 538
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_3

    .line 539
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 540
    :cond_3
    const v2, 0xffff

    if-ne p1, v2, :cond_7

    .line 541
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 542
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 543
    :cond_4
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 544
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 545
    :cond_5
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 546
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 548
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 550
    :cond_7
    const/16 v2, 0x10

    if-ne p1, v2, :cond_8

    .line 551
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 555
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 457
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x22 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2a -> :sswitch_2
        0x2c -> :sswitch_2
        0x31 -> :sswitch_2
        0x3a -> :sswitch_3
        0x44 -> :sswitch_4
        0xf0 -> :sswitch_5
        0xf1 -> :sswitch_6
        0x3f1 -> :sswitch_8
    .end sparse-switch
.end method

.method disconnectCauseFromCode(II)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 2
    .parameter "causeCode"
    .parameter "callFailCause"

    .prologue
    .line 565
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    add-int/lit16 v0, p2, 0xbb8

    sparse-switch v0, :sswitch_data_0

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 669
    :goto_0
    return-object v0

    .line 568
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 570
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 572
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 574
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 576
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->TMP_FAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 578
    :sswitch_5
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCH_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 580
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 582
    :sswitch_7
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_QOS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 584
    :sswitch_8
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_BEARER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 586
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACM_EXCEED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 588
    :sswitch_a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 590
    :sswitch_b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 592
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 594
    :sswitch_d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CHANNEL_UNACCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 596
    :sswitch_e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OP_DETERMINED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 598
    :sswitch_f
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 600
    :sswitch_10
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->PRE_EMPTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 602
    :sswitch_11
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NON_SELECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 604
    :sswitch_12
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->DESTINATION_OUT_OF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 606
    :sswitch_13
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUM_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 608
    :sswitch_14
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 610
    :sswitch_15
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NET_OUT_OF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 612
    :sswitch_16
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_DISCARD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 614
    :sswitch_17
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_RESOURCE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 616
    :sswitch_18
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_SUBSCRIBED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 618
    :sswitch_19
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRED_IN_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 620
    :sswitch_1a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 622
    :sswitch_1b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 624
    :sswitch_1c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 626
    :sswitch_1d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 628
    :sswitch_1e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_DIGITAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 630
    :sswitch_1f
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 632
    :sswitch_20
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TI:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 634
    :sswitch_21
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_IN_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 636
    :sswitch_22
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 638
    :sswitch_23
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TRANSIT_NET:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 640
    :sswitch_24
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCORRECT_MSG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 642
    :sswitch_25
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->IE_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 644
    :sswitch_26
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_TYPE_NON_EXIST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 646
    :sswitch_27
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_NOT_COMP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 648
    :sswitch_28
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->IE_NON_EXIST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 650
    :sswitch_29
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_IE_CONTENTS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 652
    :sswitch_2a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_NOT_COMP_CALL_STATE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 654
    :sswitch_2b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->RECOVERY_TIMER_EXPIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 656
    :sswitch_2c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 658
    :sswitch_2d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INTERWORKING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 660
    :sswitch_2e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_CHANGED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 662
    :sswitch_2f
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->STATUS_ENQUIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 664
    :sswitch_30
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 669
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_0

    .line 566
    :sswitch_data_0
    .sparse-switch
        0xbb9 -> :sswitch_b
        0xbbb -> :sswitch_c
        0xbbe -> :sswitch_d
        0xbc0 -> :sswitch_e
        0xbc8 -> :sswitch_a
        0xbc9 -> :sswitch_0
        0xbca -> :sswitch_1
        0xbcb -> :sswitch_2
        0xbcd -> :sswitch_f
        0xbce -> :sswitch_2e
        0xbd1 -> :sswitch_10
        0xbd2 -> :sswitch_11
        0xbd3 -> :sswitch_12
        0xbd4 -> :sswitch_13
        0xbd5 -> :sswitch_14
        0xbd6 -> :sswitch_2f
        0xbd7 -> :sswitch_30
        0xbda -> :sswitch_3
        0xbde -> :sswitch_15
        0xbe1 -> :sswitch_4
        0xbe2 -> :sswitch_5
        0xbe3 -> :sswitch_16
        0xbe4 -> :sswitch_6
        0xbe7 -> :sswitch_17
        0xbe9 -> :sswitch_7
        0xbea -> :sswitch_18
        0xbef -> :sswitch_19
        0xbf1 -> :sswitch_1a
        0xbf2 -> :sswitch_8
        0xbf7 -> :sswitch_1b
        0xbf9 -> :sswitch_1c
        0xbfc -> :sswitch_9
        0xbfd -> :sswitch_1d
        0xbfe -> :sswitch_1e
        0xc07 -> :sswitch_1f
        0xc09 -> :sswitch_20
        0xc0f -> :sswitch_21
        0xc10 -> :sswitch_22
        0xc13 -> :sswitch_23
        0xc17 -> :sswitch_24
        0xc18 -> :sswitch_25
        0xc19 -> :sswitch_26
        0xc1a -> :sswitch_27
        0xc1b -> :sswitch_28
        0xc1c -> :sswitch_29
        0xc1d -> :sswitch_2a
        0xc1e -> :sswitch_2b
        0xc27 -> :sswitch_2c
        0xc37 -> :sswitch_2d
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 834
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 835
    return-void
.end method

.method public fallbackVT()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 351
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isVideoCall()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fallbackVT(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 356
    return-void

    .line 354
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "CallState Exception for fallback Video Call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    const-string v0, "GSM"

    const-string v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 943
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCallFailCause()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->callFailCause:I

    return v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 295
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 300
    :goto_0
    return-wide v0

    .line 297
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 300
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    goto :goto_0
.end method

.method getGSMIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 839
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    if-ltz v0, :cond_0

    .line 840
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 842
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GSM index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 307
    const-wide/16 v0, 0x0

    .line 309
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRawDisconnectCause()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 924
    :cond_0
    const-string v0, ""

    .line 927
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSKTVEUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSKTVEUrl() sktVEUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sktVEUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->sktVEUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 337
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 347
    return-void

    .line 345
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    return v0
.end method

.method onConnectedInOrOut()V
    .locals 3

    .prologue
    .line 851
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    .line 853
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 861
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v0, :cond_0

    .line 863
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 865
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 866
    return-void
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 4
    .parameter "cause"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 696
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->cancelPostDial()V

    .line 701
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 712
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 716
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 717
    return-void
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 442
    return-void
.end method

.method onRemoteDisconnect(I)V
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 676
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 677
    return-void
.end method

.method onRemoteDisconnect(II)V
    .locals 2
    .parameter "causeCode"
    .parameter "callFailCause"

    .prologue
    .line 682
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(II)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 688
    :goto_0
    return-void

    .line 685
    :cond_0
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    .line 686
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(I)V

    goto :goto_0
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 373
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    return-void

    .line 378
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 380
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 385
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 390
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 420
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 365
    return-void

    .line 363
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 10
    .parameter "dc"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v4

    .line 725
    .local v4, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_6

    move v5, v6

    .line 727
    .local v5, wasHolding:Z
    :goto_0
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    .line 729
    .local v1, newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 730
    const-string/jumbo v8, "update: phone # changed!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 731
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 734
    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 735
    .local v3, salesCode:Ljava/lang/String;
    const-string v8, "KTT"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v8

    if-nez v8, :cond_0

    .line 736
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    const-string v9, "#31#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 737
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const-string v9, "#31#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 738
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#31#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 742
    :cond_0
    const/4 v0, 0x1

    .line 747
    .end local v3           #salesCode:Ljava/lang/String;
    :cond_1
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 748
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 749
    const/4 v0, 0x1

    .line 750
    const-string v8, ""

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    .line 757
    :cond_2
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--dssds----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 758
    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 759
    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 775
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v8, :cond_8

    .line 776
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v8, :cond_3

    .line 777
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 780
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/gsm/GsmCall;->setVideoCall(Z)V

    .line 783
    :cond_3
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 784
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 785
    const/4 v0, 0x1

    .line 793
    :goto_2
    iget v8, p1, Lcom/android/internal/telephony/DriverCall;->id:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->setId(I)V

    .line 798
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update: parent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hasNewParent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v9, :cond_b

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wasConnectingInOrOut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wasHolding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isConnectingInOrOut="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 807
    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v6

    if-nez v6, :cond_4

    .line 808
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 811
    :cond_4
    if-eqz v0, :cond_5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_5

    .line 813
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 816
    :cond_5
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v5           #wasHolding:Z
    :cond_6
    move v5, v7

    .line 725
    goto/16 :goto_0

    .line 752
    .restart local v1       #newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v5       #wasHolding:Z
    :cond_7
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 753
    const/4 v0, 0x1

    .line 754
    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    goto/16 :goto_1

    .line 788
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 789
    .local v2, parentStateChange:Z
    if-nez v0, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    move v0, v6

    :goto_4
    goto/16 :goto_2

    :cond_a
    move v0, v7

    goto :goto_4

    .end local v2           #parentStateChange:Z
    :cond_b
    move v6, v7

    .line 798
    goto :goto_3
.end method
