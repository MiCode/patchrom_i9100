.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$ParcelUtils;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 600
    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "bucketDuration"

    .prologue
    .line 95
    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 96
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .parameter "bucketDuration"
    .parameter "initialSize"

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 100
    return-void
.end method

.method public constructor <init>(JII)V
    .locals 2
    .parameter "bucketDuration"
    .parameter "initialSize"
    .parameter "fields"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 104
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 105
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 106
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 107
    :cond_1
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_2

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 108
    :cond_2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_3

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 109
    :cond_3
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_4

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 110
    :cond_4
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_5

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 111
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .locals 1
    .parameter "existing"
    .parameter "bucketDuration"

    .prologue
    .line 116
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 117
    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 122
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 123
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 124
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 125
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 126
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 127
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 128
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 129
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 148
    .local v0, version:I
    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 151
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 152
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 153
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 154
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 155
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 156
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 157
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 158
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    .line 180
    :goto_0
    return-void

    .line 163
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 164
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 165
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 167
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 168
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 169
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 170
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 171
    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 172
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 173
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_0

    .line 165
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static addLong([JIJ)V
    .locals 2
    .parameter "array"
    .parameter "i"
    .parameter "value"

    .prologue
    .line 621
    if-eqz p0, :cond_0

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    .line 622
    :cond_0
    return-void
.end method

.method private ensureBuckets(JJ)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 378
    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v3, p1, v3

    sub-long/2addr p1, v3

    .line 379
    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iget-wide v5, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v5, p3, v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v3, v5

    add-long/2addr p3, v3

    .line 381
    move-wide v1, p1

    .local v1, now:J
    :goto_0
    cmp-long v3, v1, p3

    if-gez v3, :cond_1

    .line 383
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v4, 0x0

    iget v5, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v3, v4, v5, v1, v2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 384
    .local v0, index:I
    if-gez v0, :cond_0

    .line 386
    xor-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    .line 381
    :cond_0
    iget-wide v3, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v1, v3

    goto :goto_0

    .line 389
    .end local v0           #index:I
    :cond_1
    return-void
.end method

.method private static getLong([JIJ)J
    .locals 0
    .parameter "array"
    .parameter "i"
    .parameter "value"

    .prologue
    .line 613
    if-eqz p0, :cond_0

    aget-wide p2, p0, p1

    .end local p2
    :cond_0
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .locals 7
    .parameter "index"
    .parameter "start"

    .prologue
    const-wide/16 v5, 0x0

    .line 396
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v4, v4

    if-lt v3, v4, :cond_5

    .line 397
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 398
    .local v2, newLength:I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 399
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 400
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 401
    :cond_1
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 402
    :cond_2
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 403
    :cond_3
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 404
    :cond_4
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 408
    .end local v2           #newLength:I
    :cond_5
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v3, :cond_b

    .line 409
    add-int/lit8 v0, p1, 0x1

    .line 410
    .local v0, dstPos:I
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int v1, v3, p1

    .line 412
    .local v1, length:I
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    :cond_6
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    :cond_7
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    :cond_8
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_9
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    :cond_a
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    .end local v0           #dstPos:I
    .end local v1           #length:I
    :cond_b
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v3, p1

    .line 422
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 423
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 424
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 425
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 426
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 427
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v5, v6}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    .line 428
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 429
    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .locals 4
    .parameter "r"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 567
    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-long v2, p3, p1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private static setLong([JIJ)V
    .locals 0
    .parameter "array"
    .parameter "i"
    .parameter "value"

    .prologue
    .line 617
    if-eqz p0, :cond_0

    aput-wide p2, p0, p1

    .line 618
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 4
    .parameter "pw"
    .parameter "fullHistory"

    .prologue
    const/4 v1, 0x0

    .line 571
    const-string v2, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 572
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 574
    if-eqz p2, :cond_7

    .line 575
    .local v1, start:I
    :goto_0
    if-lez v1, :cond_0

    .line 576
    const-string v2, "(omitting "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, " buckets)"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 579
    :cond_0
    move v0, v1

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v2, :cond_8

    .line 580
    const-string v2, "bucketStart="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 581
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v2, :cond_1

    const-string v2, " activeTime="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 582
    :cond_1
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_2

    const-string v2, " rxBytes="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 583
    :cond_2
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_3

    const-string v2, " rxPackets="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 584
    :cond_3
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_4

    const-string v2, " txBytes="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 585
    :cond_4
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_5

    const-string v2, " txPackets="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 586
    :cond_5
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_6

    const-string v2, " operations="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 587
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    .end local v0           #i:I
    .end local v1           #start:I
    :cond_7
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v2, v2, -0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_0

    .line 590
    .restart local v0       #i:I
    .restart local v1       #start:I
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 591
    return-void
.end method

.method public estimateResizeBuckets(J)I
    .locals 4
    .parameter "newBucketDuration"

    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public generateRandom(JJJ)V
    .locals 19
    .parameter "start"
    .parameter "end"
    .parameter "bytes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    .line 524
    .local v17, r:Ljava/util/Random;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Random;->nextFloat()F

    move-result v18

    .line 525
    .local v18, fractionRx:F
    move-wide/from16 v0, p5

    long-to-float v2, v0

    mul-float v2, v2, v18

    float-to-long v7, v2

    .line 526
    .local v7, rxBytes:J
    move-wide/from16 v0, p5

    long-to-float v2, v0

    const/high16 v3, 0x3f80

    sub-float v3, v3, v18

    mul-float/2addr v2, v3

    float-to-long v11, v2

    .line 528
    .local v11, txBytes:J
    const-wide/16 v2, 0x400

    div-long v9, v7, v2

    .line 529
    .local v9, rxPackets:J
    const-wide/16 v2, 0x400

    div-long v13, v11, v2

    .line 530
    .local v13, txPackets:J
    const-wide/16 v2, 0x800

    div-long v15, v7, v2

    .local v15, operations:J
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    .line 532
    invoke-virtual/range {v2 .. v17}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    .line 533
    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .locals 20
    .parameter "start"
    .parameter "end"
    .parameter "rxBytes"
    .parameter "rxPackets"
    .parameter "txBytes"
    .parameter "txPackets"
    .parameter "operations"
    .parameter "r"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 543
    new-instance v5, Landroid/net/NetworkStats$Entry;

    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v5 .. v19}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 546
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    :goto_0
    const-wide/16 v11, 0x400

    cmp-long v6, p5, v11

    if-gtz v6, :cond_0

    const-wide/16 v11, 0x80

    cmp-long v6, p7, v11

    if-gtz v6, :cond_0

    const-wide/16 v11, 0x400

    cmp-long v6, p9, v11

    if-gtz v6, :cond_0

    const-wide/16 v11, 0x80

    cmp-long v6, p11, v11

    if-gtz v6, :cond_0

    const-wide/16 v11, 0x20

    cmp-long v6, p13, v11

    if-lez v6, :cond_1

    .line 547
    :cond_0
    move-object/from16 v0, p15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v7

    .line 548
    .local v7, curStart:J
    const-wide/16 v11, 0x0

    sub-long v13, p3, v7

    const-wide/16 v15, 0x2

    div-long/2addr v13, v15

    move-object/from16 v0, p15

    invoke-static {v0, v11, v12, v13, v14}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    add-long v9, v7, v11

    .line 550
    .local v9, curEnd:J
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p5

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 551
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p7

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 552
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p9

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 553
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p11

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 554
    const-wide/16 v11, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p13

    invoke-static {v0, v11, v12, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v11

    iput-wide v11, v5, Landroid/net/NetworkStats$Entry;->operations:J

    .line 556
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long p5, p5, v11

    .line 557
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long p7, p7, v11

    .line 558
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long p9, p9, v11

    .line 559
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long p11, p11, v11

    .line 560
    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long p13, p13, v11

    move-object/from16 v6, p0

    move-object v11, v5

    .line 562
    invoke-virtual/range {v6 .. v11}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto/16 :goto_0

    .line 564
    .end local v7           #curStart:J
    .end local v9           #curEnd:J
    :cond_1
    return-void
.end method

.method public getBucketDuration()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 4

    .prologue
    .line 216
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    .line 219
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method public getIndexAfter(J)I
    .locals 4
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 250
    .local v0, index:I
    if-gez v0, :cond_0

    .line 251
    xor-int/lit8 v0, v0, -0x1

    .line 255
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexBefore(J)I
    .locals 4
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    .line 236
    .local v0, index:I
    if-gez v0, :cond_0

    .line 237
    xor-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 241
    :goto_0
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    .line 239
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    .line 211
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 5
    .parameter "i"
    .parameter "recycle"

    .prologue
    const-wide/16 v3, -0x1

    .line 262
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 263
    .local v0, entry:Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v1, v1, p1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 264
    iget-wide v1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 265
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 266
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 267
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 268
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 269
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 270
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, p1, v3, v4}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 271
    return-object v0

    .line 262
    .end local v0           #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    goto :goto_0
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 23
    .parameter "start"
    .parameter "end"
    .parameter "now"
    .parameter "recycle"

    .prologue
    .line 474
    if-eqz p7, :cond_1

    move-object/from16 v8, p7

    .line 475
    .local v8, entry:Landroid/net/NetworkStatsHistory$Entry;
    :goto_0
    sub-long v17, p3, p1

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    .line 476
    move-wide/from16 v0, p1

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    const-wide/16 v17, 0x0

    :goto_1
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    const-wide/16 v17, 0x0

    :goto_2
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    const-wide/16 v17, 0x0

    :goto_3
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    const-wide/16 v17, 0x0

    :goto_4
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    const-wide/16 v17, 0x0

    :goto_5
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    const-wide/16 v17, 0x0

    :goto_6
    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    .line 484
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v16

    .line 485
    .local v16, startIndex:I
    move/from16 v9, v16

    .local v9, i:I
    :goto_7
    if-ltz v9, :cond_0

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v17, v0

    aget-wide v6, v17, v9

    .line 487
    .local v6, curStart:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v17, v0

    add-long v4, v6, v17

    .line 490
    .local v4, curEnd:J
    cmp-long v17, v4, p1

    if-gtz v17, :cond_8

    .line 514
    .end local v4           #curEnd:J
    .end local v6           #curStart:J
    :cond_0
    return-object v8

    .line 474
    .end local v8           #entry:Landroid/net/NetworkStatsHistory$Entry;
    .end local v9           #i:I
    .end local v16           #startIndex:I
    :cond_1
    new-instance v8, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    goto/16 :goto_0

    .line 477
    .restart local v8       #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_2
    const-wide/16 v17, -0x1

    goto :goto_1

    .line 478
    :cond_3
    const-wide/16 v17, -0x1

    goto :goto_2

    .line 479
    :cond_4
    const-wide/16 v17, -0x1

    goto :goto_3

    .line 480
    :cond_5
    const-wide/16 v17, -0x1

    goto :goto_4

    .line 481
    :cond_6
    const-wide/16 v17, -0x1

    goto :goto_5

    .line 482
    :cond_7
    const-wide/16 v17, -0x1

    goto :goto_6

    .line 492
    .restart local v4       #curEnd:J
    .restart local v6       #curStart:J
    .restart local v9       #i:I
    .restart local v16       #startIndex:I
    :cond_8
    cmp-long v17, v6, p3

    if-ltz v17, :cond_a

    .line 485
    :cond_9
    :goto_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 495
    :cond_a
    cmp-long v17, v6, p5

    if-gez v17, :cond_10

    cmp-long v17, v4, p5

    if-lez v17, :cond_10

    const/4 v3, 0x1

    .line 497
    .local v3, activeBucket:Z
    :goto_9
    if-eqz v3, :cond_11

    .line 498
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    .line 504
    .local v10, overlap:J
    :goto_a
    const-wide/16 v17, 0x0

    cmp-long v17, v10, v17

    if-lez v17, :cond_9

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    .line 508
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    .line 509
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    .line 510
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .line 511
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    .line 512
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    mul-long v19, v19, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v21, v0

    div-long v19, v19, v21

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    iput-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    goto/16 :goto_8

    .line 495
    .end local v3           #activeBucket:Z
    .end local v10           #overlap:J
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 500
    .restart local v3       #activeBucket:Z
    :cond_11
    cmp-long v17, v4, p3

    if-gez v17, :cond_12

    move-wide v12, v4

    .line 501
    .local v12, overlapEnd:J
    :goto_b
    cmp-long v17, v6, p1

    if-lez v17, :cond_13

    move-wide v14, v6

    .line 502
    .local v14, overlapStart:J
    :goto_c
    sub-long v10, v12, v14

    .restart local v10       #overlap:J
    goto/16 :goto_a

    .end local v10           #overlap:J
    .end local v12           #overlapEnd:J
    .end local v14           #overlapStart:J
    :cond_12
    move-wide/from16 v12, p3

    .line 500
    goto :goto_b

    .restart local v12       #overlapEnd:J
    :cond_13
    move-wide/from16 v14, p1

    .line 501
    goto :goto_c
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "recycle"

    .prologue
    .line 466
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    return-object v0
.end method

.method public recordData(JJJJ)V
    .locals 15
    .parameter "start"
    .parameter "end"
    .parameter "rxBytes"
    .parameter "txBytes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    new-instance v0, Landroid/net/NetworkStats$Entry;

    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-wide/from16 v5, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v14}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 282
    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .locals 40
    .parameter "start"
    .parameter "end"
    .parameter "entry"

    .prologue
    .line 289
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v25, v0

    .line 290
    .local v25, rxBytes:J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v27, v0

    .line 291
    .local v27, rxPackets:J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v30, v0

    .line 292
    .local v30, txBytes:J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v32, v0

    .line 293
    .local v32, txPackets:J
    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v21, v0

    .line 295
    .local v21, operations:J
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v34

    if-eqz v34, :cond_0

    .line 296
    new-instance v34, Ljava/lang/IllegalArgumentException;

    const-string v35, "tried recording negative data"

    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 298
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 338
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    .line 306
    sub-long v8, p3, p1

    .line 307
    .local v8, duration:J
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v29

    .line 308
    .local v29, startIndex:I
    move/from16 v20, v29

    .local v20, i:I
    :goto_1
    if-ltz v20, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v34, v0

    aget-wide v6, v34, v20

    .line 310
    .local v6, curStart:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v34, v0

    add-long v4, v6, v34

    .line 313
    .local v4, curEnd:J
    cmp-long v34, v4, p1

    if-gez v34, :cond_3

    .line 337
    .end local v4           #curEnd:J
    .end local v6           #curStart:J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v38, v0

    add-long v36, v36, v38

    add-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_0

    .line 315
    .restart local v4       #curEnd:J
    .restart local v6       #curStart:J
    :cond_3
    cmp-long v34, v6, p3

    if-lez v34, :cond_5

    .line 308
    :cond_4
    :goto_2
    add-int/lit8 v20, v20, -0x1

    goto :goto_1

    .line 317
    :cond_5
    move-wide/from16 v0, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v34

    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v36

    sub-long v23, v34, v36

    .line 318
    .local v23, overlap:J
    const-wide/16 v34, 0x0

    cmp-long v34, v23, v34

    if-lez v34, :cond_4

    .line 321
    mul-long v34, v25, v23

    div-long v12, v34, v8

    .line 322
    .local v12, fracRxBytes:J
    mul-long v34, v27, v23

    div-long v14, v34, v8

    .line 323
    .local v14, fracRxPackets:J
    mul-long v34, v30, v23

    div-long v16, v34, v8

    .line 324
    .local v16, fracTxBytes:J
    mul-long v34, v32, v23

    div-long v18, v34, v8

    .line 325
    .local v18, fracTxPackets:J
    mul-long v34, v21, v23

    div-long v10, v34, v8

    .line 327
    .local v10, fracOperations:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v25, v25, v12

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v1, v14, v15}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v27, v27, v14

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v30, v30, v16

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v32, v32, v18

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v21, v21, v10

    .line 334
    sub-long v8, v8, v23

    goto/16 :goto_2
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .locals 6
    .parameter "input"

    .prologue
    .line 345
    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 346
    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .locals 17
    .parameter "input"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 354
    new-instance v1, Landroid/net/NetworkStats$Entry;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 356
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 357
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v3, v2, v16

    .line 358
    .local v3, bucketStart:J
    move-object/from16 v0, p1

    iget-wide v7, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v5, v3, v7

    .line 361
    .local v5, bucketEnd:J
    cmp-long v2, v3, p2

    if-ltz v2, :cond_0

    cmp-long v2, v5, p4

    if-lez v2, :cond_1

    .line 356
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 363
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 364
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 365
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 366
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 367
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    const-wide/16 v7, 0x0

    move/from16 v0, v16

    invoke-static {v2, v0, v7, v8}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v2, p0

    move-object v7, v1

    .line 369
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_1

    .line 371
    .end local v3           #bucketStart:J
    .end local v5           #bucketEnd:J
    :cond_2
    return-void
.end method

.method public removeBucketsBefore(J)V
    .locals 8
    .parameter "cutoff"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v4, v6, :cond_0

    .line 438
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v6, v4

    .line 439
    .local v2, curStart:J
    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v0, v2, v6

    .line 443
    .local v0, curEnd:J
    cmp-long v6, v0, p1

    if-lez v6, :cond_8

    .line 446
    .end local v0           #curEnd:J
    .end local v2           #curStart:J
    :cond_0
    if-lez v4, :cond_7

    .line 447
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v5, v6

    .line 448
    .local v5, length:I
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    .line 449
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    .line 450
    :cond_1
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    .line 451
    :cond_2
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    .line 452
    :cond_3
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    .line 453
    :cond_4
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    .line 454
    :cond_5
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    .line 455
    :cond_6
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v6, v4

    iput v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    .line 459
    .end local v5           #length:I
    :cond_7
    return-void

    .line 437
    .restart local v0       #curEnd:J
    .restart local v2       #curStart:J
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 595
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 596
    .local v0, writer:Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 597
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 135
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 137
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 138
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 139
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 140
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 141
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 142
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    .line 143
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 184
    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 185
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 186
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 187
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 188
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 189
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 190
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 191
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    .line 192
    return-void
.end method
