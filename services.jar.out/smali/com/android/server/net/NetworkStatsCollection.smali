.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter "bucketDuration"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    .line 82
    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    .line 83
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    .line 84
    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    .prologue
    .line 462
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 7
    .parameter "ident"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"

    .prologue
    .line 234
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 235
    .local v1, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 238
    .local v0, existing:Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    .line 239
    .local v2, updated:Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_1

    .line 240
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2           #updated:Landroid/net/NetworkStatsHistory;
    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v5, 0xa

    invoke-direct {v2, v3, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 245
    .restart local v2       #updated:Landroid/net/NetworkStatsHistory;
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 246
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v2           #updated:Landroid/net/NetworkStatsHistory;
    :goto_1
    return-object v2

    .line 241
    .restart local v2       #updated:Landroid/net/NetworkStatsHistory;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 242
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2           #updated:Landroid/net/NetworkStatsHistory;
    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v2, v0, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    .restart local v2       #updated:Landroid/net/NetworkStatsHistory;
    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 249
    goto :goto_1
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 2
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "totalBytes"

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 456
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 457
    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 459
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .locals 8
    .parameter "key"
    .parameter "history"

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 214
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkStatsHistory;

    .line 215
    .local v7, target:Landroid/net/NetworkStatsHistory;
    if-nez v7, :cond_1

    .line 216
    new-instance v7, Landroid/net/NetworkStatsHistory;

    .end local v7           #target:Landroid/net/NetworkStatsHistory;
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v0

    invoke-direct {v7, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 217
    .restart local v7       #target:Landroid/net/NetworkStatsHistory;
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_1
    invoke-virtual {v7, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_0
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3
    .parameter "template"
    .parameter "identSet"

    .prologue
    .line 489
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    .line 490
    .local v1, ident:Landroid/net/NetworkIdentity;
    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    const/4 v2, 0x1

    .line 494
    .end local v1           #ident:Landroid/net/NetworkIdentity;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearDirty()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 124
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 467
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 468
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 469
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 471
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 472
    .local v2, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    const-string v4, "ident="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 473
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 474
    const-string v4, " set="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 475
    const-string v4, " tag="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v4}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 477
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 478
    .local v0, history:Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 479
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_0

    .line 482
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_0
    return-void
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 4

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 103
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 106
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 10
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "fields"

    .prologue
    .line 136
    const-wide/high16 v6, -0x8000

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 10
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "fields"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 145
    new-instance v0, Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->estimateBuckets()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p5}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 147
    .local v0, combined:Landroid/net/NetworkStatsHistory;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 148
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 149
    .local v8, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    iget v1, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    if-ne v1, p3, :cond_2

    :cond_1
    const/4 v9, 0x1

    .line 150
    .local v9, setMatches:Z
    :goto_1
    iget v1, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v1, p2, :cond_0

    if-eqz v9, :cond_0

    iget v1, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-ne v1, p4, :cond_0

    iget-object v1, v8, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    move-wide/from16 v2, p6

    move-wide/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_0

    .line 149
    .end local v9           #setMatches:Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 155
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    .end local v8           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_3
    return-object v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 13
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 165
    .local v5, now:J
    new-instance v12, Landroid/net/NetworkStats;

    sub-long v1, p4, p2

    const/16 v3, 0x18

    invoke-direct {v12, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 166
    .local v12, stats:Landroid/net/NetworkStats;
    new-instance v8, Landroid/net/NetworkStats$Entry;

    invoke-direct {v8}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 167
    .local v8, entry:Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .line 170
    .local v7, historyEntry:Landroid/net/NetworkStatsHistory$Entry;
    cmp-long v1, p2, p4

    if-nez v1, :cond_1

    .line 194
    :cond_0
    return-object v12

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 173
    .local v11, mapEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 174
    .local v10, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v1, v10, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-static {p1, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .local v0, history:Landroid/net/NetworkStatsHistory;
    move-wide v1, p2

    move-wide/from16 v3, p4

    .line 176
    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 178
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v1, v8, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 179
    iget v1, v10, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->uid:I

    .line 180
    iget v1, v10, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->set:I

    .line 181
    iget v1, v10, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v1, v8, Landroid/net/NetworkStats$Entry;->tag:I

    .line 182
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 183
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 184
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 185
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 186
    iget-wide v1, v7, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v1, v8, Landroid/net/NetworkStats$Entry;->operations:J

    .line 188
    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    invoke-virtual {v12, v8}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 16
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 261
    .local v7, magic:I
    const v13, 0x414e4554

    if-eq v7, v13, :cond_0

    .line 262
    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unexpected magic: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 265
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 266
    .local v12, version:I
    packed-switch v12, :pswitch_data_0

    .line 287
    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unexpected version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 269
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 270
    .local v4, identSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 271
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 273
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 274
    .local v9, size:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v9, :cond_1

    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 276
    .local v11, uid:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 277
    .local v8, set:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 279
    .local v10, tag:I
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v6, v3, v11, v8, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 280
    .local v6, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 281
    .local v1, history:Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 274
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 270
    .end local v1           #history:Landroid/net/NetworkStatsHistory;
    .end local v6           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v8           #set:I
    .end local v10           #tag:I
    .end local v11           #uid:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v5           #j:I
    .end local v9           #size:I
    :cond_2
    return-void

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    .line 256
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    new-instance v5, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v5, p1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 329
    .local v5, inputFile:Lcom/android/internal/os/AtomicFile;
    const/4 v3, 0x0

    .line 331
    .local v3, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 335
    .local v7, magic:I
    const v10, 0x414e4554

    if-eq v7, v10, :cond_0

    .line 336
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unexpected magic: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 357
    .end local v7           #magic:I
    :catch_0
    move-exception v10

    move-object v3, v4

    .line 360
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 362
    :goto_1
    return-void

    .line 339
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v7       #magic:I
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 340
    .local v9, version:I
    packed-switch v9, :pswitch_data_0

    .line 354
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unexpected version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 360
    .end local v7           #magic:I
    .end local v9           #version:I
    :catchall_0
    move-exception v10

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    .line 343
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v7       #magic:I
    .restart local v9       #version:I
    :pswitch_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 344
    .local v8, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v8, :cond_1

    .line 345
    new-instance v2, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v2, v4}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 346
    .local v2, ident:Lcom/android/server/net/NetworkIdentitySet;
    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-direct {v0, v4}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 348
    .local v0, history:Landroid/net/NetworkStatsHistory;
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v6, v2, v10, v11, v12}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 349
    .local v6, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-direct {p0, v6, v0}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 360
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v6           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .line 361
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 360
    .end local v1           #i:I
    .end local v7           #magic:I
    .end local v8           #size:I
    .end local v9           #version:I
    :catchall_1
    move-exception v10

    goto :goto_2

    .line 357
    :catch_1
    move-exception v10

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 20
    .parameter "file"
    .parameter "onlyTags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    new-instance v8, Lcom/android/internal/os/AtomicFile;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 368
    .local v8, inputFile:Lcom/android/internal/os/AtomicFile;
    const/4 v6, 0x0

    .line 370
    .local v6, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    .end local v6           #in:Ljava/io/DataInputStream;
    .local v7, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 374
    .local v11, magic:I
    const v17, 0x414e4554

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    .line 375
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected magic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    .end local v11           #magic:I
    :catch_0
    move-exception v17

    move-object v6, v7

    .line 425
    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :goto_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 427
    :goto_1
    return-void

    .line 378
    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    .restart local v11       #magic:I
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 379
    .local v16, version:I
    packed-switch v16, :pswitch_data_0

    .line 419
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "unexpected version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 425
    .end local v11           #magic:I
    .end local v16           #version:I
    :catchall_0
    move-exception v17

    move-object v6, v7

    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    :goto_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v17

    .line 397
    .end local v6           #in:Ljava/io/DataInputStream;
    .restart local v7       #in:Ljava/io/DataInputStream;
    .restart local v11       #magic:I
    .restart local v16       #version:I
    :pswitch_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 398
    .local v5, identSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v5, :cond_5

    .line 399
    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v4, v7}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 401
    .local v4, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 402
    .local v13, size:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    if-ge v9, v13, :cond_4

    .line 403
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 404
    .local v15, uid:I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 406
    .local v12, set:I
    :goto_5
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 408
    .local v14, tag:I
    new-instance v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v15, v12, v14}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 409
    .local v10, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {v2, v7}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 411
    .local v2, history:Landroid/net/NetworkStatsHistory;
    if-nez v14, :cond_3

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 402
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 404
    .end local v2           #history:Landroid/net/NetworkStatsHistory;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v12           #set:I
    .end local v14           #tag:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_5

    .line 411
    .restart local v2       #history:Landroid/net/NetworkStatsHistory;
    .restart local v10       #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    .restart local v12       #set:I
    .restart local v14       #tag:I
    :cond_3
    const/16 v17, 0x0

    goto :goto_6

    .line 398
    .end local v2           #history:Landroid/net/NetworkStatsHistory;
    .end local v10           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v12           #set:I
    .end local v14           #tag:I
    .end local v15           #uid:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 425
    .end local v3           #i:I
    .end local v4           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v5           #identSize:I
    .end local v9           #j:I
    .end local v13           #size:I
    :cond_5
    :pswitch_1
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v6, v7

    .line 426
    .end local v7           #in:Ljava/io/DataInputStream;
    .restart local v6       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 425
    .end local v11           #magic:I
    .end local v16           #version:I
    :catchall_1
    move-exception v17

    goto :goto_2

    .line 422
    :catch_1
    move-exception v17

    goto/16 :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 4
    .parameter "another"

    .prologue
    .line 227
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    goto :goto_0

    .line 230
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 11
    .parameter "ident"
    .parameter "uid"
    .parameter "set"
    .parameter "tag"
    .parameter "start"
    .parameter "end"
    .parameter "entry"

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    .local v1, history:Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    .line 203
    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 204
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v5

    move-object/from16 v0, p9

    iget-wide v7, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p9

    iget-wide v9, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v7, v9

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    .line 205
    return-void
