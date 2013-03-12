.class final Landroid/database/sqlite/SQLiteConnection$Operation;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Operation"
.end annotation


# static fields
.field private static final sDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public mBindArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mCookie:I

.field public mEndTime:J

.field public mException:Ljava/lang/Exception;

.field public mFinished:Z

.field public mKind:Ljava/lang/String;

.field public mPid:I

.field public mSql:Ljava/lang/String;

.field public mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1566
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/database/sqlite/SQLiteConnection$Operation;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1565
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/database/sqlite/SQLiteConnection$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1565
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>()V

    return-void
.end method

.method static synthetic access$600(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1565
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->getFormattedStartTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormattedStartTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1624
    sget-object v0, Landroid/database/sqlite/SQLiteConnection$Operation;->sDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/sql/Date;

    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v0, :cond_0

    .line 1618
    const-string/jumbo v0, "running"

    .line 1620
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    const-string v0, "failed"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "succeeded"

    goto :goto_0
.end method


# virtual methods
.method public describe(Ljava/lang/StringBuilder;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1580
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-eqz v3, :cond_2

    .line 1582
    const-string v3, " took "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    :goto_0
    const-string v3, " - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1589
    const-string v3, ", sql=\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    #calls: Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4}, Landroid/database/sqlite/SQLiteConnection;->access$300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_7

    .line 1592
    const-string v3, ", bindArgs=["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1594
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 1595
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1596
    .local v0, arg:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1597
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    :cond_1
    if-nez v0, :cond_3

    .line 1600
    const-string/jumbo v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    .end local v0           #arg:Ljava/lang/Object;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1584
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_2
    const-string v3, " started "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms ago"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1601
    .restart local v0       #arg:Ljava/lang/Object;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_3
    instance-of v3, v0, [B

    if-eqz v3, :cond_4

    .line 1602
    const-string v3, "<byte[]>"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1603
    :cond_4
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1604
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Ljava/lang/String;

    .end local v0           #arg:Ljava/lang/Object;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1606
    .restart local v0       #arg:Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1609
    .end local v0           #arg:Ljava/lang/Object;
    :cond_6
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_7
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-eqz v3, :cond_8

    .line 1612
    const-string v3, ", exception=\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    :cond_8
    return-void
.end method
