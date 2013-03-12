.class Lcom/android/internal/telephony/cat/udpRxThread;
.super Ljava/lang/Object;
.source "CatBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

.field volatile stopRequestUDP:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 487
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    .line 488
    iput-object p1, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 490
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 434
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    if-nez v6, :cond_3

    .line 436
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 437
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    .line 440
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->isBIPCmdBeingProcessed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 443
    iget-object v6, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v2, Ljava/net/DatagramSocket;

    .line 444
    .local v2, ds:Ljava/net/DatagramSocket;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget v5, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    .line 446
    .local v5, size:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum UDP Buffer Size that can be received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    new-array v0, v5, [B

    .line 449
    .local v0, dataReceived:[B
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 450
    .local v1, dp:Ljava/net/DatagramPacket;
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Length of UDP data received from network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v6, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size of rxBuf : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    iget-object v6, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/udpRxThread;->conn:Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 467
    .end local v0           #dataReceived:[B
    .end local v1           #dp:Ljava/net/DatagramPacket;
    .end local v2           #ds:Ljava/net/DatagramSocket;
    .end local v5           #size:I
    :catch_0
    move-exception v3

    .line 469
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 471
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 472
    iput-boolean v10, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_0

    .line 460
    .end local v3           #e:Ljava/io/IOException;
    :cond_2
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 461
    :catch_1
    move-exception v3

    .line 462
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "Interrupt Received!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 474
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v4

    .line 476
    .local v4, ee:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 478
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 479
    iput-boolean v10, p0, Lcom/android/internal/telephony/cat/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_0

    .line 485
    .end local v4           #ee:Ljava/lang/Exception;
    :cond_3
    return-void
.end method
