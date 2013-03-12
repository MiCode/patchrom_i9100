.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

.field mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

.field mBufferSize:I

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

.field mNetworkAccessName:Ljava/lang/String;

.field mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

.field mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

.field mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/DataDestinationAddress;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "bufferSize"
    .parameter "transportLevel"
    .parameter "dataDestinationAddress"
    .parameter "textMessage"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 363
    iput p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    .line 364
    iput-object p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    .line 365
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    .line 366
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 367
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "bearerDesc"
    .parameter "bufferSize"
    .parameter "transportLevel"
    .parameter "dataDestinationAddress"
    .parameter "networkAccessName"
    .parameter "bearerMode"
    .parameter "textMessage"
    .parameter "usernameTextMessage"
    .parameter "passwordTextMessage"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 349
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 350
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    .line 351
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    .line 352
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    .line 353
    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    .line 354
    iput-object p7, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    .line 355
    iput-object p8, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 356
    iput-object p9, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 357
    iput-object p10, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 358
    return-void
.end method
