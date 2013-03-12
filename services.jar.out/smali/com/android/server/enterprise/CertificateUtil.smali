.class Lcom/android/server/enterprise/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    .line 88
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/CertificateUtil;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 90
    iput-object v1, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 91
    iput-object v1, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    return-void
.end method

.method private varargs convertToPem([Ljava/lang/Object;)[B
    .locals 12
    .parameter "objects"

    .prologue
    .line 229
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v1, bao:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 231
    .local v6, osw:Ljava/io/OutputStreamWriter;
    new-instance v7, Lcom/android/org/bouncycastle/openssl/PEMWriter;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 232
    .local v7, pw:Lcom/android/org/bouncycastle/openssl/PEMWriter;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 233
    .local v5, o:Ljava/lang/Object;
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 234
    .end local v5           #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/openssl/PEMWriter;->close()V

    .line 235
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 236
    .local v8, ret:[B
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return-object v8

    .line 239
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #bao:Ljava/io/ByteArrayOutputStream;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #osw:Ljava/io/OutputStreamWriter;
    .end local v7           #pw:Lcom/android/org/bouncycastle/openssl/PEMWriter;
    .end local v8           #ret:[B
    :catch_0
    move-exception v2

    .line 241
    .local v2, e:Ljava/io/IOException;
    const-string v9, "CertificateUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convertToPem(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method private extractPkcs12([BLjava/lang/String;)Z
    .locals 10
    .parameter "data"
    .parameter "password"

    .prologue
    const/4 v6, 0x0

    .line 182
    if-nez p2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v6

    .line 186
    :cond_1
    :try_start_0
    const-string v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 187
    .local v4, keystore:Ljava/security/KeyStore;
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 188
    .local v5, passwordProtection:Ljava/security/KeyStore$PasswordProtection;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 190
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 191
    .local v1, aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 195
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 200
    .local v3, entry:Ljava/security/KeyStore$Entry;
    instance-of v7, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_2

    .line 201
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v3           #entry:Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 204
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #aliases:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4           #keystore:Ljava/security/KeyStore;
    .end local v5           #passwordProtection:Ljava/security/KeyStore$PasswordProtection;
    :catch_0
    move-exception v2

    .line 205
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "CertificateUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractPkcs12(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .locals 11
    .parameter "entry"

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 212
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    iput-object v8, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 214
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 215
    .local v5, certs:[Ljava/security/cert/Certificate;
    const-string v8, "CertificateUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# certs extracted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    array-length v8, v5

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 217
    .local v3, caCerts:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v1, v5

    .local v1, arr$:[Ljava/security/cert/Certificate;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v1, v6

    .line 218
    .local v2, c:Ljava/security/cert/Certificate;
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 219
    .local v4, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 222
    .end local v2           #c:Ljava/security/cert/Certificate;
    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    :cond_1
    const-string v8, "CertificateUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "# ca certs extracted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    const/4 v8, 0x1

    monitor-exit p0

    return v8

    .line 211
    .end local v1           #arr$:[Ljava/security/cert/Certificate;
    .end local v3           #caCerts:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .parameter "cert"

    .prologue
    const/4 v3, 0x0

    .line 169
    :try_start_0
    const-string v4, "2.5.29.19"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    .local v0, basicConstraints:[B
    if-nez v0, :cond_0

    .line 177
    .end local v0           #basicConstraints:[B
    :goto_0
    return v3

    .line 172
    .restart local v0       #basicConstraints:[B
    :cond_0
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 173
    .local v2, obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    check-cast v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .end local v2           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v0

    .line 174
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 175
    .restart local v2       #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local v2           #obj:Lcom/android/org/bouncycastle/asn1/DERObject;
    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 176
    .end local v0           #basicConstraints:[B
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private parseCert([B)Z
    .locals 7
    .parameter "bytes"

    .prologue
    .line 146
    const/4 v3, 0x0

    .line 148
    .local v3, ret:Z
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 149
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 151
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const-string v4, "CertificateUtil"

    const-string v5, "got a CA cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v4, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v3, 0x1

    .line 164
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :goto_0
    return v3

    .line 156
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    :cond_0
    const-string v4, "CertificateUtil"

    const-string v5, "got a user cert"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object v0, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v3, 0x1

    goto :goto_0

    .line 160
    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 161
    .local v2, e:Ljava/security/cert/CertificateException;
    const-string v4, "CertificateUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseCert(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "type"
    .parameter "data"
    .parameter "name"
    .parameter "password"

    .prologue
    const/4 v10, 0x1

    .line 96
    const/4 v4, 0x0

    .line 100
    .local v4, ret:Z
    const-string v5, ".crt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CERT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/CertificateUtil;->parseCert([B)Z

    move-result v4

    .line 109
    :goto_0
    if-ne v4, v10, :cond_1

    .line 111
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 112
    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 114
    .local v1, caCerts:[Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/CertificateUtil;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v4

    .line 115
    if-eqz v4, :cond_5

    .line 117
    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    .local v0, ca:Ljava/security/cert/X509Certificate;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mCertStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "CertificateUtil"

    const-string v6, "Failed installing to System User Trust Store"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 137
    .end local v0           #ca:Ljava/security/cert/X509Certificate;
    .end local v1           #caCerts:[Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 138
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "CertificateUtil"

    const-string v6, "install(): "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v4

    .line 102
    :cond_2
    const-string v5, ".p12"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "PKCS12"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/android/server/enterprise/CertificateUtil;->extractPkcs12([BLjava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 106
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 125
    .restart local v1       #caCerts:[Ljava/lang/Object;
    :cond_5
    :try_start_3
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CaCerts put state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v1           #caCerts:[Ljava/lang/Object;
    :cond_6
    if-ne v4, v10, :cond_7

    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_7

    .line 128
    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v9, v7, v8

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/CertificateUtil;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v4

    .line 130
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserCert put state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_7
    if-ne v4, v10, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v5, :cond_1

    .line 133
    iget-object v5, p0, Lcom/android/server/enterprise/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRPKEY_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    aput-object v9, v7, v8

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/CertificateUtil;->convertToPem([Ljava/lang/Object;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v4

    .line 135
    const-string v5, "CertificateUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UserPKey put state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method
