.class public Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1374
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1368
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1369
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1375
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setDropDownViewResource(I)V

    .line 1376
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;

    .line 1377
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->remove(Ljava/lang/Object;)V

    .line 1391
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1394
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;)I
    .locals 4
    .parameter "target"

    .prologue
    .line 1401
    if-eqz p1, :cond_2

    .line 1402
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    .line 1403
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1404
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    .line 1405
    .local v2, item:Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1403
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1407
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1412
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .parameter "possible"

    .prologue
    .line 1380
    iput-boolean p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1381
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1382
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1385
    iput-boolean p1, p0, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1386
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1387
    return-void
.end method
