.class Lcom/android/OriginalSettings/vpn2/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field dnsServers:Ljava/lang/String;

.field ipsecCaCert:Ljava/lang/String;

.field ipsecIdentifier:Ljava/lang/String;

.field ipsecSecret:Ljava/lang/String;

.field ipsecUserCert:Ljava/lang/String;

.field final key:Ljava/lang/String;

.field l2tpSecret:Ljava/lang/String;

.field mppe:Z

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field routes:Ljava/lang/String;

.field saveLogin:Z

.field searchDomains:Ljava/lang/String;

.field server:Ljava/lang/String;

.field type:I

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->mppe:Z

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->saveLogin:Z

    .line 59
    iput-object p1, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->key:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static decode(Ljava/lang/String;[B)Lcom/android/OriginalSettings/vpn2/VpnProfile;
    .locals 9
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    if-nez p0, :cond_0

    move-object v0, v2

    .line 98
    :goto_0
    return-object v0

    .line 68
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v6, "\u0000"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, values:[Ljava/lang/String;
    array-length v5, v1

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    move-object v0, v2

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 76
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    .line 77
    iget v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    if-ltz v5, :cond_2

    iget v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    if-le v5, v8, :cond_3

    :cond_2
    move-object v0, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_3
    const/4 v5, 0x2

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 81
    const/4 v5, 0x3

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    .line 82
    const/4 v5, 0x4

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    .line 83
    const/4 v5, 0x5

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 84
    const/4 v5, 0x6

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 85
    const/4 v5, 0x7

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    .line 86
    const/16 v5, 0x8

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->mppe:Z

    .line 87
    const/16 v5, 0x9

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 88
    const/16 v5, 0xa

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 89
    const/16 v5, 0xb

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 90
    const/16 v5, 0xc

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 91
    const/16 v5, 0xd

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 93
    iget-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    iput-boolean v3, v0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->saveLogin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 95
    .end local v0           #profile:Lcom/android/OriginalSettings/vpn2/VpnProfile;
    .end local v1           #values:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v2

    .line 98
    goto/16 :goto_0
.end method


# virtual methods
.method encode()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->username:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->password:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 106
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method
