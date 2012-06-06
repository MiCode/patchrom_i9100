.class public Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/net/UidDetailProvider;I)V
    .locals 1
    .parameter "provider"
    .parameter "insetSide"

    .prologue
    .line 1447
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1444
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 1448
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 1449
    iput p2, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 1450
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;)V
    .locals 14
    .parameter "stats"

    .prologue
    .line 1456
    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1458
    new-instance v6, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    const/16 v8, 0x3e8

    invoke-direct {v6, v8}, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;-><init>(I)V

    .line 1459
    .local v6, systemItem:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1461
    .local v4, knownUids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;>;"
    const/4 v0, 0x0

    .line 1462
    .local v0, entry:Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v5

    .line 1463
    .local v5, size:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 1464
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1466
    iget v7, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1467
    .local v7, uid:I
    const/16 v8, 0x2710

    if-lt v7, v8, :cond_3

    const v8, 0x1869f

    if-gt v7, v8, :cond_3

    const/4 v2, 0x1

    .line 1469
    .local v2, isApp:Z
    :goto_2
    if-nez v2, :cond_0

    const/4 v8, -0x4

    if-eq v7, v8, :cond_0

    const/4 v8, -0x5

    if-ne v7, v8, :cond_4

    .line 1470
    :cond_0
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    .line 1471
    .local v3, item:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;
    if-nez v3, :cond_1

    .line 1472
    new-instance v3, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    .end local v3           #item:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;
    invoke-direct {v3, v7}, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;-><init>(I)V

    .line 1473
    .restart local v3       #item:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;
    invoke-virtual {v4, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1474
    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    :cond_1
    iget-wide v8, v3, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    .line 1463
    .end local v3           #item:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1462
    .end local v1           #i:I
    .end local v2           #isApp:Z
    .end local v5           #size:I
    .end local v7           #uid:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1467
    .restart local v1       #i:I
    .restart local v5       #size:I
    .restart local v7       #uid:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1479
    .restart local v2       #isApp:Z
    :cond_4
    iget-wide v8, v6, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    .line 1480
    invoke-virtual {v6, v7}, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->addUid(I)V

    goto :goto_3

    .line 1484
    .end local v2           #isApp:Z
    .end local v7           #uid:I
    :cond_5
    iget-wide v8, v6, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 1485
    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    :cond_6
    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1489
    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    iget-wide v8, v8, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    :goto_4
    iput-wide v8, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1490
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 1491
    return-void

    .line 1489
    :cond_7
    const-wide/16 v8, 0x0

    goto :goto_4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    iget-object v0, v0, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->uids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 1510
    if-nez p2, :cond_0

    .line 1511
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04003a

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1514
    iget v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v5, :cond_0

    .line 1515
    iget v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v6, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v5, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1519
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1521
    .local v0, context:Landroid/content/Context;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1522
    .local v4, text1:Landroid/widget/TextView;
    const v5, 0x102000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1526
    .local v3, progress:Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;

    .line 1527
    .local v1, item:Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/OriginalSettings/net/UidDetailProvider;Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;Landroid/view/View;)V

    .line 1529
    iget-wide v5, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1531
    iget-wide v5, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, v1, Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;->total:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 1532
    .local v2, percentTotal:I
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1534
    return-object p2
.end method
