.class Lcom/android/internal/telephony/cat/CatBIPServerConnection;
.super Lcom/android/internal/telephony/cat/CatBIPConnection;
.source "CatBIPConnection.java"


# instance fields
.field byteArrayWriter:Ljava/io/ByteArrayOutputStream;

.field lastReadPosition:I

.field linkState:B

.field listener:Ljava/lang/Thread;

.field reader:Ljava/io/BufferedInputStream;

.field server:Ljava/net/ServerSocket;

.field socket:Ljava/net/Socket;

.field storeSendData:Ljava/io/ByteArrayOutputStream;

.field writer:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 2
    .parameter "buffSize"
    .parameter "iface"
    .parameter "catBIPManager"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/CatBIPConnection;-><init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V

    .line 289
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    .line 291
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    .line 293
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    .line 294
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    .line 295
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    .line 296
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    .line 297
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    .line 303
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    .line 304
    iput v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->lastReadPosition:I

    .line 305
    return-void
.end method


# virtual methods
.method public terminateStreams()V
    .locals 3

    .prologue
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the streams  for channel ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->listener:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->server:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_3

    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_5

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 328
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_6

    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 331
    :cond_6
    const-string v1, "handleCloseChannel: Closed socket and all streams!"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseChannel; IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
