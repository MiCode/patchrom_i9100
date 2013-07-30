.class public Lcom/android/sec_settings/DataUsageSummary$CycleItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/sec_settings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field public end:J

.field public label:Ljava/lang/CharSequence;

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 1
    .parameter "context"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1582
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/sec_settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    .line 1584
    iput-wide p2, p0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->start:J

    .line 1585
    iput-wide p4, p0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->end:J

    .line 1586
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 1578
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-object p1, p0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    .line 1580
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/sec_settings/DataUsageSummary$CycleItem;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 1604
    iget-wide v0, p0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->start:J

    iget-wide v2, p1, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1573
    check-cast p1, Lcom/android/sec_settings/DataUsageSummary$CycleItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/sec_settings/DataUsageSummary$CycleItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 1595
    instance-of v2, p1, Lcom/android/sec_settings/DataUsageSummary$CycleItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1596
    check-cast v0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;

    .line 1597
    .local v0, another:Lcom/android/sec_settings/DataUsageSummary$CycleItem;
    iget-wide v2, p0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->start:J

    iget-wide v4, v0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->start:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->end:J

    iget-wide v4, v0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->end:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 1599
    .end local v0           #another:Lcom/android/sec_settings/DataUsageSummary$CycleItem;
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/sec_settings/DataUsageSummary$CycleItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
