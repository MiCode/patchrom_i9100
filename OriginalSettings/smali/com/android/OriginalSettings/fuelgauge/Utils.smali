.class public Lcom/android/OriginalSettings/fuelgauge/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBytes(Landroid/content/Context;D)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "bytes"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 76
    const-wide v0, 0x412e848000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 77
    const-string v0, "%.2f MB"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide v2, 0x408f400000000000L

    div-double v2, p1, v2

    double-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-wide/high16 v0, 0x4090

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 79
    const-string v0, "%.2f KB"

    new-array v1, v2, [Ljava/lang/Object;

    const-wide/high16 v2, 0x4024

    div-double v2, p1, v2

    double-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "%d bytes"

    new-array v1, v2, [Ljava/lang/Object;

    double-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "millis"

    .prologue
    const/4 v11, 0x3

    const v7, 0x15180

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v3, sb:Ljava/lang/StringBuilder;
    const-wide v5, 0x408f400000000000L

    div-double v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 42
    .local v4, seconds:I
    const/4 v0, 0x0

    .local v0, days:I
    const/4 v1, 0x0

    .local v1, hours:I
    const/4 v2, 0x0

    .line 43
    .local v2, minutes:I
    if-le v4, v7, :cond_0

    .line 44
    div-int v0, v4, v7

    .line 45
    mul-int v5, v0, v7

    sub-int/2addr v4, v5

    .line 47
    :cond_0
    const/16 v5, 0xe10

    if-le v4, v5, :cond_1

    .line 48
    div-int/lit16 v1, v4, 0xe10

    .line 49
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 51
    :cond_1
    const/16 v5, 0x3c

    if-le v4, v5, :cond_2

    .line 52
    div-int/lit8 v2, v4, 0x3c

    .line 53
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 55
    :cond_2
    if-lez v0, :cond_3

    .line 56
    const v5, 0x7f0b050f

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 58
    :cond_3
    if-lez v1, :cond_4

    .line 59
    const v5, 0x7f0b0510

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_4
    if-lez v2, :cond_5

    .line 61
    const v5, 0x7f0b0511

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 63
    :cond_5
    const v5, 0x7f0b0512

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
