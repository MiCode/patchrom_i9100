.class public Lcom/android/server/am/ContentProviderConnection;
.super Landroid/os/Binder;
.source "ContentProviderConnection.java"


# instance fields
.field public final client:Lcom/android/server/am/ProcessRecord;

.field public final createTime:J

.field public dead:Z

.field public numStableIncs:I

.field public numUnstableIncs:I

.field public final provider:Lcom/android/server/am/ContentProviderRecord;

.field public stableCount:I

.field public unstableCount:I

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 2
    .parameter "_provider"
    .parameter "_client"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 44
    iput-object p2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    .line 46
    return-void
.end method


# virtual methods
.method public toClientString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toClientString(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "sb"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v2, " s"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->stableCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->numStableIncs:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, " u"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->unstableCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v2, p0, Lcom/android/server/am/ContentProviderConnection;->numUnstableIncs:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v2, :cond_0

    .line 85
    const-string v2, " WAITING"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    if-eqz v2, :cond_1

    .line 88
    const-string v2, " DEAD"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 91
    .local v0, nowReal:J
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-wide v2, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 93
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v0, "->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ContentProviderConnection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    .line 52
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
