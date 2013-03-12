.class Lcom/android/internal/telephony/cat/CatBIPClientConnection;
.super Lcom/android/internal/telephony/cat/CatBIPConnection;
.source "CatBIPConnection.java"


# instance fields
.field ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

.field NetworkAccessname:Ljava/lang/String;

.field bDesc:Lcom/android/internal/telephony/cat/BearerDescription;

.field destination:Ljava/net/InetAddress;

.field in:Ljava/io/DataInputStream;

.field isLinkEstablished:Z

.field isfirstTime:Z

.field lastReadPosition:I

.field out:Ljava/io/DataOutputStream;

.field passwd:Ljava/lang/String;

.field receiver:Ljava/lang/Thread;

.field rxBuf:Ljava/io/ByteArrayOutputStream;

.field rxBytes:[B

.field socket:Ljava/lang/Object;

.field txBuf:Ljava/io/ByteArrayOutputStream;

.field txIndex:I

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "bearerDesc"
    .parameter "buffSize"
    .parameter "iface"
    .parameter "catBIPManager"
    .parameter "apn"
    .parameter "mode"
    .parameter "dest"
    .parameter "userName"
    .parameter "passwd"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/cat/CatBIPConnection;-><init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->bDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 115
    iput-object p5, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 116
    iput-object p8, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->userName:Ljava/lang/String;

    .line 117
    iput-object p9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->passwd:Ljava/lang/String;

    .line 118
    iput-object p6, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/cat/BearerMode;

    .line 119
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 120
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 122
    if-eqz p7, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p7, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "UnknownHostException while getting the Data destination IP Address"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    goto :goto_0
.end method


# virtual methods
.method public getRxData(I)[B
    .locals 6
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 248
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 279
    :goto_0
    return-object v1

    .line 251
    :cond_0
    const-string v3, "rxbuf.size != null!!"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    if-nez v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    .line 257
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rxBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    sub-int v0, v3, v4

    .line 260
    .local v0, bytesAvailable:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytesAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  rxBytes.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  lastReadPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    if-le p1, v0, :cond_2

    .line 262
    move p1, v0

    .line 264
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    new-array v1, p1, [B

    .line 267
    .local v1, tmp:[B
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    invoke-static {v3, v4, v1, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastReadPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 272
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBytes:[B

    .line 273
    const-string v2, "reset buffer rxbuf"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iput v5, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 278
    :cond_3
    const-string v2, "return now!!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setupStreams()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, s:Ljava/net/Socket;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening socket with"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v8, v8, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 139
    .local v5, tmp:[B
    const/4 v6, 0x0

    .local v6, x:I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 144
    const-string v7, "Opening TCP socket"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v3, Ljava/net/Socket;

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v8, v8, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-direct {v3, v7, v8}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v2           #s:Ljava/net/Socket;
    .local v3, s:Ljava/net/Socket;
    :try_start_1
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    .line 147
    const-string v7, "Opening input stream"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v7, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 149
    const-string v7, "Opening output stream"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 151
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/telephony/cat/tcpRxThread;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/cat/tcpRxThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 152
    const-string v7, "Created receiver thread"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 162
    .end local v3           #s:Ljava/net/Socket;
    .restart local v2       #s:Ljava/net/Socket;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 164
    const-string v7, "Successfully setup streams!"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    iget v8, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    .line 166
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    iget v8, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    .line 167
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->txIndex:I

    .line 168
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->lastReadPosition:I

    .line 169
    const-string v7, "txBuff & rxBuff created!"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 197
    return-void

    .line 155
    :cond_1
    const-string v7, "Opening UDP socket"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 157
    .local v0, ds:Ljava/net/DatagramSocket;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v8, v8, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v0, v7, v8}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 158
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    .line 159
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/telephony/cat/udpRxThread;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/cat/udpRxThread;-><init>(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 160
    const-string v7, "Created receiver thread"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 172
    .end local v0           #ds:Ljava/net/DatagramSocket;
    .end local v5           #tmp:[B
    .end local v6           #x:I
    :catch_0
    move-exception v4

    .line 173
    .local v4, ste:Ljava/net/SocketTimeoutException;
    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 174
    iput-boolean v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Socket Timeout Exception Socket is not connected\nlinkEstablished ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v7, Ljava/net/SocketTimeoutException;

    const-string v8, "TIMEOUT"

    invoke-direct {v7, v8}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 181
    .end local v4           #ste:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 182
    .local v1, io:Ljava/io/IOException;
    :goto_3
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    .line 183
    iput-boolean v10, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Exception while creating socket streams\nlinkEstablished ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    if-eqz v2, :cond_2

    .line 190
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 194
    :cond_2
    :goto_4
    throw v1

    .line 192
    :catch_2
    move-exception v7

    goto :goto_4

    .line 181
    .end local v1           #io:Ljava/io/IOException;
    .end local v2           #s:Ljava/net/Socket;
    .restart local v3       #s:Ljava/net/Socket;
    .restart local v5       #tmp:[B
    .restart local v6       #x:I
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #s:Ljava/net/Socket;
    .restart local v2       #s:Ljava/net/Socket;
    goto :goto_3

    .line 172
    .end local v2           #s:Ljava/net/Socket;
    .restart local v3       #s:Ljava/net/Socket;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3           #s:Ljava/net/Socket;
    .restart local v2       #s:Ljava/net/Socket;
    goto :goto_2
.end method

.method public terminateStreams()V
    .locals 6

    .prologue
    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the streams  for channel ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 204
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 207
    :cond_0
    const-string v4, "Closing input stream"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    if-eqz v4, :cond_1

    .line 209
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 211
    :cond_1
    const-string v4, "Closing output stream"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 215
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v3, Ljava/net/Socket;

    .line 216
    .local v3, s:Ljava/net/Socket;
    const-string v4, "Closing socket"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    if-eqz v3, :cond_3

    .line 218
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 220
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z

    .line 230
    .end local v3           #s:Ljava/net/Socket;
    :goto_0
    const-string v4, "Closed Streams Successfully"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    :goto_1
    return-void

    .line 222
    :cond_4
    const-string v4, "closing UDP socket"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramSocket;

    .line 225
    .local v0, ds:Ljava/net/DatagramSocket;
    if-eqz v0, :cond_5

    .line 226
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 228
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isfirstTime:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 232
    .end local v0           #ds:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v2

    .line 233
    .local v2, io:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception while terminating the streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    .end local v2           #io:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 236
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A generic Exception while terminating the streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
