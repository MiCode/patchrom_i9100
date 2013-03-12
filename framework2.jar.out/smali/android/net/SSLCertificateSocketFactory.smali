.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier; = null

.field private static final INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager; = null

.field private static final TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"


# instance fields
.field private final mHandshakeTimeoutMillis:I

.field private mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mKeyManager:[Ljavax/net/ssl/KeyManager;

.field private mKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private mNpnProtocols:[B

.field private final mSecure:Z

.field private mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

.field private mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/SSLCertificateSocketFactory$1;

    invoke-direct {v2}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    .line 85
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "handshakeTimeoutMillis"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    .line 105
    return-void
.end method

.method private constructor <init>(ILandroid/net/SSLSessionCache;Z)V
    .locals 1
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"
    .parameter "secure"

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 88
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManager:[Ljavax/net/ssl/KeyManager;

    .line 91
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 92
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 93
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 94
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 95
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 109
    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    .line 110
    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    .line 111
    iput-boolean p3, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    .line 112
    return-void

    .line 110
    :cond_0
    iget-object v0, p2, Landroid/net/SSLSessionCache;->mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    goto :goto_0
.end method

.method public static getDefault(I)Ljavax/net/SocketFactory;
    .locals 3
    .parameter "handshakeTimeoutMillis"

    .prologue
    .line 122
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"

    .prologue
    .line 135
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static getDefault([Ljavax/net/ssl/KeyManager;ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .parameter "keyManager"
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"

    .prologue
    .line 140
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    .line 141
    .local v0, ret:Landroid/net/SSLCertificateSocketFactory;
    iput-object p0, v0, Landroid/net/SSLCertificateSocketFactory;->mKeyManager:[Ljavax/net/ssl/KeyManager;

    .line 142
    return-object v0
.end method

.method private declared-synchronized getDelegate()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    .line 246
    iget-boolean v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v0, :cond_2

    .line 247
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    sget-object v1, Landroid/net/SSLCertificateSocketFactory;->INSECURE_TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 253
    :cond_1
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_1
    monitor-exit p0

    return-object v0

    .line 249
    :cond_2
    :try_start_1
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 256
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Landroid/net/SSLCertificateSocketFactory;->makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 258
    :cond_4
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 3
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"

    .prologue
    .line 179
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public static getInsecure(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"

    .prologue
    .line 158
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    return-object v0
.end method

.method public static getInsecure([Ljavax/net/ssl/KeyManager;ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2
    .parameter "keyManager"
    .parameter "handshakeTimeoutMillis"
    .parameter "cache"

    .prologue
    .line 163
    new-instance v0, Landroid/net/SSLCertificateSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILandroid/net/SSLSessionCache;Z)V

    .line 164
    .local v0, ret:Landroid/net/SSLCertificateSocketFactory;
    iput-object p0, v0, Landroid/net/SSLCertificateSocketFactory;->mKeyManager:[Ljavax/net/ssl/KeyManager;

    .line 165
    return-object v0
.end method

.method private static isSslCheckRelaxed()Z
    .locals 2

    .prologue
    .line 238
    const-string v0, "1"

    const-string v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    const-string v1, "socket.relaxsslcheck"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeSocketFactory([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .parameter "keyManagers"
    .parameter "trustManagers"

    .prologue
    .line 224
    :try_start_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;

    invoke-direct {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;-><init>()V

    .line 227
    .local v1, sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    iget-object v2, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManager:[Ljavax/net/ssl/KeyManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 229
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v2

    iget-object v3, p0, Landroid/net/SSLCertificateSocketFactory;->mSessionCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V

    .line 230
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 233
    .end local v1           #sslContext:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLContextImpl;
    :goto_0
    return-object v2

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/security/KeyManagementException;
    const-string v2, "SSLCertificateSocketFactory"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method static varargs toNpnProtocolsList([[B)[B
    .locals 15
    .parameter "npnProtocols"

    .prologue
    .line 299
    array-length v12, p0

    if-nez v12, :cond_0

    .line 300
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "npnProtocols.length == 0"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 302
    :cond_0
    const/4 v11, 0x0

    .line 303
    .local v11, totalLength:I
    move-object v0, p0

    .local v0, arr$:[[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v10, v0, v3

    .line 304
    .local v10, s:[B
    array-length v12, v10

    if-eqz v12, :cond_1

    array-length v12, v10

    const/16 v13, 0xff

    if-le v12, v13, :cond_2

    .line 305
    :cond_1
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "s.length == 0 || s.length > 255: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 307
    :cond_2
    array-length v12, v10

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    .end local v10           #s:[B
    :cond_3
    new-array v9, v11, [B

    .line 310
    .local v9, result:[B
    const/4 v7, 0x0

    .line 311
    .local v7, pos:I
    move-object v0, p0

    array-length v5, v0

    const/4 v3, 0x0

    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    move v8, v7

    .end local v0           #arr$:[[B
    .end local v5           #len$:I
    .end local v7           #pos:I
    .local v8, pos:I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v10, v0, v4

    .line 312
    .restart local v10       #s:[B
    add-int/lit8 v7, v8, 0x1

    .end local v8           #pos:I
    .restart local v7       #pos:I
    array-length v12, v10

    int-to-byte v12, v12

    aput-byte v12, v9, v8

    .line 313
    move-object v1, v10

    .local v1, arr$:[B
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v8, v7

    .end local v7           #pos:I
    .restart local v8       #pos:I
    :goto_2
    if-ge v3, v6, :cond_4

    aget-byte v2, v1, v3

    .line 314
    .local v2, b:B
    add-int/lit8 v7, v8, 0x1

    .end local v8           #pos:I
    .restart local v7       #pos:I
    aput-byte v2, v9, v8

    .line 313
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7           #pos:I
    .restart local v8       #pos:I
    goto :goto_2

    .line 311
    .end local v2           #b:B
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 317
    .end local v1           #arr$:[B
    .end local v6           #len$:I
    .end local v10           #s:[B
    :cond_5
    return-object v9
.end method

.method public static verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .parameter "socket"
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    instance-of v2, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v2, :cond_0

    .line 202
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempt to verify non-SSL socket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_0
    invoke-static {}, Landroid/net/SSLCertificateSocketFactory;->isSslCheckRelaxed()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v1, p0

    .line 208
    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 209
    .local v1, ssl:Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 211
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 212
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_1

    .line 213
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_1
    sget-object v2, Landroid/net/SSLCertificateSocketFactory;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v2, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot verify hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    .end local v1           #ssl:Ljavax/net/ssl/SSLSocket;
    :cond_2
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 371
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 372
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 373
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 436
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 437
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 438
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 439
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 441
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 419
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 420
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 421
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 422
    invoke-static {v0, p1}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 424
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .parameter "addr"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 403
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 404
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 405
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2
    .parameter "addr"
    .parameter "port"
    .parameter "localAddr"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 388
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 389
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 390
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .parameter "k"
    .parameter "host"
    .parameter "port"
    .parameter "close"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 352
    .local v0, s:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 353
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mHandshakeTimeoutMillis:I

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 354
    iget-boolean v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSecure:Z

    if-eqz v1, :cond_0

    .line 355
    invoke-static {v0, p2}, Landroid/net/SSLCertificateSocketFactory;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 357
    :cond_0
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNpnSelectedProtocol(Ljava/net/Socket;)[B
    .locals 1
    .parameter "socket"

    .prologue
    .line 328
    check-cast p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getNpnSelectedProtocol()[B

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/net/SSLCertificateSocketFactory;->getDelegate()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .locals 1
    .parameter "keyManagers"

    .prologue
    const/4 v0, 0x0

    .line 335
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 338
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 339
    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mInsecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 340
    return-void
.end method

.method public setNpnProtocols([[B)V
    .locals 1
    .parameter "npnProtocols"

    .prologue
    .line 291
    invoke-static {p1}, Landroid/net/SSLCertificateSocketFactory;->toNpnProtocolsList([[B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mNpnProtocols:[B

    .line 292
    return-void
.end method

.method public setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 1
    .parameter "trustManager"

    .prologue
    .line 266
    iput-object p1, p0, Landroid/net/SSLCertificateSocketFactory;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mSecureFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 272
    return-void
.end method
