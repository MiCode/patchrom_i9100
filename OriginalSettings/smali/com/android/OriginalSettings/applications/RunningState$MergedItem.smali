.class Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
.super Lcom/android/OriginalSettings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;-><init>(Z)V

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 462
    iput v1, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput v1, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 466
    return-void
.end method


# virtual methods
.method update(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "context"
    .parameter "background"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 469
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 470
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 471
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mLabel:Ljava/lang/String;

    .line 472
    iput-boolean p2, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mBackground:Z

    .line 474
    iget-boolean v5, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mBackground:Z

    if-nez v5, :cond_2

    .line 475
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget v5, v5, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v5, :cond_4

    move v5, v6

    :goto_0
    iget-object v8, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v1, v5, v8

    .line 476
    .local v1, numProcesses:I
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 477
    .local v2, numServices:I
    iget v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v5, v1, :cond_0

    iget v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mLastNumServices:I

    if-eq v5, v2, :cond_2

    .line 478
    :cond_0
    iput v1, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    .line 479
    iput v2, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mLastNumServices:I

    .line 480
    const v3, 0x7f0b04b1

    .line 481
    .local v3, resid:I
    if-eq v1, v6, :cond_6

    .line 482
    if-eq v2, v6, :cond_5

    const v3, 0x7f0b04b4

    .line 488
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v5, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    .line 493
    .end local v1           #numProcesses:I
    .end local v2           #numServices:I
    .end local v3           #resid:I
    :cond_2
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 494
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 495
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    .line 496
    .local v4, si:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;
    iget-wide v5, v4, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mActiveSince:J

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-ltz v5, :cond_3

    iget-wide v5, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mActiveSince:J

    iget-wide v8, v4, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mActiveSince:J

    cmp-long v5, v5, v8

    if-gez v5, :cond_3

    .line 497
    iget-wide v5, v4, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v5, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mActiveSince:J

    .line 494
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v4           #si:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;
    :cond_4
    move v5, v7

    .line 475
    goto :goto_0

    .line 482
    .restart local v1       #numProcesses:I
    .restart local v2       #numServices:I
    .restart local v3       #resid:I
    :cond_5
    const v3, 0x7f0b04b3

    goto :goto_1

    .line 485
    :cond_6
    if-eq v2, v6, :cond_1

    .line 486
    const v3, 0x7f0b04b2

    goto :goto_1

    .line 501
    .end local v1           #numProcesses:I
    .end local v2           #numServices:I
    .end local v3           #resid:I
    .restart local v0       #i:I
    :cond_7
    return v7
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 505
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-wide v2, v2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mSize:J

    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mSize:J

    .line 506
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 507
    iget-wide v3, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mSize:J

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-wide v5, v2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mSize:J

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mSize:J

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_0
    iget-wide v2, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, sizeStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 513
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    .line 519
    :cond_1
    return v7
.end method
