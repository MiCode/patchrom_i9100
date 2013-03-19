.class public Lcom/sec/android/app/camera/Mp4SlowMotionMaker;
.super Ljava/lang/Object;
.source "Mp4SlowMotionMaker.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Mp4SlowMotionMaker"


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private byteArrayToInt([BI)I
    .locals 4
    .parameter "byteArray"
    .parameter "byteCount"

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, interger:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 152
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return v1
.end method

.method private byteArrayToLong([BI)J
    .locals 7
    .parameter "byteArray"
    .parameter "byteCount"

    .prologue
    .line 158
    const-wide/16 v1, 0x0

    .line 159
    .local v1, interger:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 160
    const/16 v3, 0x8

    shl-long v3, v1, v3

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-wide v1
.end method

.method private findAtom(Ljava/lang/String;)Z
    .locals 14
    .parameter "targetAtomType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v10, "Mp4SlowMotionMaker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findAtom() "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v5, 0x4

    .line 109
    .local v5, sizeBytes:I
    const/4 v9, 0x4

    .line 110
    .local v9, typeBytes:I
    const/4 v10, 0x4

    new-array v4, v10, [B

    .line 111
    .local v4, sizeBuffer:[B
    const/4 v10, 0x4

    new-array v8, v10, [B

    .line 113
    .local v8, typeBuffer:[B
    const/4 v3, 0x0

    .line 115
    .local v3, size:I
    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    .line 116
    iget-object v10, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v10, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    .line 118
    const/4 v10, 0x4

    invoke-direct {p0, v4, v10}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->byteArrayToLong([BI)J

    move-result-wide v0

    .line 119
    .local v0, atomSize:J
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    .line 121
    .local v2, atomType:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 122
    const/4 v10, 0x1

    .line 133
    :goto_0
    return v10

    .line 124
    :cond_1
    const-wide/16 v10, 0x4

    sub-long v10, v0, v10

    const-wide/16 v12, 0x4

    sub-long v6, v10, v12

    .line 125
    .local v6, skipSize:J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_2

    .line 126
    iget-object v10, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    const v11, 0x7fffffff

    invoke-virtual {v10, v11}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 127
    const-wide/32 v10, 0x7fffffff

    sub-long/2addr v6, v10

    .line 129
    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    long-to-int v11, v6

    invoke-virtual {v10, v11}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 131
    if-gtz v3, :cond_0

    .line 133
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private getTimeBytes()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 138
    .local v0, version:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private intToByteArray(II)[B
    .locals 4
    .parameter "integer"
    .parameter "byteCount"

    .prologue
    .line 142
    new-array v0, p2, [B

    .line 143
    .local v0, byteArray:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 144
    sub-int v2, p2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-object v0
.end method

.method private modifyData(IDI)Z
    .locals 10
    .parameter "preSkipBytes"
    .parameter "speedFactor"
    .parameter "postSkipBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    .line 86
    const-string v4, "Mp4SlowMotionMaker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyData() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 90
    const/4 v1, 0x4

    .line 91
    .local v1, dataSize:I
    new-array v0, v9, [B

    .line 92
    .local v0, dataBuffer:[B
    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 94
    invoke-direct {p0, v0, v9}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->byteArrayToInt([BI)I

    move-result v3

    .line 95
    .local v3, originalData:I
    int-to-double v4, v3

    mul-double/2addr v4, p2

    double-to-int v2, v4

    .line 96
    .local v2, newData:I
    const-string v4, "Mp4SlowMotionMaker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orgData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "newData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 99
    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v9}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->intToByteArray(II)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 101
    iget-object v4, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 103
    const/4 v4, 0x1

    return v4
.end method

.method private modifyMdhdData(D)Z
    .locals 7
    .parameter "slowFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    const-string v3, "Mp4SlowMotionMaker"

    const-string v4, "modifyMdhdData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v3, "mdia"

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mdhd"

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->getTimeBytes()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x3

    .line 81
    .local v1, preSkipBytes:I
    const/4 v0, 0x0

    .line 82
    .local v0, postSkipBytes:I
    const-wide/high16 v3, 0x4000

    const-wide/high16 v5, -0x4010

    mul-double/2addr v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyData(IDI)Z

    move-result v2

    goto :goto_0
.end method

.method private modifyMvhdData(D)Z
    .locals 5
    .parameter "slowFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v2, "Mp4SlowMotionMaker"

    const-string v3, "modifyMvhdData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v2, "mvhd"

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 62
    :goto_0
    return v2

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->getTimeBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v2, 0x3

    .line 61
    .local v1, preSkipBytes:I
    const/16 v0, 0x50

    .line 62
    .local v0, postSkipBytes:I
    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/16 v4, 0x50

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyData(IDI)Z

    move-result v2

    goto :goto_0
.end method

.method private modifyTkhdData(D)Z
    .locals 5
    .parameter "slowFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v2, "Mp4SlowMotionMaker"

    const-string v3, "modifyTkhdData()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v2, "trak"

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "tkhd"

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 72
    :goto_0
    return v2

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->getTimeBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v2, 0x8

    .line 71
    .local v1, preSkipBytes:I
    const/16 v0, 0x3c

    .line 72
    .local v0, postSkipBytes:I
    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/16 v4, 0x3c

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyData(IDI)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public makeMp4Slow(Ljava/lang/String;D)Z
    .locals 3
    .parameter "fileName"
    .parameter "slowFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rwd"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    .line 38
    iget-object v1, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    .line 39
    const-string v1, "Mp4SlowMotionMaker"

    const-string v2, "Can\'t open file!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return v0

    .line 43
    :cond_0
    const-string v1, "moov"

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->findAtom(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyMvhdData(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyTkhdData(D)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->modifyMdhdData(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Mp4SlowMotionMaker;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0
.end method
