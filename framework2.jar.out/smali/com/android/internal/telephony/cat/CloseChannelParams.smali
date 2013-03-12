.class Lcom/android/internal/telephony/cat/CloseChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelId:I

.field mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/CloseChannelMode;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "channelId"
    .parameter "closeChannelMode"
    .parameter "textMessage"

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 377
    iput p2, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    .line 378
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

    .line 379
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 380
    return-void
.end method
