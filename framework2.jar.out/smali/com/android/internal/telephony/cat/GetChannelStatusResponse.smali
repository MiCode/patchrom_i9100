.class Lcom/android/internal/telephony/cat/GetChannelStatusResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field channelIds:[Z

.field i:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;[Z)V
    .locals 1
    .parameter "iter"
    .parameter "chIds"

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    .line 490
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    .line 491
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    .line 492
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .parameter "buf"

    .prologue
    .line 441
    const/4 v5, 0x0

    .line 442
    .local v5, z:I
    const/4 v0, 0x0

    .line 443
    .local v0, bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    :goto_0
    const/4 v6, 0x7

    if-ge v5, v6, :cond_4

    .line 444
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 445
    iget-object v6, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 448
    .restart local v0       #bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v4, v6, 0x80

    .line 449
    .local v4, tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 450
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 452
    const/4 v2, 0x0

    .line 453
    .local v2, s:B
    iget v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v6, v6, 0x7

    int-to-byte v2, v6

    .line 456
    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/TransportLevel;->isLocal()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    move-object v3, v0

    .line 457
    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 458
    .local v3, server:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-byte v6, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v2

    int-to-byte v2, v6

    .line 467
    .end local v3           #server:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 468
    iget-byte v6, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    const-string v6, "GetChannelStatusResponse-wrote all"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    .end local v2           #s:B
    .end local v4           #tag:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .restart local v2       #s:B
    .restart local v4       #tag:I
    :cond_3
    move-object v1, v0

    .line 461
    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 462
    .local v1, cl:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    iget-boolean v6, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v6, :cond_1

    .line 463
    or-int/lit8 v6, v2, -0x80

    int-to-byte v2, v6

    goto :goto_1

    .line 487
    .end local v1           #cl:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    .end local v2           #s:B
    .end local v4           #tag:I
    :cond_4
    return-void
.end method
