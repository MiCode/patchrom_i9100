.class final Lcom/android/internal/telephony/ims/IMSConnection;
.super Lcom/android/internal/telephony/Connection;
.source "IMSConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/IMSConnection$1;,
        Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "IMSConnection"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field address:Ljava/lang/String;

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

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

.field isThrwayCall:Z

.field mCallFailCause:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

.field parent:Lcom/android/internal/telephony/ims/IMSCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 97
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 388
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/ims/IMSCallTracker;I)V
    .locals 3
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 97
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 99
    iput v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSConnection;->createWakeLock(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->acquireWakeLock()V

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    .line 151
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 153
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->createTime:J

    .line 155
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    .line 156
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 157
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 159
    iput p4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 161
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/ims/IMSCall;->attach(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/DriverCall;)V

    .line 163
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 164
    iput v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 165
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 2
    .parameter "context"
    .parameter "cw"
    .parameter "ct"
    .parameter "parent"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 97
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSConnection;->createWakeLock(Landroid/content/Context;)V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->acquireWakeLock()V

    .line 369
    iput-object p3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 370
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    .line 371
    iget-object v0, p2, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 372
    iget v0, p2, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 373
    iget-object v0, p2, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    .line 374
    iget v0, p2, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->createTime:J

    .line 378
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    .line 379
    iput-object p4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 380
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 381
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 4
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 97
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 99
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 319
    const-string v0, "IMSConnection"

    const-string v1, "[IMSConn]  IMSConnection construction  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSConnection;->createWakeLock(Landroid/content/Context;)V

    .line 321
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->acquireWakeLock()V

    .line 323
    iput-object p3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 324
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    .line 326
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->dialString:Ljava/lang/String;

    .line 327
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] IMSConnection: dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/IMSConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 330
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] IMSConnection:formated dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 334
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    .line 336
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 338
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    .line 340
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 341
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->createTime:J

    .line 344
    if-eqz p4, :cond_2

    .line 345
    iput-object p4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 348
    iget-object v0, p4, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    .line 349
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 356
    :cond_2
    :goto_0
    return-void

    .line 352
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 353
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn]  parent call state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 306
    const-string v0, "acquireWakeLock"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 308
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 312
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 313
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "IMSConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 314
    return-void
.end method

.method private disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 3
    .parameter "causeCode"

    .prologue
    .line 719
    sparse-switch p1, :sswitch_data_0

    .line 733
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    .line 734
    .local v0, phone:Lcom/android/internal/telephony/ims/IMSPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 735
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 736
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 750
    .end local v0           #phone:Lcom/android/internal/telephony/ims/IMSPhone;
    .end local v1           #serviceState:I
    :goto_0
    return-object v2

    .line 721
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 723
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 725
    :sswitch_2
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 727
    :sswitch_3
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 729
    :sswitch_4
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 737
    .restart local v0       #phone:Lcom/android/internal/telephony/ims/IMSPhone;
    .restart local v1       #serviceState:I
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 739
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 747
    :cond_2
    const/16 v2, 0x10

    if-ne p1, v2, :cond_3

    .line 748
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 750
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 719
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
    .end sparse-switch
.end method

.method private doDisconnect()V
    .locals 4

    .prologue
    .line 668
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnectTime:J

    .line 670
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->duration:J

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    .line 673
    return-void
.end method

.method private equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 799
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "dialString2"

    .prologue
    .line 360
    return-object p1
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

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

.method private onStartedHolding()V
    .locals 2

    .prologue
    .line 873
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->holdingStartTime:J

    .line 874
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/ims/IMSCall;
    .locals 3
    .parameter "state"

    .prologue
    .line 282
    sget-object v0, Lcom/android/internal/telephony/ims/IMSConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
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

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 295
    :goto_0
    return-object v0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    goto :goto_0

    .line 295
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    goto :goto_0

    .line 282
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


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 397
    return-void
.end method

