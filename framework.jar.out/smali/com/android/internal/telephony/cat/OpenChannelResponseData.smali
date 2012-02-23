.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

.field param:Lcom/android/internal/telephony/cat/OpenChannelParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 272
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 273
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 348
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 349
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 1
    .parameter "con"

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 272
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 273
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 344
    iput-object p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 345
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 346
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 10
    .parameter "buf"

    .prologue
    const/4 v9, 0x2

    .line 276
    const-string v6, " OpenChannelResponseData: format() "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    if-eqz v6, :cond_2

    .line 283
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v4, v6, 0x80

    .line 284
    .local v4, tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 285
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, s:B
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget v6, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v6, v6, 0x7

    int-to-byte v2, v6

    .line 290
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/TransportLevel;->isLocal()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 291
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 292
    .local v3, server:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-byte v6, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v2

    int-to-byte v2, v6

    .line 301
    .end local v3           #server:Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 302
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-byte v6, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 306
    .end local v2           #s:B
    .end local v4           #tag:I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 308
    :cond_3
    const-string v6, " OpenChannelResponseData: format() : bipcon is client including Bearer description terminal reponse"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v4, v6, 0x80

    .line 310
    .restart local v4       #tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 315
    .local v5, tmp:Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v6, v6, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v6, v6, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    packed-switch v6, :pswitch_data_0

    .line 326
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {p1, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 332
    .end local v4           #tag:I
    .end local v5           #tmp:Ljava/io/ByteArrayOutputStream;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget v0, v6, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    .line 333
    .local v0, bufsize:I
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v4, v6, 0x80

    .line 334
    .restart local v4       #tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 337
    shr-int/lit8 v6, v0, 0x8

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 341
    return-void

    .line 295
    .end local v0           #bufsize:I
    .restart local v2       #s:B
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 296
    .local v1, cl:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    iget-boolean v6, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v6, :cond_1

    .line 297
    or-int/lit8 v6, v2, -0x80

    int-to-byte v2, v6

    goto/16 :goto_0

    .line 319
    .end local v1           #cl:Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    .end local v2           #s:B
    .restart local v5       #tmp:Ljava/io/ByteArrayOutputStream;
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/cat/BearerCSD;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 322
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/cat/BearerGPRS;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 332
    .end local v4           #tag:I
    .end local v5           #tmp:Ljava/io/ByteArrayOutputStream;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget v0, v6, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    goto :goto_2

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
