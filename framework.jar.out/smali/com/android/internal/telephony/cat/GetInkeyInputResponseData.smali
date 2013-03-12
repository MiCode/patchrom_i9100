.class Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field private mDuration:B

.field public mInData:Ljava/lang/String;

.field private mIsDuration:Z

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mTimeUnit:B

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/Duration;)V
    .locals 2
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsDuration:Z

    .line 104
    iget-object v0, p1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mTimeUnit:B

    .line 105
    iget v0, p1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mDuration:B

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 81
    iput-boolean p2, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 82
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 93
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 94
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 13
    .parameter "buf"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 110
    if-nez p1, :cond_1

    .line 184
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-boolean v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsDuration:Z

    if-ne v11, v9, :cond_2

    .line 114
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v7, v11, 0x80

    .line 115
    .local v7, tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    const/4 v11, 0x2

    new-array v2, v11, [B

    .line 118
    .local v2, data:[B
    iget-byte v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mTimeUnit:B

    aput-byte v11, v2, v10

    .line 119
    iget-byte v10, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mDuration:B

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 120
    array-length v9, v2

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    move-object v0, v2

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .line 122
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 126
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #data:[B
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #tag:I
    :cond_2
    sget-object v11, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v11

    or-int/lit16 v7, v11, 0x80

    .line 127
    .restart local v7       #tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 131
    iget-boolean v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v11, :cond_5

    .line 132
    new-array v2, v9, [B

    .line 133
    .restart local v2       #data:[B
    iget-boolean v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v11, :cond_4

    :goto_1
    aput-byte v9, v2, v10

    .line 166
    :goto_2
    array-length v9, v2

    const/16 v11, 0x80

    if-lt v9, v11, :cond_3

    array-length v9, v2

    const/16 v11, 0xff

    if-gt v9, v11, :cond_3

    .line 167
    const/16 v9, 0x81

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 170
    :cond_3
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 173
    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_a

    .line 174
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 180
    :goto_3
    move-object v0, v2

    .restart local v0       #arr$:[B
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v5, :cond_0

    aget-byte v1, v0, v4

    .line 181
    .restart local v1       #b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_4
    move v9, v10

    .line 133
    goto :goto_1

    .line 134
    .end local v2           #data:[B
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 136
    :try_start_0
    iget-boolean v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v11, :cond_6

    .line 137
    iget-object v9, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v11, "UTF-16BE"

    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_2

    .line 138
    .end local v2           #data:[B
    :cond_6
    iget-boolean v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v11, :cond_8

    .line 139
    iget-object v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 141
    .local v6, size:I
    iget-object v11, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v8

    .line 143
    .local v8, tempData:[B
    array-length v11, v8

    if-le v11, v9, :cond_7

    .line 144
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    new-array v2, v9, [B

    .line 145
    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v11, 0x0

    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    invoke-static {v8, v9, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 157
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_0
    move-exception v3

    .line 158
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v10, [B

    .line 161
    .restart local v2       #data:[B
    goto :goto_2

    .line 147
    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #size:I
    .restart local v8       #tempData:[B
    :cond_7
    :try_start_1
    new-array v2, v6, [B

    .line 148
    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-static {v8, v9, v2, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 159
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_1
    move-exception v3

    .line 160
    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    new-array v2, v10, [B

    .line 161
    .restart local v2       #data:[B
    goto :goto_2

    .line 155
    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_8
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_2

    .line 163
    .end local v2           #data:[B
    :cond_9
    new-array v2, v10, [B

    .restart local v2       #data:[B
    goto :goto_2

    .line 175
    :cond_a
    iget-boolean v9, p0, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_b

    .line 176
    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 178
    :cond_b
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method
