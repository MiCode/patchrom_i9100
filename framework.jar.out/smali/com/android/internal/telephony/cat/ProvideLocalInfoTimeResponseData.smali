.class Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private digit0:B

.field private digit1:B

.field private length:B

.field private tag:B

.field private timeInfo:[B


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "min"
    .parameter "sec"
    .parameter "zone"

    .prologue
    const/4 v1, 0x7

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 189
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    .line 190
    const/16 v0, -0x5a

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->tag:B

    .line 191
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->length:B

    .line 196
    rem-int/lit8 v0, p1, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 197
    rem-int/lit8 v0, p1, 0x64

    div-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 200
    add-int/lit8 p2, p2, 0x1

    .line 201
    rem-int/lit8 v0, p2, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 202
    div-int/lit8 v0, p2, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 205
    rem-int/lit8 v0, p3, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 206
    div-int/lit8 v0, p3, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x2

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 209
    rem-int/lit8 v0, p4, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 210
    div-int/lit8 v0, p4, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x3

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    rem-int/lit8 v0, p5, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 214
    div-int/lit8 v0, p5, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x4

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 217
    rem-int/lit8 v0, p6, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    .line 218
    div-int/lit8 v0, p6, 0xa

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x5

    iget-byte v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit0:B

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x4

    iget-byte v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->digit1:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    const/4 v1, 0x6

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    .line 222
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 226
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->tag:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    iget-byte v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->length:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;->timeInfo:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method
