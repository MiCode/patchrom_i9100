.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GsmSmsAddress"

.field static final OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final OFFSET_ADDRESS_VALUE:I = 0x2

.field static final OFFSET_TOA:I = 0x1


# direct methods
.method public constructor <init>([BII)V
    .locals 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 44
    new-array v4, p3, [B

    iput-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 45
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 50
    .local v0, addressLength:I
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v4, v4, v7

    and-int/lit16 v3, v4, 0xff

    .line 51
    .local v3, toa:I
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 54
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_0

    .line 55
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid TOA - high bit must be set"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    mul-int/lit8 v4, v0, 0x4

    div-int/lit8 v1, v4, 0x7

    .line 62
    .local v1, countSeptets:I
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v5, 0x2

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 93
    .end local v1           #countSeptets:I
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    aget-byte v2, v4, v5

    .line 71
    .local v2, lastByte:B
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v7, :cond_2

    .line 73
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    aget-byte v6, v4, v5

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 75
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    invoke-static {v4, v7, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 79
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v5, p3, -0x1

    aput-byte v2, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsVoiceMessageClear()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsVoiceMessageIndicatorAddress()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCphsVoiceMessageSet()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
