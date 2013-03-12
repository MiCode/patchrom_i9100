.class Lcom/android/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelData:[B

.field mChannelId:I

.field mSendImmediate:Z

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I[BZLcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "channelId"
    .parameter "channelData"
    .parameter "sendImmediate"
    .parameter "textMessage"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 404
    iput p2, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    .line 405
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    .line 406
    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    .line 407
    iput-object p5, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 408
    return-void
.end method
