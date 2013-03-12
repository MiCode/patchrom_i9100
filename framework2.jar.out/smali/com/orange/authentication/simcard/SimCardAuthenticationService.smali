.class public Lcom/orange/authentication/simcard/SimCardAuthenticationService;
.super Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;
.source "SimCardAuthenticationService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;,
        Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    }
.end annotation


# static fields
.field private static final AKA_ARRAYS_LENGTHS_SIZE:I = 0x2

.field private static final AKA_AUTH_HEADER_SIZE:I = 0x4

.field private static final AKA_AUTN_ARR_SIZE:I = 0x10

.field private static final AKA_RAND_ARR_SIZE:I = 0x10

.field private static final DBG:Z = true

.field private static final GSM_AUTH_HEADER_SIZE:I = 0x4

.field private static final GSM_RAND_ARR_SIZE:I = 0x10

.field private static final IPC_SEC_IMS_AUTH_CANNOT_PERFORM:I = 0x1

.field private static final IPC_SEC_IMS_AUTH_MAK_CODE_FAILURE:I = 0x3

.field private static final IPC_SEC_IMS_AUTH_NO_ERR:I = 0x0

.field private static final IPC_SEC_IMS_AUTH_SKIP_RESPONSE:I = 0x2

.field private static final IPC_SEC_IMS_AUTH_SQN_FAIL:I = 0x4

.field private static final IPC_SEC_IMS_AUTH_SYNCH_FAIL:I = 0x5

.field private static final IPC_SEC_IMS_AUTH_TYPE_3G:I = 0x2

.field private static final IPC_SEC_IMS_AUTH_TYPE_GSM:I = 0x1

.field private static final IPC_SEC_IMS_AUTH_UNSUPPORTED_CONTEX:I = 0x6

.field private static final REQUEST_AKA_AUTH:I = 0x1

.field private static final REQUEST_GET_SIM_CARD_TYPE:I = 0x0

.field private static final REQUEST_GSM_AUTH:I = 0x2

.field private static final REQUEST_THREAD_NAME:Ljava/lang/String; = "SimCardAuhtServRequestThread"

.field private static final TAG:Ljava/lang/String; = "SERVICE_TEST"

.field private static final WAIT_TIMEOUT:I = 0x1f40


# instance fields
.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mRILrequestsHandler:Landroid/os/Handler;

.field private mRequestOriginatorArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Landroid/os/HandlerThread;

.field private mSequenceNumber:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;)V
    .locals 3
    .parameter "commandsInterface"
    .parameter "context"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/orange/authentication/simcard/ISimCardAuthenticationService$Stub;-><init>()V

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I

    .line 157
    iput-object p1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 158
    iput-object p2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mContext:Landroid/content/Context;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SimCardAuhtServRequestThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    .line 164
    iget-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 166
    iget-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 167
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    .line 171
    :cond_0
    return-void
.end method