.end method

.method public removeUid(I)V
    .locals 8
    .parameter "uid"

    .prologue
    const/4 v7, 0x0

    .line 435
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 436
    .local v2, knownKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 439
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 440
    .local v1, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v5, p1, :cond_0

    .line 442
    iget v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v5, :cond_1

    .line 443
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 444
    .local v4, uidHistory:Landroid/net/NetworkStatsHistory;
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    invoke-direct {p0, v5, v6, v7, v7}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 446
    .local v3, removedHistory:Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 448
    .end local v3           #removedHistory:Landroid/net/NetworkStatsHistory;
    .end local v4           #uidHistory:Landroid/net/NetworkStatsHistory;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    goto :goto_0

    .line 452
    .end local v1           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 88
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    .line 89
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    .line 92
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 8
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 295
    .local v6, keysByIdent:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;>;"
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 296
    .local v4, key:Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 297
    .local v5, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    if-nez v5, :cond_0

    .line 298
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 299
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    .end local v4           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_1
    const v7, 0x414e4554

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 305
    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 307
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 308
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 309
    .local v3, ident:Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 310
    .restart local v5       #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 312
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 313
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 314
    .restart local v4       #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 315
    .local v0, history:Landroid/net/NetworkStatsHistory;
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 316
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 317
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 322
    .end local v0           #history:Landroid/net/NetworkStatsHistory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ident:Lcom/android/server/net/NetworkIdentitySet;
    .end local v4           #key:Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 323
    return-void
.end method
