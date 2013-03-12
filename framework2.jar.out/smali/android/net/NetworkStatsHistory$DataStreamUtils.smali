.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 632
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFullLongArray(Ljava/io/DataInputStream;)[J
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 636
    .local v1, size:I
    new-array v2, v1, [J

    .line 637
    .local v2, values:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 638
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    return-object v2
.end method

.method public static readVarLong(Ljava/io/DataInputStream;)J
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    const/4 v3, 0x0

    .line 648
    .local v3, shift:I
    const-wide/16 v1, 0x0

    .line 649
    .local v1, result:J
    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 650
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 651
    .local v0, b:B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v3

    or-long/2addr v1, v4

    .line 652
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 653
    return-wide v1

    .line 654
    :cond_0
    add-int/lit8 v3, v3, 0x7

    .line 655
    goto :goto_0

    .line 656
    .end local v0           #b:B
    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "malformed long"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static readVarLongArray(Ljava/io/DataInputStream;)[J
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 676
    .local v1, size:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x0

    .line 681
    :cond_0
    return-object v2

    .line 677
    :cond_1
    new-array v2, v1, [J

    .line 678
    .local v2, values:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 679
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInputStream;)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static writeVarLong(Ljava/io/DataOutputStream;J)V
    .locals 4
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 665
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 666
    return-void

    .line 668
    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 669
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static writeVarLongArray(Ljava/io/DataOutputStream;[JI)V
    .locals 3
    .parameter "out"
    .parameter "values"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    if-nez p1, :cond_1

    .line 687
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 697
    :cond_0
    return-void

    .line 690
    :cond_1
    array-length v1, p1

    if-le p2, v1, :cond_2

    .line 691
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size larger than length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_2
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 694
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 695
    aget-wide v1, p1, v0

    invoke-static {p0, v1, v2}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutputStream;J)V

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