.method public compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "dc"

    .prologue
    const/4 v1, 0x1

    .line 786
    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v1

    .line 791
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 384
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

    .line 879
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->isVideoCall()Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->fallbackVT(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 884
    return-void

    .line 882
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "CallState Exception for fallback Video Call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/ims/IMSCall;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getCallFailCause()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 432
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 459
    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 464
    :goto_0
    return-wide v0

    .line 461
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 464
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->duration:J

    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 476
    const-wide/16 v0, 0x0

    .line 478
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getIMSIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 678
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    if-ltz v0, :cond_0

    .line 679
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    return v0

    .line 681
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "IMS connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 507
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    if-gt v3, v4, :cond_2

    .line 511
    :cond_0
    const-string v1, ""

    .line 525
    :cond_1
    :goto_0
    return-object v1

    .line 514
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, subStr:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 516
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 517
    .local v2, wIndex:I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 519
    .local v0, pIndex:I
    if-lez v2, :cond_4

    if-lt v2, v0, :cond_3

    if-gtz v0, :cond_4

    .line 520
    :cond_3
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 521
    :cond_4
    if-lez v0, :cond_1

    .line 522
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 573
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 575
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
    .line 924
    const/4 v0, 0x0

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
    .line 535
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 540
    return-void

    .line 538
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    return v0
.end method

.method public isThrwayCall()Z
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isThrwayCall:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 276
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    .line 759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTimeReal:J

    .line 760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->duration:J

    .line 762
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedInOrOut: connectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 770
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    if-nez v0, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->processNextPostDialChar()V

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    .line 776
    return-void
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 3
    .parameter "disconnectCauseFromCode"

    .prologue
    .line 699
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 703
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->doDisconnect()V

    .line 705
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;->connectionDisconnected(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    .line 715
    return-void
.end method

.method public onHangupLocal()V
    .locals 1

    .prologue
    .line 689
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 691
    return-void
.end method

.method public onLocalDisconnect()V
    .locals 2

    .prologue
    .line 650
    const-string v0, "IMSConnection"

    const-string v1, "[IMSConn] onLoalDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->doDisconnect()V

    .line 654
    const-string v0, "IMSConnection"

    const-string v1, "[IMSConn] onLoalDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;->detach(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    .line 663
    return-void
.end method

.method public onRemoteDisconnect(I)V
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 694
    iput p1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 695
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 696
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 559
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    return-void

    .line 564
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 587
    const-string v1, "IMSConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_0
    return-void

    .line 592
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    .line 622
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public processNextPostDialChar()V
    .locals 9

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 183
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 190
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 193
    const/4 v1, 0x0

    .line 212
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/ims/IMSPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 216
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 219
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 220
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 221
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 222
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 225
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 227
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 197
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 199
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->processPostDialChar(C)Z

    move-result v2

    .line 203
    .local v2, isValid:Z
    if-nez v2, :cond_3

    .line 205
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 207
    const-string v6, "IMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processPostDialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 253
    :goto_0
    return v0

    .line 237
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_1

    .line 238
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 245
    :cond_1
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_2

    .line 246
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 247
    :cond_2
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_3

    .line 248
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 250
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "IMSConnection"

    const-string v2, "releaseWakeLock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 174
    :cond_0
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->separate(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 646
    return-void

    .line 643
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->acquireWakeLock()V

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 264
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 270
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 272
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method public setThrwayCall(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isThrwayCall:Z

    .line 913
    return-void
.end method

.method public update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .parameter "dc"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 809
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    move v4, v5

    .line 811
    .local v4, wasHolding:Z
    :goto_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ims/IMSConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v1

    .line 813
    .local v1, newParent:Lcom/android/internal/telephony/ims/IMSCall;
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/ims/IMSConnection;->equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 814
    const-string v7, "update: phone # changed!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 815
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 816
    const/4 v0, 0x1

    .line 820
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 821
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 822
    const/4 v0, 0x1

    .line 823
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    .line 830
    :cond_1
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 831
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 832
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 834
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eq v1, v7, :cond_7

    .line 835
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eqz v7, :cond_2

    .line 836
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ims/IMSCall;->detach(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 838
    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/ims/IMSCall;->attach(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/DriverCall;)V

    .line 839
    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 840
    const/4 v0, 0x1

    .line 849
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasNewParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eq v1, v8, :cond_a

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 858
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_3

    .line 859
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->onConnectedInOrOut()V

    .line 862
    :cond_3
    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    .line 864
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->onStartedHolding()V

    .line 867
    :cond_4
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/ims/IMSCall;
    .end local v4           #wasHolding:Z
    :cond_5
    move v4, v6

    .line 809
    goto/16 :goto_0

    .line 825
    .restart local v1       #newParent:Lcom/android/internal/telephony/ims/IMSCall;
    .restart local v4       #wasHolding:Z
    :cond_6
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 826
    const/4 v0, 0x1

    .line 827
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    goto/16 :goto_1

    .line 843
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/ims/IMSCall;->update(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 844
    .local v2, parentStateChange:Z
    if-nez v0, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move v0, v5

    :goto_4
    goto/16 :goto_2

    :cond_9
    move v0, v6

    goto :goto_4

    .end local v2           #parentStateChange:Z
    :cond_a
    move v5, v6

    .line 849
    goto :goto_3
.end method

.method public updateParent(Lcom/android/internal/telephony/ims/IMSCall;Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 1
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 901
    if-eq p2, p1, :cond_1

    .line 902
    if-eqz p1, :cond_0

    .line 903
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/ims/IMSCall;->detach(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 905
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 906
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 908
    :cond_1
    return-void
.end method
