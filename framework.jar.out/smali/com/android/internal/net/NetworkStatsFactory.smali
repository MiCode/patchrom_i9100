.class public Lcom/android/internal/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"


# instance fields
.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>(Ljava/io/File;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "procRoot"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 59
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 60
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 61
    return-void
.end method


# virtual methods
.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 1

    .prologue
    .line 169
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I)Landroid/net/NetworkStats;
    .locals 11
    .parameter "limitUid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 181
    .local v6, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v7, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x18

    invoke-direct {v7, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 182
    .local v7, stats:Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 184
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x1

    .line 185
    .local v2, idx:I
    const/4 v3, 0x1

    .line 187
    .local v3, lastIdx:I
    const/4 v4, 0x0

    .line 190
    .local v4, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v5, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v5, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 193
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 194
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 195
    add-int/lit8 v8, v3, 0x1

    if-eq v2, v8, :cond_0

    .line 196
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inconsistent idx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " after lastIdx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 216
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 217
    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_1
    :try_start_2
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8

    .line 199
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_0
    move v3, v2

    .line 201
    :try_start_3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 202
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 203
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 204
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    iput v8, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 205
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 206
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 207
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 208
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 210
    const/4 v8, -0x1

    if-eq p1, v8, :cond_1

    iget v8, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v8, :cond_2

    .line 211
    :cond_1
    invoke-virtual {v7, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 214
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 218
    :catch_1
    move-exception v0

    move-object v4, v5

    .line 219
    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v0, e:Ljava/lang/NumberFormatException;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_3
    :try_start_4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 224
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 227
    return-object v7

    .line 220
    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_2
    move-exception v0

    .line 221
    .local v0, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "problem parsing idx "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 223
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #reader:Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    goto/16 :goto_2

    .line 220
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v5       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 218
    :catch_4
    move-exception v0

    goto :goto_3

    .line 216
    :catch_5
    move-exception v0

    goto/16 :goto_1
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 74
    .local v5, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v6, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x6

    invoke-direct {v6, v8, v9, v10}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 75
    .local v6, stats:Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 77
    .local v2, entry:Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 79
    .local v3, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v4, reader:Lcom/android/internal/util/ProcFileReader;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 83
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 84
    const/4 v8, -0x1

    iput v8, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 85
    const/4 v8, 0x0

    iput v8, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 87
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    .line 90
    .local v0, active:Z
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 91
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 92
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 93
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 98
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 99
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 100
    iget-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 103
    :cond_0
    invoke-virtual {v6, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 104
    invoke-virtual {v4}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 106
    .end local v0           #active:Z
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 107
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v1, e:Ljava/lang/NullPointerException;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing stats: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 114
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v7

    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_1
    move v0, v7

    .line 87
    goto :goto_1

    .line 113
    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 114
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 116
    return-object v6

    .line 108
    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing stats: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 110
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .line 111
    .local v1, e:Ljava/io/IOException;
    :goto_5
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "problem parsing stats: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    .line 110
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_5

    .line 108
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v4       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 106
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 130
    .local v4, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    iget-object v6, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x0

    .line 165
    :goto_0
    return-object v5

    .line 132
    :cond_0
    new-instance v5, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 133
    .local v5, stats:Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 135
    .local v1, entry:Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .line 138
    .local v2, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v3, reader:Lcom/android/internal/util/ProcFileReader;
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 141
    :goto_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 143
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 144
    const/4 v6, -0x1

    iput v6, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 145
    const/4 v6, 0x0

    iput v6, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 147
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 148
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 149
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 150
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 152
    invoke-virtual {v5, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 153
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 156
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    :goto_2
    :try_start_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "problem parsing stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 163
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 162
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :cond_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 163
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .line 157
    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_1
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "problem parsing stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 159
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/IOException;
    :goto_5
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "problem parsing stats: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_3

    .line 159
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_5

    .line 157
    .end local v2           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v3       #reader:Lcom/android/internal/util/ProcFileReader;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Lcom/android/internal/util/ProcFileReader;
    .restart local v2       #reader:Lcom/android/internal/util/ProcFileReader;
    goto :goto_4

    .line 155
    :catch_5
    move-exception v0

    goto :goto_2
.end method
