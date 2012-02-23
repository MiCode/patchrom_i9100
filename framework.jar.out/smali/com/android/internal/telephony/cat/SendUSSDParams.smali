.class Lcom/android/internal/telephony/cat/SendUSSDParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field dcsCode:I

.field ussdLength:I

.field ussdString:[B


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V
    .locals 3
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "ussdString"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 99
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdLength:I

    .line 100
    iget v1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdLength:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdLength:I

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p3, v2

    aput-byte v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p3, v1

    iput v1, p0, Lcom/android/internal/telephony/cat/SendUSSDParams;->dcsCode:I

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[BZ)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "ussdString"
    .parameter "hasIcon"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/SendUSSDParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;[B)V

    .line 109
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/cat/SendUSSDParams;->setHasIconTag(Z)V

    .line 110
    return-void
.end method
