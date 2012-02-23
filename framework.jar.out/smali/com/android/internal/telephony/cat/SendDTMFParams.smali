.class Lcom/android/internal/telephony/cat/SendDTMFParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field dtmfString:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "dtmfString"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 119
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    .line 120
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[BZ)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "dtmfString"
    .parameter "hasIcon"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/SendDTMFParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V

    .line 124
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/cat/SendDTMFParams;->setHasIconTag(Z)V

    .line 125
    return-void
.end method
