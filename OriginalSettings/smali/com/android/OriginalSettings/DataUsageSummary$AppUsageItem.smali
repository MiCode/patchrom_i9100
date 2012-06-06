.class Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppUsageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;",
        ">;"
    }
.end annotation


# instance fields
.field public total:J

.field public uids:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 1420
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    .line 1422
    return-void
.end method


# virtual methods
.method public addUid(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    #calls: Lcom/android/OriginalSettings/DataUsageSummary;->contains([II)Z
    invoke-static {v1, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->access$2900([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1429
    :goto_0
    return-void

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    array-length v0, v1

    .line 1427
    .local v0, length:I
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    .line 1428
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    aput p1, v1, v0

    goto :goto_0
.end method

.method public compareTo(Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 1433
    iget-wide v0, p1, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v2, p0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1416
    check-cast p1, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->compareTo(Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;)I

    move-result v0

    return v0
.end method
