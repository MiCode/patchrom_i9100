.class public Lcom/android/server/pm/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Installer"

.field private static mInstaller:Lcom/android/server/pm/Installer;


# instance fields
.field buf:[B

.field buflen:I

.field mIn:Ljava/io/InputStream;

.field private mKeyStore:Landroid/security/KeyStore;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/pm/Installer;->buf:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/Installer;->buflen:I

    .line 53
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private connect()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    .line 85
    :goto_0
    return v2

    .line 70
    :cond_0
    const-string v3, "Installer"

    const-string v4, "connecting..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 74
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v3, "installd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 77
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 79
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    .line 80
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 82
    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    .line 83
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private deleteKey(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete_key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    const-string v0, "Installer"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mSocket:Landroid/net/LocalSocket;

    .line 106
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    .line 107
    iput-object v2, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    .line 108
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_2

    .line 98
    :catch_1
    move-exception v0

    goto :goto_1

    .line 93
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private execute(Ljava/lang/String;)I
    .locals 3
    .parameter "cmd"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, res:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 210
    :goto_0
    return v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getEncryptionKey()[B
    .locals 5

    .prologue
    .line 514
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 515
    .local v3, srng:Ljava/security/SecureRandom;
    const/16 v4, 0x48

    new-array v2, v4, [B

    .line 516
    .local v2, retKey:[B
    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 517
    invoke-static {v2}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, encKey:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 522
    :goto_0
    return-object v4

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/pm/Installer;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/android/server/pm/Installer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/server/pm/Installer;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    monitor-exit v1

    return-object v0

    .line 61
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0}, Lcom/android/server/pm/Installer;-><init>()V

    sput-object v0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 62
    sget-object v0, Lcom/android/server/pm/Installer;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readBytes([BI)Z
    .locals 7
    .parameter "buffer"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, off:I
    if-gez p2, :cond_1

    .line 133
    :goto_0
    return v3

    .line 121
    .local v0, count:I
    :cond_0
    add-int/2addr v2, v0

    .line 114
    .end local v0           #count:I
    :cond_1
    if-eq v2, p2, :cond_2

    .line 116
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/Installer;->mIn:Ljava/io/InputStream;

    sub-int v5, p2, v2

    invoke-virtual {v4, p1, v2, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 117
    .restart local v0       #count:I
    if-gtz v0, :cond_0

    .line 118
    const-string v4, "Installer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0           #count:I
    :cond_2
    :goto_1
    if-ne v2, p2, :cond_3

    .line 131
    const/4 v3, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "Installer"

    const-string v5, "read exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    .end local v1           #ex:Ljava/io/IOException;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    goto :goto_0
.end method

.method private readReply()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    iput v1, p0, Lcom/android/server/pm/Installer;->buflen:I

    .line 139
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/Installer;->readBytes([BI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/android/server/pm/Installer;->buf:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int v0, v3, v4

    .line 142
    .local v0, len:I
    if-lt v0, v2, :cond_2

    const/16 v3, 0x400

    if-le v0, v3, :cond_3

    .line 143
    :cond_2
    const-string v2, "Installer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/Installer;->buf:[B

    invoke-direct {p0, v3, v0}, Lcom/android/server/pm/Installer;->readBytes([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    iput v0, p0, Lcom/android/server/pm/Installer;->buflen:I

    move v1, v2

    .line 150
    goto :goto_0
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "cmd"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const-string v1, "Installer"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "-1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit p0

    return-object v0

    .line 177
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    const-string v1, "Installer"

    const-string v2, "write command failed? reconnect!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/pm/Installer;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    :cond_1
    const-string v0, "-1"

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->readReply()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/pm/Installer;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 196
    .local v0, s:Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v0           #s:Ljava/lang/String;
    :cond_3
    const-string v0, "-1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .locals 9
    .parameter "_cmd"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 155
    .local v0, cmd:[B
    array-length v2, v0

    .line 156
    .local v2, len:I
    if-lt v2, v3, :cond_0

    const/16 v5, 0x400

    if-le v2, v5, :cond_1

    :cond_0
    move v3, v4

    .line 168
    :goto_0
    return v3

    .line 158
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/Installer;->buf:[B

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 159
    iget-object v5, p0, Lcom/android/server/pm/Installer;->buf:[B

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 161
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    iget-object v6, p0, Lcom/android/server/pm/Installer;->buf:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 162
    iget-object v5, p0, Lcom/android/server/pm/Installer;->mOut:Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "Installer"

    const-string v5, "write error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->disconnect()V

    move v3, v4

    .line 166
    goto :goto_0
.end method


# virtual methods
.method public clearUserData(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "userId"

    .prologue
    const/16 v2, 0x20

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public cloneUserData(IIZ)I
    .locals 3
    .parameter "srcUserId"
    .parameter "targetUserId"
    .parameter "copyData"

    .prologue
    const/16 v2, 0x20

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cloneuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    if-eqz p3, :cond_0

    const/16 v1, 0x31

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 331
    :cond_0
    const/16 v1, 0x30

    goto :goto_0
.end method

.method public createUserData(Ljava/lang/String;II)I
    .locals 3
    .parameter "name"
    .parameter "uid"
    .parameter "userId"

    .prologue
    const/16 v2, 0x20

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public decrypt(Ljava/lang/String;)I
    .locals 6
    .parameter "pkgName"

    .prologue
    const/16 v4, 0x20

    .line 436
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 437
    .local v1, key:[B
    if-nez v1, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->getEncryptionKey()[B

    move-result-object v1

    .line 439
    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1, v1}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 440
    const-string v3, "Installer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save encryption key for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v2, -0x1

    .line 452
    :goto_0
    return v2

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "decrypt"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v2

    .line 452
    .local v2, rc:I
    goto :goto_0
.end method

.method public deleteCacheFiles(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public dexopt(Ljava/lang/String;IZ)I
    .locals 3
    .parameter "apkPath"
    .parameter "uid"
    .parameter "isPublic"

    .prologue
    const/16 v2, 0x20

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dexopt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    if-eqz p3, :cond_0

    const-string v1, " 1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 231
    :cond_0
    const-string v1, " 0"

    goto :goto_0
.end method

.method public fixUid(Ljava/lang/String;II)I
    .locals 3
    .parameter "name"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fixuid"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public freeCache(J)I
    .locals 2
    .parameter "freeStorageSize"

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freecache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSizeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageStats;)I
    .locals 7
    .parameter "pkgName"
    .parameter "apkPath"
    .parameter "fwdLockApkPath"
    .parameter "asecPath"
    .parameter "pStats"

    .prologue
    const/4 v4, -0x1

    const/16 v6, 0x20

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "getsize"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    if-eqz p3, :cond_1

    .end local p3
    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    if-eqz p4, :cond_2

    .end local p4
    :goto_1
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/pm/Installer;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, s:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, res:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    .line 389
    :cond_0
    :goto_2
    return v4

    .line 372
    .end local v2           #res:[Ljava/lang/String;
    .end local v3           #s:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_1
    const-string p3, "!"

    goto :goto_0

    .line 374
    .end local p3
    :cond_2
    const-string p4, "!"

    goto :goto_1

    .line 383
    .end local p4
    .restart local v2       #res:[Ljava/lang/String;
    .restart local v3       #s:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 384
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 385
    const/4 v5, 0x3

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 386
    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 387
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_2

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_2
.end method

.method public install(Ljava/lang/String;II)I
    .locals 3
    .parameter "name"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "dataPath"
    .parameter "nativeLibPath"

    .prologue
    const/4 v1, -0x1

    .line 398
    if-nez p1, :cond_0

    .line 399
    const-string v2, "Installer"

    const-string v3, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :goto_0
    return v1

    .line 401
    :cond_0
    if-nez p2, :cond_1

    .line 402
    const-string v2, "Installer"

    const-string v3, "unlinkNativeLibraryDirectory nativeLibPath is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "linklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public moveFiles()I
    .locals 1

    .prologue
    .line 394
    const-string v0, "movefiles"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public movedex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "srcPath"
    .parameter "dstPath"

    .prologue
    const/16 v2, 0x20

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movedex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public overlayTmpfs(Ljava/lang/String;II)I
    .locals 3
    .parameter "name"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tmpfs"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public ping()Z
    .locals 1

    .prologue
    .line 336
    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "userId"

    .prologue
    const/16 v2, 0x20

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public removeUserDataDirs(I)I
    .locals 2
    .parameter "userId"

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmuser"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "oldname"
    .parameter "newname"

    .prologue
    const/16 v2, 0x20

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public rmdex(Ljava/lang/String;)I
    .locals 2
    .parameter "codePath"

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rmdex"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setForwardLockPerm(Ljava/lang/String;I)I
    .locals 3
    .parameter "packagePathSuffix"
    .parameter "gid"

    .prologue
    const/16 v2, 0x20

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protect"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public unEncryptData(Ljava/lang/String;II)I
    .locals 5
    .parameter "pkgName"
    .parameter "uid"
    .parameter "gid"

    .prologue
    const/16 v3, 0x20

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "encrypt_disable"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    .line 494
    .local v1, rc:I
    if-nez v1, :cond_0

    .line 495
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v2}, Lcom/android/server/pm/Installer;->deleteKey(Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/android/server/pm/Installer;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 498
    :cond_0
    return v1
.end method

.method public unlinkNativeLibraryDirectory(Ljava/lang/String;)I
    .locals 3
    .parameter "dataPath"

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    const-string v1, "Installer"

    const-string v2, "unlinkNativeLibraryDirectory dataPath is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v1, -0x1

    .line 423
    :goto_0
    return v1

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unlinklib "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/Installer;->execute(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
