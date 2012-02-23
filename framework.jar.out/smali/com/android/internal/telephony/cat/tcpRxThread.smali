.class Lcom/android/internal/telephony/cat/tcpRxThread;
.super Ljava/lang/Object;
.source "CatBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

.field volatile stopRequestTCP:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 422
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    .line 423
    iput-object p1, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 424
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 364
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    if-nez v5, :cond_4

    .line 366
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 367
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    .line 370
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isBIPCmdBeingProcessed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 373
    iget-object v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget v4, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    .line 375
    .local v4, size:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Maximum Packet Size negotiated by UICC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    new-array v0, v4, [B

    .line 379
    .local v0, dataReceived:[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    .line 380
    .local v3, oneByte:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length of data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 382
    iget-object v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 384
    iget-object v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 385
    const-string v5, "Read Data!!"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 402
    .end local v0           #dataReceived:[B
    .end local v3           #oneByte:I
    .end local v4           #size:I
    :catch_0
    move-exception v1

    .line 404
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 406
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    goto/16 :goto_0

    .line 387
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #dataReceived:[B
    .restart local v3       #oneByte:I
    .restart local v4       #size:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 388
    iget-object v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    const/4 v6, 0x5

    iput-byte v6, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 389
    iget-object v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V

    .line 390
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    .line 391
    const-string v5, "Connection terminated by BIP Server"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 409
    .end local v0           #dataReceived:[B
    .end local v3           #oneByte:I
    .end local v4           #size:I
    :catch_1
    move-exception v2

    .line 411
    .local v2, ee:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 413
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z

    goto/16 :goto_0

    .line 395
    .end local v2           #ee:Ljava/lang/Exception;
    :cond_3
    const-wide/16 v5, 0x64

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 396
    :catch_2
    move-exception v1

    .line 397
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "Interrupt Received!"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/tcpRxThread;->stopRequestTCP:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 420
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_4
    return-void
.end method