.method private Loge(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1198
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SERVICE_TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-void
.end method

.method private Logi(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1187
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SERVICE_TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void
.end method

.method private afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "requester"
    .parameter "reqInfoHead"

    .prologue
    .line 402
    const/4 v2, 0x0

    .line 403
    .local v2, isWaitException:Z
    const/4 v3, 0x0

    .local v3, waitExceptionString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 405
    .local v1, error:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " afterRILrequest invocation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 411
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :try_start_1
    iget-boolean v4, p1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    if-nez v4, :cond_0

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " - going into WAIT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-wide/16 v6, 0x1f40

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 419
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    :goto_0
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v5

    .line 430
    :try_start_2
    iget-object v4, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 431
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    iget-boolean v4, p1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    if-eqz v4, :cond_1

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "response is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 437
    const/4 v4, 0x0

    .line 443
    :goto_1
    return-object v4

    .line 419
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    const/4 v2, 0x1

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Thread.currentThread().wait(WAIT_TIMEOUT): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 438
    :cond_1
    if-eqz v2, :cond_2

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - wait exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v4, v1

    .line 440
    goto :goto_1

    .line 442
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - wait timeout - invalid response"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v4, v1

    .line 443
    goto :goto_1
.end method

.method private beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    .locals 5
    .parameter "msg"
    .parameter "reqInfoHead"

    .prologue
    const/4 v1, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - can not obtain message from mRILrequestsHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    move-object v0, v1

    .line 393
    :goto_0
    return-object v0

    .line 375
    :cond_0
    new-instance v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    invoke-direct {v0, p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationService;Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;)V

    .line 376
    .local v0, requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    .line 377
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    .line 378
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->obtainSequenceNumber()I

    move-result v2

    iput v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    .line 379
    #setter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$102(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget v2, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    iput v2, p1, Landroid/os/Message;->arg1:I

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforeRILrequest with allocated seq number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v2

    .line 387
    :try_start_0
    iget-object v3, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - no memory to add requester to pull"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 390
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 392
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private byteArrayToInt(Ljava/nio/ByteBuffer;)I
    .locals 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x4

    .line 1124
    if-nez p1, :cond_0

    .line 1125
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1127
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 1129
    .local v3, bufferLength:I
    const/4 v1, 0x4

    .line 1130
    .local v1, INT_BYTE_SIZE:I
    if-le v3, v6, :cond_1

    move v0, v6

    .line 1133
    .local v0, CORRECT_VALUE_SIZE:I
    :goto_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1134
    .local v2, bb:Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1138
    move v4, v0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 1139
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1138
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #CORRECT_VALUE_SIZE:I
    .end local v2           #bb:Ljava/nio/ByteBuffer;
    .end local v4           #i:I
    :cond_1
    move v0, v3

    .line 1130
    goto :goto_0

    .line 1144
    .restart local v0       #CORRECT_VALUE_SIZE:I
    .restart local v2       #bb:Ljava/nio/ByteBuffer;
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1145
    .local v5, startPosition:I
    sub-int v4, v3, v0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 1146
    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1145
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1149
    :cond_3
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    return v6
.end method

.method private byteArrayToLong(Ljava/nio/ByteBuffer;)J
    .locals 9
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0x8

    .line 1154
    if-nez p1, :cond_0

    .line 1155
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 1157
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 1159
    .local v3, bufferLength:I
    const/16 v1, 0x8

    .line 1160
    .local v1, LONG_BYTE_SIZE:I
    if-le v3, v6, :cond_1

    move v0, v6

    .line 1163
    .local v0, CORRECT_VALUE_SIZE:I
    :goto_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1164
    .local v2, bb:Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1168
    move v4, v0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 1169
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1168
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #CORRECT_VALUE_SIZE:I
    .end local v2           #bb:Ljava/nio/ByteBuffer;
    .end local v4           #i:I
    :cond_1
    move v0, v3

    .line 1160
    goto :goto_0

    .line 1174
    .restart local v0       #CORRECT_VALUE_SIZE:I
    .restart local v2       #bb:Ljava/nio/ByteBuffer;
    .restart local v4       #i:I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1175
    .local v5, startPosition:I
    sub-int v4, v3, v0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 1176
    add-int v6, v5, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1175
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1179
    :cond_3
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    return-wide v6
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 1213
    if-nez p1, :cond_0

    .line 1214
    const-string v3, "null"

    .line 1222
    :goto_0
    return-object v3

    .line 1215
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1217
    const/4 v2, 0x0

    .line 1218
    .local v2, val:I
    aget-byte v3, p1, v0

    and-int/lit16 v2, v3, 0xff

    .line 1219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1220
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1222
    .end local v2           #val:I
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private checkPermission()Z
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mContext:Landroid/content/Context;

    const-string v1, "com.orange.permission.SIMCARD_AUTHENTICATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMethodName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, methodName:Ljava/lang/String;
    const-string v1, "access"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1209
    .end local v0           #methodName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #methodName:Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleAkaAuthResponse(Landroid/os/Message;)Ljava/lang/Object;
    .locals 20
    .parameter "response"

    .prologue
    .line 886
    const/4 v7, 0x0

    .line 887
    .local v7, error:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 888
    const-string v7, "response == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 889
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .line 1107
    :cond_0
    :goto_0
    return-object v10

    .line 891
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 892
    const-string v7, "response.obj == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 893
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 896
    :cond_2
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "invalid aka response"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .line 898
    .local v10, invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 899
    .local v3, ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 901
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ar.exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 903
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 906
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_3
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 907
    const-string v7, "ar.result == null"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 908
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v7}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 911
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :cond_4
    new-instance v17, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    invoke-direct/range {v17 .. v17}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>()V

    .line 914
    .local v17, result:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [B

    move-object/from16 v2, v18

    check-cast v2, [B

    .line 915
    .local v2, akaResponse:[B
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "akaResponse="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 926
    const/4 v9, 0x0

    .line 928
    .local v9, index:I
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 931
    aget-byte v18, v2, v9

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 935
    add-int/lit8 v9, v9, 0x1

    .line 936
    aget-byte v16, v2, v9

    .line 937
    .local v16, response_error_type:I
    packed-switch v16, :pswitch_data_0

    .line 960
    :pswitch_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "response type - Unexpected error type = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 940
    :pswitch_1
    const-string v18, "response type - IPC_SEC_IMS_AUTH_NO_ERR"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 969
    :goto_1
    array-length v0, v2

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 972
    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 973
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>([B)V

    goto/16 :goto_0

    .line 944
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_2
    const-string v18, "response type - IPC_SEC_IMS_AUTH_UNSUPPORTED_CONTEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 945
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NO_SUCH_AUTH_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "unsupported context"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 951
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_3
    const-string v18, "response type - IPC_SEC_IMS_AUTH_CANNOT_PERFORM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 952
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    sget-object v18, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v19, "cannot perform"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 955
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :pswitch_4
    const-string v18, "response type - IPC_SEC_IMS_AUTH_SQN_FAIL"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_1

    .line 978
    :cond_5
    const/4 v4, 0x0

    .line 979
    .local v4, auts_len:I
    const/4 v5, 0x0

    .line 980
    .local v5, ck_len:I
    const/4 v8, 0x0

    .line 981
    .local v8, ik_len:I
    const/4 v11, 0x0

    .line 982
    .local v11, kc_len:I
    const/4 v12, 0x0

    .line 983
    .local v12, res_auts:[B
    const/4 v13, 0x0

    .line 984
    .local v13, res_ck:[B
    const/4 v14, 0x0

    .line 985
    .local v14, res_ik:[B
    const/4 v15, 0x0

    .line 987
    .local v15, res_kc:[B
    add-int/lit8 v9, v9, 0x1

    .line 988
    aget-byte v4, v2, v9

    .line 989
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "auts_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 990
    add-int/lit8 v9, v9, 0x1

    .line 993
    if-lez v4, :cond_6

    .line 995
    new-array v12, v4, [B

    .line 997
    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    invoke-static {v2, v9, v12, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    add-int/lit8 v9, v4, 0x3

    .line 1006
    :cond_6
    if-eqz v12, :cond_7

    .line 1007
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AUTS="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1009
    :cond_7
    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1011
    if-nez v12, :cond_8

    .line 1012
    const-string v18, "Since error type is SQN_FAIL we are retunring synch error with auts NULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1016
    :goto_2
    new-instance v10, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v10           #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    invoke-direct {v10, v12}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>([B)V

    goto/16 :goto_0

    .line 999
    .restart local v10       #invalidAkaResponse:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :catch_0
    move-exception v6

    .line 1000
    .local v6, e:Ljava/lang/Throwable;
    const-string v18, "cannot copy auts "

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    .end local v6           #e:Ljava/lang/Throwable;
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Since error type is SQN_FAIL we are retunring synch error with auts = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1019
    :cond_9
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 1023
    aget-byte v5, v2, v9

    .line 1024
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ck_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1025
    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1028
    add-int/lit8 v9, v9, 0x1

    .line 1030
    if-lez v5, :cond_a

    .line 1032
    new-array v13, v5, [B

    .line 1034
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-static {v2, v9, v13, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1038
    add-int/2addr v9, v5

    .line 1041
    :cond_a
    if-eqz v13, :cond_b

    .line 1042
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CK="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1046
    :cond_b
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 1050
    aget-byte v8, v2, v9

    .line 1051
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ik_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1052
    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1055
    add-int/lit8 v9, v9, 0x1

    .line 1057
    if-lez v8, :cond_c

    .line 1059
    new-array v14, v8, [B

    .line 1061
    const/16 v18, 0x0

    :try_start_2
    move/from16 v0, v18

    invoke-static {v2, v9, v14, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1065
    add-int/2addr v9, v8

    .line 1068
    :cond_c
    if-eqz v14, :cond_d

    .line 1069
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IK="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1072
    :cond_d
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 1076
    aget-byte v11, v2, v9

    .line 1077
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "kc_len = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1078
    array-length v0, v2

    move/from16 v18, v0

    add-int v19, v9, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 1081
    add-int/lit8 v9, v9, 0x1

    .line 1083
    if-lez v11, :cond_e

    .line 1085
    new-array v15, v11, [B

    .line 1087
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-static {v2, v9, v15, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1091
    add-int/2addr v9, v11

    .line 1094
    :cond_e
    if-eqz v15, :cond_f

    .line 1095
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KC="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 1098
    :cond_f
    if-eqz v13, :cond_0

    if-eqz v14, :cond_0

    if-eqz v12, :cond_0

    .line 1101
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setCk([B)V

    .line 1102
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setIk([B)V

    .line 1103
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;->setRes([B)V

    .line 1105
    const-string v18, "successfully parsed response"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    move-object/from16 v10, v17

    .line 1107
    goto/16 :goto_0

    .line 1035
    :catch_1
    move-exception v6

    .line 1036
    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 1062
    .end local v6           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .line 1063
    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 1088
    .end local v6           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v6

    .line 1089
    .restart local v6       #e:Ljava/lang/Throwable;
    goto/16 :goto_0

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleGsmAuthResponse(Landroid/os/Message;)Ljava/lang/Object;
    .locals 14
    .parameter "response"

    .prologue
    .line 756
    const/4 v5, 0x0

    .line 757
    .local v5, error:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 758
    const-string v5, "response == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 759
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .line 879
    :cond_0
    :goto_0
    return-object v8

    .line 761
    :cond_1
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v12, :cond_2

    .line 762
    const-string v5, "response.obj == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 763
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 767
    .local v3, ar:Landroid/os/AsyncResult;
    iget-object v12, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_4

    .line 768
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ar.exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 769
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v12, :cond_3

    .line 770
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gsmResponse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    check-cast v12, [B

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 774
    :goto_1
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_3
    const-string v12, "gsmResponse is null"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto :goto_1

    .line 777
    :cond_4
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v12, :cond_5

    .line 778
    const-string v5, "ar.result == null"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 779
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v8, v12, v5}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_5
    new-instance v10, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    invoke-direct {v10}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>()V

    .line 783
    .local v10, result:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "invalid gsm response"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .line 785
    .local v8, invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    iget-object v12, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [B

    move-object v6, v12

    check-cast v6, [B

    .line 786
    .local v6, gsmResponse:[B
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "gsmResponse="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 797
    const/4 v7, 0x0

    .line 799
    .local v7, index:I
    array-length v12, v6

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    .line 802
    aget-byte v12, v6, v7

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 806
    add-int/lit8 v7, v7, 0x1

    .line 807
    aget-byte v12, v6, v7

    packed-switch v12, :pswitch_data_0

    .line 820
    :pswitch_0
    const-string v12, "Unexpected error type"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 810
    :pswitch_1
    const-string v12, "No error reported"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 827
    array-length v12, v6

    const/4 v13, 0x4

    if-lt v12, v13, :cond_0

    .line 830
    add-int/lit8 v7, v7, 0x1

    .line 831
    aget-byte v11, v6, v7

    .line 833
    .local v11, sres_len:I
    add-int/lit8 v12, v11, 0x4

    array-length v13, v6

    if-le v12, v13, :cond_6

    .line 835
    const-string v12, "buffer length is not valid"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    .end local v11           #sres_len:I
    :pswitch_2
    const-string v12, "Rejection error type"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 817
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v8           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "cannot perform"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    .restart local v8       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    .restart local v11       #sres_len:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 840
    const/4 v12, 0x2

    aget-byte v12, v6, v12

    add-int/lit8 v12, v12, 0x3

    aget-byte v9, v6, v12

    .line 842
    .local v9, kc_len:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "len sres "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 843
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "len kc "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 845
    if-eqz v11, :cond_7

    if-nez v9, :cond_8

    .line 846
    :cond_7
    new-instance v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v8           #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    sget-object v12, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->USER_AUTH_REJECT_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v13, "No Data returned"

    invoke-direct {v8, v12, v13}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    .restart local v8       #invalidGsmResponse:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :cond_8
    add-int/lit8 v12, v11, 0x4

    add-int/2addr v12, v9

    array-length v13, v6

    if-le v12, v13, :cond_9

    .line 850
    const-string v12, "buffer length is not valid"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 854
    :cond_9
    const/4 v2, 0x0

    .line 856
    .local v2, Sres:I
    :try_start_0
    invoke-static {v6, v7, v11}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToInt(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 862
    add-int/lit8 v7, v11, 0x3

    .line 863
    add-int/lit8 v7, v7, 0x1

    .line 865
    const-wide/16 v0, 0x0

    .line 867
    .local v0, Kc:J
    :try_start_1
    invoke-static {v6, v7, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->byteArrayToLong(Ljava/nio/ByteBuffer;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 874
    invoke-virtual {v10, v2}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->setSres(I)V

    .line 875
    invoke-virtual {v10, v0, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;->setKc(J)V

    .line 877
    const-string v12, "successfully parsed response"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    move-object v8, v10

    .line 879
    goto/16 :goto_0

    .line 857
    .end local v0           #Kc:J
    :catch_0
    move-exception v4

    .line 858
    .local v4, e:Ljava/lang/Throwable;
    const-string v12, "Cannot convert sres to int"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 868
    .end local v4           #e:Ljava/lang/Throwable;
    .restart local v0       #Kc:J
    :catch_1
    move-exception v4

    .line 869
    .restart local v4       #e:Ljava/lang/Throwable;
    const-string v12, "Cannot convert kc to long"

    invoke-direct {p0, v12}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 807
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private hanleGetCardState(Landroid/os/Message;)Ljava/lang/Object;
    .locals 7
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    .line 663
    const/4 v1, 0x0

    .line 664
    .local v1, error:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 665
    const-string v1, "response == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 666
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    .line 749
    :goto_0
    return-object v3

    .line 668
    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 669
    const-string v1, "response.obj == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 670
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 674
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ar.exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 677
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_2
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 681
    const-string v1, "ar.result == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 682
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccCardStatus;

    .line 686
    .local v2, iccCardStatus:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v3, 0x0

    .line 688
    .local v3, result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    if-nez v4, :cond_4

    .line 689
    const-string v1, "iccCardStatus.getCardState() == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 690
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_4
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$android$internal$telephony$IccCardStatus$CardState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus$CardState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 743
    const-string v1, "switch(iccCardStatus.getCardState()) - default"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 744
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_0
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ABSENT:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 747
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :goto_1
    const-string v4, "successfully parsed response"

    invoke-direct {p0, v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 699
    :pswitch_1
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ERROR:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 700
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 703
    :pswitch_2
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    if-nez v4, :cond_5

    .line 704
    const-string v1, "iccCardStatus.getApplication(0) == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 705
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_5
    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-nez v4, :cond_6

    .line 709
    const-string v1, "iccCardStatus.getApplication(0).app_type == null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 710
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_6
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 736
    const-string v1, "switch(iccCardStatus.getApplication(0).app_type) - default"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 737
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 715
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_3
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->CSIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 716
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 719
    :pswitch_4
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->RUIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 720
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 723
    :pswitch_5
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->SIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 724
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 727
    :pswitch_6
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->UNKNOWN:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 728
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 731
    :pswitch_7
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v3           #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v4, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->USIM:Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    invoke-direct {v3, v4}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;)V

    .line 732
    .restart local v3       #result:Lcom/orange/authentication/simcard/ServiceSimCardType;
    goto :goto_1

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 713
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private declared-synchronized obtainSequenceNumber()I
    .locals 2

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)Ljava/lang/Object;
    .locals 11
    .parameter "message"

    .prologue
    .line 458
    monitor-enter p0

    const/4 v3, 0x0

    .line 459
    .local v3, msg:Landroid/os/Message;
    const/4 v0, 0x0

    .line 460
    .local v0, error:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message.what="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 463
    const/4 v1, 0x0

    .local v1, is3G:Z
    const/4 v2, 0x0

    .line 464
    .local v2, isSimReady:Z
    const/4 v5, 0x0

    .line 465
    .local v5, serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 466
    const/4 v6, 0x0

    .line 468
    .local v6, simTypeError:Ljava/lang/String;
    const-string v8, "Get sim type"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v7

    .line 471
    .local v7, sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-eqz v7, :cond_0

    .line 473
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 474
    const-string v8, "Get sim type"

    invoke-direct {p0, v7, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 475
    if-nez v6, :cond_0

    .line 476
    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v7}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    check-cast v5, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .line 477
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    if-nez v5, :cond_3

    .line 478
    const-string v6, "Get sim type - response is null"

    .line 508
    :cond_0
    :goto_0
    if-eqz v6, :cond_6

    .line 509
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GET sim card type error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 515
    :cond_1
    :goto_1
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 573
    const-string v8, "message.what - default"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    const/4 v5, 0x0

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v5

    .line 479
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getError()Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    move-result-object v8

    sget-object v9, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->OK:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    if-eq v8, v9, :cond_4

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get sim type mResponse.error = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 481
    :cond_4
    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v8

    if-nez v8, :cond_5

    .line 482
    const-string v6, "serviceSimCardType.getSimCardType() == null"

    goto :goto_0

    .line 484
    :cond_5
    sget-object v8, Lcom/orange/authentication/simcard/SimCardAuthenticationService$1;->$SwitchMap$com$orange$authentication$simcard$SimCardAuthenticationManager$SimCardType:[I

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 501
    const/4 v1, 0x0

    .line 502
    const/4 v2, 0x0

    goto :goto_0

    .line 488
    :pswitch_0
    const/4 v1, 0x1

    .line 489
    const/4 v2, 0x1

    .line 490
    goto :goto_0

    .line 493
    :pswitch_1
    const/4 v1, 0x0

    .line 494
    const/4 v2, 0x1

    .line 495
    goto :goto_0

    .line 511
    :cond_6
    if-eqz v5, :cond_1

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SIM card type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 458
    .end local v1           #is3G:Z
    .end local v2           #isSimReady:Z
    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    .end local v6           #simTypeError:Ljava/lang/String;
    .end local v7           #sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 517
    .restart local v1       #is3G:Z
    .restart local v2       #isSimReady:Z
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    .restart local v6       #simTypeError:Ljava/lang/String;
    .restart local v7       #sim_requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :pswitch_2
    if-nez v5, :cond_2

    .line 520
    :try_start_2
    new-instance v5, Lcom/orange/authentication/simcard/ServiceSimCardType;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v5, v8, v6}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_2

    .line 524
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :pswitch_3
    if-eqz v6, :cond_7

    .line 525
    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_2

    .line 526
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_7
    if-nez v2, :cond_8

    .line 527
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GSM AUTH, sim not ready: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 528
    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 532
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_8
    const-string v8, "Sending GSM"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 533
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 534
    const-string v8, "GSM Auth"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v4

    .line 535
    .local v4, requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-nez v4, :cond_9

    .line 536
    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    const-string v9, "Cannot initiate"

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 537
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_9
    iget-object v9, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-interface {v9, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 538
    const-string v8, "GSM Auth"

    invoke-direct {p0, v4, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 539
    new-instance v5, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 541
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_a
    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_2

    .line 546
    .end local v4           #requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :pswitch_4
    if-eqz v6, :cond_b

    .line 547
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 548
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_b
    if-nez v2, :cond_c

    .line 549
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AKA AUTH, sim not ready: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/orange/authentication/simcard/ServiceSimCardType;->getSimCardType()Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/orange/authentication/simcard/SimCardAuthenticationManager$SimCardType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 550
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->SIM_NOT_READY_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, ""

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 553
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_c
    if-nez v1, :cond_d

    .line 554
    const-string v0, "modem or SIM card do not handle AKA authentication"

    invoke-direct {p0, v0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 555
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NO_SUCH_AUTH_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 559
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_d
    const-string v8, "Sending AKA"

    invoke-direct {p0, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 560
    iget-object v8, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 561
    const-string v8, "AKA Auth"

    invoke-direct {p0, v3, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->beforeRILrequest(Landroid/os/Message;Ljava/lang/String;)Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    move-result-object v4

    .line 562
    .restart local v4       #requester:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    if-nez v4, :cond_e

    .line 563
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    const-string v9, "Cannot initiate"

    invoke-direct {v5, v8, v9}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 564
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_e
    iget-object v9, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    invoke-interface {v9, v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 565
    const-string v8, "AKA Auth"

    invoke-direct {p0, v4, v8}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->afterRILrequest(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 566
    new-instance v5, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    .end local v5           #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    sget-object v8, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v5, v8, v0}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 568
    .restart local v5       #serviceSimCardType:Lcom/orange/authentication/simcard/ServiceSimCardType;
    :cond_f
    #getter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v4}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$100(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto/16 :goto_2

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 484
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public akaAuthentication([B[B)Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    .locals 8
    .parameter "rand"
    .parameter "autn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    .line 268
    const/4 v2, 0x0

    .line 273
    .local v2, error:Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v6

    if-nez v6, :cond_0

    .line 275
    const-string v2, "Permission denied"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 276
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-object v6

    .line 280
    :cond_0
    if-nez p1, :cond_1

    .line 281
    const-string v2, "rand is null"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 282
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 340
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_1
    if-nez p2, :cond_2

    .line 285
    :try_start_1
    const-string v2, "autn is null"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 286
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    array-length v6, p1

    if-eq v6, v7, :cond_3

    .line 290
    const-string v2, "size of the rand array is not valid"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 291
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_3
    array-length v6, p2

    if-eq v6, v7, :cond_4

    .line 294
    const-string v2, "size of the autn array is not valid"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 295
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_4
    const/16 v6, 0x28

    new-array v0, v6, [B

    .line 302
    .local v0, akaRequestData:[B
    const/4 v3, 0x0

    .line 303
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/16 v6, 0x15

    aput-byte v6, v0, v3

    .line 304
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x7

    aput-byte v6, v0, v4

    .line 305
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/4 v6, 0x0

    aput-byte v6, v0, v3

    .line 306
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x28

    aput-byte v6, v0, v4

    .line 310
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v6, 0x10

    aput-byte v6, v0, v3

    .line 311
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x0

    aput-byte v6, v0, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_2
    invoke-static {p1, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 318
    add-int/lit8 v3, v3, 0x10

    .line 320
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v6, 0x10

    :try_start_3
    aput-byte v6, v0, v3

    .line 321
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x0

    aput-byte v6, v0, v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 323
    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_4
    invoke-static {p2, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 330
    :try_start_5
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 331
    .local v5, message:Landroid/os/Message;
    if-nez v5, :cond_5

    .line 332
    const-string v2, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 333
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    .end local v5           #message:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 315
    .restart local v1       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 316
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 324
    .end local v1           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 325
    .restart local v1       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 326
    new-instance v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;

    invoke-direct {v6, v7, v2}, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v5       #message:Landroid/os/Message;
    :cond_5
    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/orange/authentication/simcard/ServiceAkaAuthenticationResult;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public getSimCardType()Lcom/orange/authentication/simcard/ServiceSimCardType;
    .locals 5

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 183
    .local v1, error:Ljava/lang/String;
    :try_start_0
    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    const-string v1, "Permission denied"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 187
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-object v3

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 192
    .local v2, message:Landroid/os/Message;
    if-nez v2, :cond_1

    .line 193
    const-string v1, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 194
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v2           #message:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 201
    new-instance v3, Lcom/orange/authentication/simcard/ServiceSimCardType;

    sget-object v4, Lcom/orange/authentication/simcard/ServiceSimCardType$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceSimCardType$Error;

    invoke-direct {v3, v4, v1}, Lcom/orange/authentication/simcard/ServiceSimCardType;-><init>(Lcom/orange/authentication/simcard/ServiceSimCardType$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v2       #message:Landroid/os/Message;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/orange/authentication/simcard/ServiceSimCardType;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public gsmAuthentication([B)Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    .locals 8
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x10

    .line 211
    const/4 v1, 0x0

    .line 215
    .local v1, error:Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->checkPermission()Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    const-string v1, "Permission denied"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 219
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->PERM_DENIED:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-object v6

    .line 223
    :cond_0
    if-nez p1, :cond_1

    .line 224
    const-string v1, "rand is null"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 225
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->NULL_POINTER_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 258
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    array-length v6, p1

    if-eq v6, v7, :cond_2

    .line 228
    const-string v1, "size of the rand array is not valid"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 229
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->ILLEGAL_ARG_EX:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    const/16 v6, 0x14

    new-array v2, v6, [B

    .line 235
    .local v2, gsmRequestData:[B
    const/4 v3, 0x0

    .line 236
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/16 v6, 0x15

    aput-byte v6, v2, v3

    .line 237
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/4 v6, 0x6

    aput-byte v6, v2, v4

    .line 238
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/4 v6, 0x0

    aput-byte v6, v2, v3

    .line 239
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    const/16 v6, 0x14

    aput-byte v6, v2, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    const/4 v6, 0x0

    const/16 v7, 0x10

    :try_start_2
    invoke-static {p1, v6, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    :try_start_3
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRILrequestsHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 249
    .local v5, message:Landroid/os/Message;
    if-nez v5, :cond_3

    .line 250
    const-string v1, "Can not obtain message from mRILrequestsHandler"

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 251
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v5           #message:Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 243
    .restart local v0       #e:Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System.arraycopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 244
    new-instance v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;

    sget-object v7, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;->INTERNAL_ERR:Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;

    invoke-direct {v6, v7, v1}, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;-><init>(Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult$Error;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v5       #message:Landroid/os/Message;
    :cond_3
    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->sendMessage(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/orange/authentication/simcard/ServiceGsmAuthenticationResult;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage with seq number="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 589
    const/4 v3, 0x0

    .line 591
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 609
    const-string v5, "respons.what default"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    .line 610
    const/4 v4, 0x0

    .line 656
    .end local v3           #result:Ljava/lang/Object;
    :goto_0
    return v4

    .line 593
    .restart local v3       #result:Ljava/lang/Object;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->hanleGetCardState(Landroid/os/Message;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 620
    .end local v3           #result:Ljava/lang/Object;
    :goto_1
    iget-object v6, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    monitor-enter v6

    .line 624
    :try_start_1
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 625
    .local v2, itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 626
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;

    .line 628
    .local v1, element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    iget v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mSequenceId:I

    iget v7, p1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v5, v7, :cond_0

    .line 634
    :try_start_2
    const-string v5, "notify"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V

    .line 635
    iget-object v7, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 637
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mIsResponseValid:Z

    .line 638
    #setter for: Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mResponse:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->access$102(Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 641
    iget-object v5, v1, Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;->mCallingThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 645
    :goto_2
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 646
    :try_start_4
    const-string v5, "notified"

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Logi(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 654
    .end local v1           #element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    :cond_1
    :goto_3
    :try_start_5
    monitor-exit v6

    goto :goto_0

    .end local v2           #itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 597
    .restart local v3       #result:Ljava/lang/Object;
    :pswitch_1
    :try_start_6
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->handleGsmAuthResponse(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v3

    .line 598
    goto :goto_1

    .line 605
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->handleAkaAuthResponse(Landroid/os/Message;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v3

    .line 606
    goto :goto_1

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught throwable in handle response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V

    goto :goto_1

    .line 642
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v3           #result:Ljava/lang/Object;
    .restart local v1       #element:Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;
    .restart local v2       #itr:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/orange/authentication/simcard/SimCardAuthenticationService$RequestThread;>;"
    :cond_2
    :try_start_7
    iget-object v5, p0, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->mRequestOriginatorArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 645
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 647
    :catch_1
    move-exception v0

    .line 648
    .restart local v0       #e:Ljava/lang/Throwable;
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught throwable while notifying: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/orange/authentication/simcard/SimCardAuthenticationService;->Loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
