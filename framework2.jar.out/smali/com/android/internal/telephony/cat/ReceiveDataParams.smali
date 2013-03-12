.class Lcom/android/internal/telephony/cat/ReceiveDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelDataLength:B

.field mChannelId:I

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;IBLcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "channelId"
    .parameter "channelDataLength"
    .parameter "textMessage"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 390
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    .line 391
    iput-byte p3, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    .line 392
    iput-object p4, p0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 393
    return-void
.end method
